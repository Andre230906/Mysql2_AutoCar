USE AUTORENTAL;

-- Facilitar el registro de nuevos clientes en la base de datos.
DELIMITER //

CREATE PROCEDURE RegistrarCliente (
    IN p_cedula VARCHAR(20),
    IN p_nombres VARCHAR(100),
    IN p_apellidos VARCHAR(100),
    IN p_direccion VARCHAR(255),
    IN p_ciudad_residencia VARCHAR(100),
    IN p_celular VARCHAR(20),
    IN p_correo_electronico VARCHAR(100)
)
BEGIN
    INSERT INTO Clientes (cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico)
    VALUES (p_cedula, p_nombres, p_apellidos, p_direccion, p_ciudad_residencia, p_celular, p_correo_electronico);
END //

DELIMITER ;



-- Manejar el proceso de alquiler de vehículos, registrando la transacción en la tabla de Alquileres.


DELIMITER //

CREATE PROCEDURE AlquilarVehiculo (
    IN p_idVehiculo INT,
    IN p_idCliente INT,
    IN p_idEmpleado INT,
    IN p_idSucursal_salida INT,
    IN p_idSucursal_llegada INT,
    IN p_fecha_salida DATE,
    IN p_fecha_llegada DATE,
    IN p_valor_alquiler_semana DECIMAL(10, 2),
    IN p_valor_alquiler_dia DECIMAL(10, 2),
    IN p_fecha_esperada_llegada DATE
)
BEGIN
    INSERT INTO Alquileres (idVehiculo, idCliente, idEmpleado, idSucursal_salida, idSucursal_llegada,
                            fecha_salida, fecha_llegada, valor_alquiler_semana, valor_alquiler_dia, fecha_esperada_llegada)
    VALUES (p_idVehiculo, p_idCliente, p_idEmpleado, p_idSucursal_salida, p_idSucursal_llegada,
            p_fecha_salida, p_fecha_llegada, p_valor_alquiler_semana, p_valor_alquiler_dia, p_fecha_esperada_llegada);
END //

DELIMITER ;
