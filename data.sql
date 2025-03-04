-- insertar usuarios (clientes y vendedores)
insert into usuarios (id, nombre, email, contraseña, telefono, direccion, tipo_usuario) values
(1, 'Mario Bros', 'mario@nintendo.com', 'itsame123', '555-1234', 'Reino Champiñón', 'vendedor'),
(2, 'Luigi', 'luigi@nintendo.com', 'greenbro123', '555-5678', 'Mansión Encantada', 'comprador'),
(3, 'Link', 'link@hyrule.com', 'masterSword456', '555-9999', 'Castillo de Hyrule', 'vendedor'),
(4, 'Samus Aran', 'samus@metroid.com', 'zeroSuit999', '555-4321', 'Planeta Zebes', 'comprador'),
(5, 'Darth Vader', 'vader@imperio.com', 'darkSide777', '666-7777', 'Estrella de la Muerte', 'vendedor'),
(6, 'Spider-Man', 'peter@marvel.com', 'webShooter', '555-8888', 'Nueva York', 'comprador'),
(7, 'Gandalf', 'gandalf@lotr.com', 'youShallNotPass', '555-1212', 'Tierra Media', 'vendedor'),
(8, 'Tony Stark', 'tony@starkindustries.com', 'IamIronman', '555-5454', 'Torre Stark', 'vendedor'),
(9, 'Kratos', 'kratos@olympus.com', 'boy1234', '555-7777', 'Monte Olimpo', 'vendedor'),


-- insertar categorias
insert into categorias (nombre, descripcion) values
('Videojuegos', 'Juegos para consolas y PC'),
('Accesorios Geek', 'Merchandising y coleccionables frikis'),
('Tecnología', 'Gadgets y dispositivos electrónicos'),
('Ropa y Moda', 'Camisetas, gorras y más'),
('Comida', 'Snacks temáticos y bebidas');

-- insertar productos con nombres geek
insert into productos (vendedor_id, categoria_id, nombre, descripcion, precio, stock, estado) values
(1, 1, 'Nintendo Switch', 'Consola híbrida de Nintendo', 299.99, 50, 'disponible'),
(1, 1, 'Zelda: Breath of the Wild', 'Juego de aventuras épico', 59.99, 30, 'disponible'),
(2, 1, 'Super Mario Odyssey', 'Aventura en 3D de Mario', 49.99, 25, 'disponible'),
(3, 2, 'Figura de Spider-Man', 'Figura coleccionable de Marvel', 39.99, 40, 'disponible'),
(3, 2, 'Espada Maestra', 'Réplica de la Master Sword', 89.99, 15, 'disponible'),
(5, 3, 'Casco de Darth Vader', 'Casco con respiración icónica', 199.99, 10, 'disponible'),
(6, 4, 'Camiseta del Hombre Araña', 'Talla M, diseño oficial', 19.99, 35, 'disponible'),
(7, 5, 'Galletas de Lembas', 'Pan élfico de alto rendimiento', 14.99, 20, 'disponible'),
(8, 3, 'Arc Reactor', 'Mini réplica funcional con luces', 79.99, 18, 'disponible'),
(4, 3, 'Control Xbox Elite', 'Mando pro para jugadores exigentes', 149.99, 25, 'disponible'),
(3, 2, 'Anillo Único', 'Réplica con inscripción', 99.99, 5, 'disponible'),
(5, 4, 'Sudadera de Star Wars', 'Con logo del Imperio', 39.99, 30, 'disponible'),
(2, 5, 'Poción de vida', 'Bebida energética de Zelda', 5.99, 50, 'disponible'),
(1, 5, 'Set de esferas del dragón', 'Colección completa con estrella brillante', 59.99, 20, 'disponible'),
(4, 2, 'Figura de Goku', 'Edición limitada', 49.99, 15, 'disponible'),
(6, 4, 'Gorra de Ash', 'Gorra roja y blanca', 14.99, 40, 'disponible'),
(7, 5, 'Baguette delfos', 'Baguette francesa de calidad mágica', 9.99, 25, 'disponible'),
(8, 3, 'Guantelete del Infinito', 'Réplica con gemas LED', 129.99, 10, 'disponible'),
(1, 1, 'Metroid Dread', 'Juego de Samus para Nintendo Switch', 49.99, 30, 'disponible'),
(3, 2, 'Trifuerza de Oro', 'Réplica con brillo dorado', 119.99, 10, 'disponible'),
(5, 3, 'Sable de Luz Rojo', 'Réplica con luz y sonido', 199.99, 8, 'disponible');

