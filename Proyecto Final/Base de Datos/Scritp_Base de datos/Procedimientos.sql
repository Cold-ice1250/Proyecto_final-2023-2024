
-- Procedimiento para obtener detalles de un producto por su ID
CREATE PROCEDURE ObtenerDetallesProducto
    @Id_Producto INT
AS
BEGIN
    SELECT Nombre_Producto, Precio
    FROM Producto
    WHERE Id_Producto = 2
END
GO

-- Procedimiento para insertar un nuevo cliente
CREATE PROCEDURE InsertarCliente
    @Nombre NVARCHAR(100),
    @Direccion NVARCHAR(255),
    @Correo NVARCHAR(100),
    @Telefono INT
AS
BEGIN
    INSERT INTO Cliente (Nombre, Direccion, Correo, Telefono)
    VALUES ('Venecia','Padilla',  'Miramar', 'example20@venecia.com', 5555555555)
END

SELECT* FROM Cliente
GO
-- Procedimiento para actualizar la cantidad de stock de un producto en el inventario


CREATE PROCEDURE ActualizarStockProduct
    @Id_Producto INT,
    @NuevaCantidad INT
AS
BEGIN
    UPDATE Inventario
    SET Cantidad_Stock = 30
    WHERE Id_Producto = 2
END


SELECT* FROM Inventario
GO