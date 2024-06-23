CREATE DATABASE GESTION_INVENTARIO;
GO

USE GESTION_INVENTARIO;
GO

-- Crear tabla Categoria
CREATE TABLE Categoria (
    Id_Categoria INT PRIMARY KEY IDENTITY(1,1),
    Nombre_Categoria NVARCHAR(100) NOT NULL,
    Descripcion NVARCHAR(255)
);
GO

-- Crear tabla Cliente
CREATE TABLE Cliente (
    Id_Cliente INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(100) NOT NULL,
	Apellido NVARCHAR(100) NOT NULL,
    Direccion NVARCHAR(255),
    Correo NVARCHAR(100),
    Telefono NVARCHAR(15)
);
GO

-- Crear tabla Proveedor
CREATE TABLE Proveedor (
    Id_Proveedor INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(100) NOT NULL,
    Direccion NVARCHAR(255),
    Correo NVARCHAR(100),
    Telefono NVARCHAR(15)
);
GO

-- Crear tabla Producto
CREATE TABLE Producto (
    Id_Producto INT PRIMARY KEY IDENTITY(1,1),
    Nombre_Producto NVARCHAR(100) NOT NULL,
    Id_Categoria INT,
    Precio DECIMAL(10, 2) NOT NULL,
    Id_Proveedor INT,
    FOREIGN KEY (Id_Categoria) REFERENCES Categoria(Id_Categoria),
    FOREIGN KEY (Id_Proveedor) REFERENCES Proveedor(Id_Proveedor)
);
GO

-- Crear tabla Empleado
CREATE TABLE Empleado (
    Id_Empleado INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(100) NOT NULL,
	Apellido NVARCHAR(100) NOT NULL,
    Cargo NVARCHAR(50),
    Salario DECIMAL(10, 2),
    Contacto NVARCHAR(100)
);
GO

-- Crear tabla Venta
CREATE TABLE Venta (
    Id_Factura INT PRIMARY KEY IDENTITY,
    Id_Cliente INT,
    Id_Producto INT,
    Id_Empleado INT,
    Fecha_y_hora DATETIME NOT NULL DEFAULT GETDATE(),
    Total_venta DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (Id_Cliente) REFERENCES Cliente(Id_Cliente),
    FOREIGN KEY (Id_Producto) REFERENCES Producto(Id_Producto),
    FOREIGN KEY (Id_Empleado) REFERENCES Empleado(Id_Empleado)
);
GO


-- Crear tabla Inventario
CREATE TABLE Inventario (
    Ubicacion NVARCHAR(100) NOT NULL,
    Id_Producto INT,
    Cantidad_Stock INT NOT NULL,
    Fecha_Entrada DATETIME NOT NULL DEFAULT GETDATE(),
    Fecha_Salida DATETIME,
    PRIMARY KEY (Ubicacion, Id_Producto),
    FOREIGN KEY (Id_Producto) REFERENCES Producto(Id_Producto)
);
GO




PRINT '¡Tablas creadas correctamente!';
