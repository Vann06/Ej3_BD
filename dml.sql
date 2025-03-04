--                        3.1 Ejercicios Simples 

-- Listar todos los productos disponibles en la tienda
select * from productos;

-- Obtener la cantidad total de pedidos realizados en el sistema.
select count(*) as total_pedidos from pedidos;

-- Mostrar los detalles de todos los pedidos pagados.
select * from pedidos where estado = 'entregado';

-- Listar los productos en descuento actualmente.
select p.nombre as producto,
d.porcentaje, d.fecha_inicio, d.fecha_fin
from productos p
join descuentos d on p.id = d.producto_id
where now() between d.fecha_inicio and d.fecha_fin;

-- Obtener el nombre y correo de todos los clientes registrados.
select u.nombre as nombre, u.email as correo 
from usuarios u
where tipo_usuario = 'cliente';

-- Listar los 5 productos más recientes agregados a la tienda.
select * from productos 
order by fecha_creacion desc limit 5;


--                      3.2 Ejercicios Intermedios

-- Obtener el total de dinero generado por ventas en la tienda.
select sum(total) as total_dinero from pedidos;

-- Listar los 10 clientes que más han gastado en compras.
select u.nombre, sum(p.total) as total_gastado 
from pedidos p
join usuarios u on p.comprador_id = u.id
group by u.id, u.nombre
order by total_gastado desc
limit 10;
-- Mostrar los productos más vendidos en el último mes.
select p.nombre as producto, 
sum(dp.cantidad) as total_vendidos
from detalles_pedidos dp
join productos p on dp.producto_id = p.id
join pedidos pe on dp.pedido_id = pe.id
where pe.fecha_pedido >= now() - interval '1 month'
group by p.id, p.nombre
order by total_vendidos desc;

-- Obtener el total de pedidos realizados en cada mes del último año.

-- Listar los vendedores con más productos vendidos.
select u.nombre as vendedor,
sum(dp.cantidad) as total_productos_vendidos
from detalles_pedidos dp 
join productos p on dp.producto_id = p.id
join usuarios u on p.vendedor_id = u.id
group by u.id, u.nombre
order by total_productos_vendidos desc;

-- Mostrar los 5 productos con mayor cantidad de stock disponible.
select nombre,descripcion, stock 
from productos
order by stock desc
limit 5;

--                         3.3 Ejercicios Complejos 
-- Calcular el ticket promedio de compra en la tienda.

-- Listar los clientes que han realizado más de 5 pedidos y el monto total que han gastado.
select u.nombre as clientes,
count(p.id) as total_pedidos,
sum (p.total) as monto_gastado
from pedidos p
join usuarios u on p.comprador_id = u.id
group by u.id, u.nombre
having count (p.id) > 5
order by monto_gastado desc;

-- Obtener el impacto de los descuentos en las ventas, 
--mostrando la cantidad de ventas realizadas con descuento
--en comparación con las ventas sin descuento.

-- Determinar el mes con mayores ventas en el último año.

-- Obtener el top 3 de categorías con más productos vendidos.
 select c.nombre as categoria, sum(dp.cantidad) as total_vendidos
 from detalles_pedidos dp 
 join productos p on dp.producto_id = p.id
 join categorias c on p.categoria_id = c.id 
 group by c.id 
 order by total_vendidos desc
 limit 3;
-- Mostrar la cantidad de ventas realizadas por cada método de pago en los últimos 6 meses.
select pa.metodo_pago as metodos_de_pago,
count(p.id) as total_pedidos 
from pedidos p
join pagos pa on pa.pedido_id = p.id 
where p.fecha_pedido >= now()-interval '6 months'
group by pa.metodo_pago;