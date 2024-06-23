 
 
 -- Comandos para añadir registros a las tablas.
  INSERT INTO Empleado (Nombre, Apellido, Cargo, Salario, Contacto)
    VALUES ('Gamalier','Reyes', 'Ayudante',  50000.00, 'empledo6@Gama.com');
    


 
 -- Instrucciones para modificar registros existentes.
 UPDATE Empleado
    SET salario = 55000.00
    WHERE Id_Empleado = 2;


UPDATE Empleado
SET Nombre = 'Vector'
WHERE Id_Empleado = 6;

	


-- Comandos para borrar registros de las tablas.
    DELETE FROM Empleado
    WHERE Id_Empleado = 8;




   -- Instruccion para ver el salario mayor, menor o igual a el numero que queramos

  
    SELECT Id_Empleado , Nombre, Salario
    FROM Empleado
    WHERE Salario > 2000.00;



   -- Instrucciones para crear índices que optimicen el rendimiento de las consultas.
    
    CREATE INDEX idx_salario
    ON Empleado(Salario);




	-- Comandos para ver el promedio del sueldo de los empleados
	USE GESTION_INVENTARIO;
GO
	SELECT AVG(Salario) AS Salario_Promedio
FROM Empleado



	SELECT * FROM Empleado;