-- agregar más productos...
insert into productos (vendedor_id, categoria_id, nombre, descripcion, precio, stock, estado) values
(4, 3, 'Control Xbox Elite', 'Mando pro para jugadores exigentes', 149.99, 25, 'disponible'),
(3, 2, 'Anillo Único', 'Réplica con inscripción', 99.99, 5, 'disponible'),
(5, 4, 'Sudadera de Star Wars', 'Con logo del Imperio', 39.99, 30, 'disponible'),
(2, 5, 'Poción de vida', 'Bebida energética de Zelda', 5.99, 50, 'disponible'),
(1, 5, 'Set de esferas del dragón', 'Colección completa con estrella brillante', 59.99, 20, 'disponible'),
(2, 1, 'PlayStation 5', 'Consola de última generación de Sony', 499.99, 20, 'disponible'),
(3, 1, 'Xbox Series X', 'Consola de Microsoft con gráficos 4K', 499.99, 15, 'disponible'),
(4, 2, 'Figura de Batman', 'Coleccionable edición limitada de DC', 59.99, 25, 'disponible'),
(5, 2, 'Mjolnir de Thor', 'Réplica metálica del martillo de Thor', 149.99, 10, 'disponible'),
(6, 3, 'Teclado mecánico RGB', 'Teclado gaming con iluminación personalizable', 89.99, 30, 'disponible'),
(7, 3, 'Mouse Logitech G Pro', 'Mouse inalámbrico ultra ligero', 129.99, 25, 'disponible'),
(8, 4, 'Sudadera de Hufflepuff', 'Merch oficial de Harry Potter', 39.99, 20, 'disponible'),
(9, 4, 'Pijama de Pikachu', 'Pijama completa con capucha de Pikachu', 49.99, 15, 'disponible'),
(10, 5, 'Café de Tatooine', 'Café temático de Star Wars', 12.99, 40, 'disponible'),
(1, 5, 'Cereal de Súper Mario', 'Cereal oficial con figuras de Mario', 7.99, 50, 'disponible'),
(2, 1, 'Steam Deck', 'Consola portátil de Valve', 399.99, 20, 'disponible'),
(3, 1, 'Nintendo 3DS XL', 'Consola portátil de Nintendo', 199.99, 15, 'disponible'),
(4, 2, 'Figura de Iron Man', 'Figura coleccionable de Marvel', 69.99, 25, 'disponible'),
(5, 3, 'Monitor Curvo 144Hz', 'Monitor gaming de alta frecuencia', 299.99, 30, 'disponible'),
(6, 4, 'Playera de Yoda', 'Merch oficial de Star Wars', 24.99, 40, 'disponible');

-- insertar pedidos con usuarios aleatorios
insert into pedidos (comprador_id, total, estado) values
(2, 99.98, 'enviado'),
(4, 59.99, 'procesando'),
(6, 49.99, 'entregado'),
(7, 199.99, 'enviado'),
(8, 79.99, 'procesando'),
(5, 14.99, 'pendiente'),
(3, 39.99, 'cancelado'),
(2, 299.99, 'enviado'),
(4, 59.99, 'procesando'),
(6, 49.99, 'entregado'),
(7, 199.99, 'enviado'),
(8, 79.99, 'procesando'),
(5, 14.99, 'pendiente'),
(3, 39.99, 'cancelado'),
(2, 499.99, 'enviado'),
(4, 499.99, 'entregado'),
(6, 59.99, 'pendiente'),
(7, 89.99, 'procesando'),
(8, 129.99, 'entregado'),
(5, 39.99, 'enviado'),
(3, 14.99, 'cancelado'),
(2, 199.99, 'entregado'),
(4, 79.99, 'pendiente'),
(6, 49.99, 'procesando'),
(7, 12.99, 'entregado'),
(8, 149.99, 'cancelado'),
(5, 49.99, 'enviado'),
(3, 89.99, 'procesando'),
(2, 39.99, 'pendiente'),
(4, 14.99, 'entregado'),
(6, 129.99, 'cancelado'),
(7, 12.99, 'procesando'),
(8, 149.99, 'pendiente'),
(5, 49.99, 'entregado'),
(3, 89.99, 'cancelado'),
(2, 39.99, 'procesando'),
(4, 14.99, 'enviado'),
(6, 129.99, 'pendiente'),
(7, 12.99, 'cancelado'),
(8, 149.99, 'entregado'),
(5, 49.99, 'procesando'),
(3, 89.99, 'pendiente'),
(2, 39.99, 'enviado'),
(4, 14.99, 'procesando'),
(6, 129.99, 'entregado'),
(7, 12.99, 'cancelado'),
(8, 149.99, 'pendiente'),
(5, 49.99, 'procesando'),
(3, 89.99, 'enviado'),
(2, 39.99, 'cancelado'),
(4, 14.99, 'entregado'),
(6, 129.99, 'procesando'),
(7, 12.99, 'pendiente'),
(8, 149.99, 'cancelado'),
(5, 49.99, 'entregado');

