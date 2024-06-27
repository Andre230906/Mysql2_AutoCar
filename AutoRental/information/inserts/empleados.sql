use autorental;

-- Inserciones para empleados en la sucursal de Ciudad de México
INSERT INTO Empleados (idSucursal, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES
(1, '1234567890', 'Juan', 'Martínez', 'Av. Insurgentes Sur 456', 'Ciudad de México', '5558765432', 'juan.martinez@cdmxico.com'),
(1, '2345678901', 'Ana', 'García', 'Av. Reforma Norte 789', 'Ciudad de México', '5559876543', 'ana.garcia@cdmxico.com'),
(1, '3456789012', 'Pedro', 'López', 'Calle Independencia 234', 'Ciudad de México', '5552345678', 'pedro.lopez@cdmxico.com'),
(1, '4567890123', 'María', 'Hernández', 'Av. Constituyentes 567', 'Ciudad de México', '5553456789', 'maria.hernandez@cdmxico.com'),
(1, '5678901234', 'Javier', 'Rodríguez', 'Calle Hidalgo 890', 'Ciudad de México', '5554567890', 'javier.rodriguez@cdmxico.com'),
(1, '6789012345', 'Laura', 'Martínez', 'Av. Insurgentes Sur 456', 'Ciudad de México', '5556789012', 'laura.martinez@cdmxico.com'),
(1, '7890123456', 'Carlos', 'Gómez', 'Av. Reforma Norte 789', 'Ciudad de México', '5557890123', 'carlos.gomez@cdmxico.com');

-- Inserciones para empleados en la sucursal de Guadalajara
INSERT INTO Empleados (idSucursal, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES
(2, '1234567890', 'Luis', 'López', 'Av. Vallarta 123', 'Guadalajara', '3338765432', 'luis.lopez@guadalajara.com'),
(2, '2345678901', 'Elena', 'Pérez', 'Av. Chapultepec 456', 'Guadalajara', '3339876543', 'elena.perez@guadalajara.com'),
(2, '3456789012', 'Daniel', 'Sánchez', 'Calle Morelos 789', 'Guadalajara', '3332345678', 'daniel.sanchez@guadalajara.com'),
(2, '4567890123', 'Fernanda', 'Gutiérrez', 'Av. Revolución 234', 'Guadalajara', '3333456789', 'fernanda.gutierrez@guadalajara.com'),
(2, '5678901234', 'Alejandro', 'Ramírez', 'Calle Juárez 567', 'Guadalajara', '3334567890', 'alejandro.ramirez@guadalajara.com'),
(2, '6789012345', 'Mariana', 'García', 'Av. Vallarta 123', 'Guadalajara', '3336789012', 'mariana.garcia@guadalajara.com'),
(2, '7890123456', 'Roberto', 'Hernández', 'Av. Chapultepec 456', 'Guadalajara', '3337890123', 'roberto.hernandez@guadalajara.com');

-- Inserciones para empleados en la sucursal de Monterrey
INSERT INTO Empleados (idSucursal, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES
(3, '1234567890', 'Sofía', 'Martínez', 'Calle Morelos 123', 'Monterrey', '8188765432', 'sofia.martinez@monterrey.com'),
(3, '2345678901', 'Jorge', 'Gómez', 'Av. Constitución 456', 'Monterrey', '8189876543', 'jorge.gomez@monterrey.com'),
(3, '3456789012', 'Valeria', 'López', 'Calle Independencia 789', 'Monterrey', '8182345678', 'valeria.lopez@monterrey.com'),
(3, '4567890123', 'Diego', 'Hernández', 'Av. Juárez 234', 'Monterrey', '8183456789', 'diego.hernandez@monterrey.com'),
(3, '5678901234', 'Adriana', 'Ramírez', 'Av. Morelos 567', 'Monterrey', '8184567890', 'adriana.ramirez@monterrey.com'),
(3, '6789012345', 'Manuel', 'García', 'Calle Morelos 123', 'Monterrey', '8186789012', 'manuel.garcia@monterrey.com'),
(3, '7890123456', 'Lucía', 'Hernández', 'Av. Constitución 456', 'Monterrey', '8187890123', 'lucia.hernandez@monterrey.com');

-- Inserciones para empleados en la sucursal de Puebla
INSERT INTO Empleados (idSucursal, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES
(4, '1234567890', 'Roberto', 'Sánchez', 'Blvd. Norte 123', 'Puebla', '2228765432', 'roberto.sanchez@puebla.com'),
(4, '2345678901', 'Martha', 'Gómez', 'Av. Reforma 456', 'Puebla', '2229876543', 'martha.gomez@puebla.com'),
(4, '3456789012', 'Francisco', 'Pérez', 'Calle Independencia 789', 'Puebla', '2222345678', 'francisco.perez@puebla.com'),
(4, '4567890123', 'Lorena', 'Martínez', 'Av. Hidalgo 234', 'Puebla', '2223456789', 'lorena.martinez@puebla.com'),
(4, '5678901234', 'Ricardo', 'López', 'Blvd. Norte 567', 'Puebla', '2224567890', 'ricardo.lopez@puebla.com'),
(4, '6789012345', 'Diana', 'Ramírez', 'Blvd. Norte 123', 'Puebla', '2226789012', 'diana.ramirez@puebla.com'),
(4, '7890123456', 'Juan', 'García', 'Av. Reforma 456', 'Puebla', '2227890123', 'juan.garcia@puebla.com');

-- Inserciones para empleados en la sucursal de Tijuana
INSERT INTO Empleados (idSucursal, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES
(5, '1234567890', 'Verónica', 'Sánchez', 'Av. Revolución 123', 'Tijuana', '6648765432', 'veronica.sanchez@tijuana.com'),
(5, '2345678901', 'Alejandro', 'Martínez', 'Calle Primera 456', 'Tijuana', '6649876543', 'alejandro.martinez@tijuana.com'),
(5, '3456789012', 'Fernanda', 'Gómez', 'Av. Constitución 789', 'Tijuana', '6642345678', 'fernanda.gomez@tijuana.com'),
(5, '4567890123', 'Sergio', 'López', 'Blvd. Aguacaliente 234', 'Tijuana', '6643456789', 'sergio.lopez@tijuana.com'),
(5, '5678901234', 'Carolina', 'Ramírez', 'Av. Revolución 567', 'Tijuana', '6644567890', 'carolina.ramirez@tijuana.com'),
(5, '6789012345', 'Roberto', 'García', 'Av. Revolución 123', 'Tijuana', '6646789012', 'roberto.garcia@tijuana.com'),
(5, '7890123456', 'Laura', 'Hernández', 'Calle Primera 456', 'Tijuana', '6647890123', 'laura.hernandez@tijuana.com');

