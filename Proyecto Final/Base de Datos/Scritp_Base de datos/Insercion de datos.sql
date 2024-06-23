USE GESTION_INVENTARIO;
GO


INSERT INTO Categoria (Nombre_Categoria, Descripcion) 
VALUES 
('Anillos', 'Anillo de plata 14k color blanco longitud 9'),
('Collares', 'Collar de oro de 14k color oro tamaño grande '),
('Pulseras', 'Pulsera de diamantes de 14k color verde tamaño mediano '),
('Aretes', 'Aretes de rubi de color rojo tamaño pequeño '),
('Relojes', 'Reloj de oro 24k color oro rosa tamaño mediano');


INSERT INTO Proveedor (Nombre, Direccion, Correo, Telefono) 
VALUES 
('Proveedor A', 'Calle Proveedor A', 'proveedorA@example.com', '111111111'),
('Proveedor B', 'Avenida Proveedor B', 'proveedorB@example.com', '222222222'),
('Proveedor C', 'Carrera Proveedor C', 'proveedorC@example.com', '333333333'),
('Proveedor D', 'Plaza Proveedor D', 'proveedorD@example.com', '444444444'),
('Proveedor E', 'Paseo Proveedor E', 'proveedorE@example.com', '555555555');


INSERT INTO Cliente (Nombre,Apellido, Direccion, Correo, Telefono) 
VALUES 
('Juan ','Perez',  'Calle 123', 'juan@example.com', '123456789'),
('Maria ','Lopez', 'Avenida 456', 'maria@example.com', '987654321'),
('Carlos',' Ramirez', 'Carrera 789', 'carlos@example.com', '456123789'),
('Ana ','Martinez', 'Plaza Principal', 'ana@example.com', '789456123'),
('Pedro ','Rodriguez', 'Paseo Bolivar', 'pedro@example.com', '159357456');


INSERT INTO Producto (Nombre_Producto, Id_Categoria, Precio, Id_Proveedor) 
VALUES 
('Anillo Oro', 1, 500.00, 1),
('Collar Diamante', 2, 1000.00, 2),
('Pulsera Plata', 3, 200.00, 3),
('Aretes Perla', 4, 150.00, 4),
('Reloj Digital', 5, 300.00, 5);


INSERT INTO Venta (Id_Cliente, Id_Producto, Total_venta) 
VALUES 
(1, 1, 500.00),
(2, 2, 1000.00),
(3, 3, 200.00),
(4, 4, 150.00),
(5, 5, 300.00);


INSERT INTO Inventario (Ubicacion, Id_Producto, Cantidad_Stock) 
VALUES 
('Bodega 1', 1, 10),
('Bodega 2', 2, 15),
('Bodega 3', 3, 20),
('Bodega 4', 4, 25),
('Bodega 5', 5, 30);


INSERT INTO Empleado (Nombre, Apellido, Cargo, Salario, Contacto) 
VALUES 
('Eliandy','Soto', 'Vendedor', 2000.00, 'empleado1@example.com'),
('Badelyn','Rodriguez', 'Gerente', 2500.00, 'empleado2@example.com')
;


PRINT '¡Registros insertados correctamente!';