-- insertar detalles de pedidos
insert into detalles_pedidos (pedido_id, producto_id, cantidad, precio_unitario, subtotal) values
(1, 1, 1, 299.99, 299.99),
(2, 3, 1, 49.99, 49.99),
(3, 5, 2, 89.99, 179.98),
(4, 6, 1, 199.99, 199.99),
(5, 8, 1, 79.99, 79.99),
(6, 9, 1, 14.99, 14.99),
(7, 7, 1, 39.99, 39.99),
(8, 2, 1, 499.99, 499.99),
(9, 10, 1, 499.99, 499.99),
(10, 11, 1, 59.99, 59.99),
(11, 12, 1, 89.99, 89.99),
(12, 13, 1, 129.99, 129.99),
(13, 14, 1, 39.99, 39.99),
(14, 15, 1, 14.99, 14.99),
(15, 16, 1, 199.99, 199.99),
(16, 17, 1, 79.99, 79.99),
(17, 18, 1, 49.99, 49.99),
(18, 19, 1, 12.99, 12.99),
(19, 20, 1, 149.99, 149.99),
(20, 21, 1, 49.99, 49.99),
(21, 22, 1, 89.99, 89.99),
(22, 23, 1, 39.99, 39.99),
(23, 24, 1, 14.99, 14.99),
(24, 25, 1, 129.99, 129.99),
(25, 26, 1, 12.99, 12.99),
(26, 27, 1, 149.99, 149.99),
(27, 28, 1, 49.99, 49.99),
(28, 29, 1, 89.99, 89.99),
(29, 30, 1, 39.99, 39.99),
(30, 31, 1, 14.99, 14.99),
(31, 32, 1, 129.99, 129.99),
(32, 33, 1, 12.99, 12.99),
(33, 34, 1, 149.99, 149.99),
(34, 35, 1, 49.99, 49.99),
(35, 36, 1, 89.99, 89.99),
(36, 37, 1, 39.99, 39.99),
(37, 38, 1, 14.99, 14.99),
(38, 39, 1, 129.99, 129.99),
(39, 40, 1, 12.99, 12.99),
(40, 41, 1, 149.99, 149.99),
(41, 42, 1, 49.99, 49.99),
(42, 43, 1, 89.99, 89.99),
(43, 44, 1, 39.99, 39.99),
(44, 45, 1, 14.99, 14.99),
(45, 46, 1, 129.99, 129.99),
(46, 47, 1, 12.99, 12.99),
(47, 48, 1, 149.99, 149.99),
(48, 49, 1, 49.99, 49.99),
(49, 50, 1, 89.99, 89.99),
(50, 1, 1, 39.99, 39.99);

-- insertar descuentos en productos seleccionados
insert into descuentos (producto_id, porcentaje, fecha_inicio, fecha_fin) values
(1, 10.00, '2025-03-01', '2025-03-10'),
(2, 20.00, '2025-03-05', '2025-03-15'),
(5, 15.00, '2025-03-07', '2025-03-20'),
(7, 5.00, '2025-03-03', '2025-03-08'),
(9, 25.00, '2025-03-10', '2025-03-25'),
(15, 30.00, '2025-03-12', '2025-03-20'),
(18, 50.00, '2025-03-05', '2025-03-30'),
(5, 10.00, '2025-03-01', '2025-03-10'),
(10, 20.00, '2025-03-07', '2025-03-15'),
(25, 15.00, '2025-03-10', '2025-03-25'),
(30, 5.00, '2025-03-05', '2025-03-18'),
(35, 25.00, '2025-03-12', '2025-03-22');

-- insertar envios
insert into envios (pedido_id, direccion_entrega, fecha_envio, fecha_entrega, estado) values
(1, 'Reino Champiñón', '2025-03-02', '2025-03-05', 'entregado'),
(2, 'Nueva York', '2025-03-01', '2025-03-06', 'en tránsito'),
(3, 'Estrella de la Muerte', '2025-03-04', null, 'pendiente');

-- insertar mensajes entre usuarios
insert into mensajes (remitente_id, destinatario_id, contenido, fecha_envio) values
(1, 6, '¿Cuándo llega mi pedido?', '2025-03-02'),
(6, 1, 'Está en camino, paciencia.', '2025-03-02'),
(5, 7, 'Hola, ¿hacen envíos a la Tierra Media?', '2025-03-03');

-- insertar calificaciones de compradores a vendedores
insert into calificaciones (comprador_id, vendedor_id, puntuacion, comentario, fecha) values
(2, 1, 5, 'El Nintendo Switch llegó en excelente estado, 10/10.', '2025-03-05'),
(6, 3, 4, 'El casco de Vader está increíble, pero tardó en llegar.', '2025-03-07'),
(7, 5, 3, 'Buena sudadera, pero la talla no me quedó bien.', '2025-03-08');

-- insertar auditoria 
insert into auditoria (usuario_id, accion, fecha) values
(1, 'Creó un nuevo producto', '2025-03-01'),
(2, 'Realizó un pedido', '2025-03-02'),
(6, 'Registró una calificación', '2025-03-05');