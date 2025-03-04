-- crear tabla usuarios
create table usuarios (
	id serial primary key, 
	nombre varchar (100) not null,
	email varchar(159) not null unique,
	contraseña varchar(255) not null,
	telefono varchar(15),
	direccion text,
	tipo_usuario varchar(10) not null,
	fecha_registro timestamp default current_timestamp	
);

-- crear tabla categorias
create table categorias(
	id serial primary key,
	nombre varchar(100) not null,
	descripcion text
);

-- crear tabla productos
create table productos(
	id serial primary key,
	vendedor_id int references usuarios (id) on delete cascade not null,
	categoria_id int references categorias (id) on delete cascade not null,
	nombre varchar(150) not null,
	descripcion text,
	precio numeric(10,2) not null,
	stock int not null,
	estado varchar(20) not null,
	fecha_creacion timestamp default current_timestamp
);

-- crear tabla pedidos
create table pedidos(
	id serial primary key, 
	comprador_id int references usuarios (id) on delete cascade not null,
	total numeric(10,2) not null,
	estado varchar(20) not null,
	fecha_pedido timestamp default current_timestamp
);

-- crear tabla pagos
create table pagos(
	id serial primary key,
	pedido_id int references pedidos (id) on delete cascade not null,
	metodo_pago varchar(20) not null,
	estado varchar(20) not null,
	fecha_pago timestamp
);

-- crear tabla detalles_pedidos
create table detalles_pedidos(
	id serial primary key, 
	pedido_id int references pedidos (id) on delete cascade not null,
	producto_id int references productos (id) on delete cascade not null,
	cantidad int not null,
	precio_unitario numeric(10,2) not null,
	subtotal numeric(10,2) not null
);

-- crear tabla direcciones
create table direcciones (
	id serial primary key,
	usuario_id int references usuarios (id) on delete cascade not null,
	direccion text not null,
	ciudad varchar(100) not null,
	codigo_postal varchar(20) not null,
	pais varchar(100) not null
);

-- crear tabla envios
create table envios(
	id serial primary key,
	pedido_id int references pedidos (id) on delete cascade not null,
	direccion_entrega text not null,
	fecha_envio timestamp,
	fecha_entrega timestamp,
	estado varchar(20) not null
);

-- crear tabla calificaciones
create table calificaciones(
	id serial primary key,
	comprador_id int references usuarios (id) on delete cascade not null,
	vendedor_id int references usuarios (id) on delete cascade not null,
	puntuacion int not null,
	comentario text,
	fecha timestamp
);

-- crear tabla mensajes
create table mensajes(
	id serial primary key,
	remitente_id int references usuarios (id) on delete cascade not null,
	destinatario_id int references usuarios (id) on delete cascade not null,
	contenido text not null,
	fecha_envio timestamp
);

-- crear tabla lista_deseos
create table lista_deseos(
	id serial primary key,
	usuario_id int references usuarios (id) on delete cascade not null,
	producto_id int references productos (id) on delete cascade not null,
	fecha_entregado timestamp
);

-- crear tabla imagenes_productos
create table imagenes_productos(
	id serial primary key,
	producto_id int references productos (id) on delete cascade not null,
	url text not null
);

-- crear tabla descuentos
create table descuentos (
	id serial primary key,
	producto_id int references productos (id) on delete cascade not null,
	porcentaje numeric(5,2) not null,
	fecha_inicio timestamp not null,
	fecha_fin timestamp not null
);

-- crear tabla auditoria
create table auditoria(
	id serial primary key,
	usuario_id int references usuarios (id) on delete set null,
	accion varchar(255) not null,
	fecha timestamp
);
