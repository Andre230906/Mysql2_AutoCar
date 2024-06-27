USE AUTORENTAL;
-- QUERIES
SELECT calcular_valor_cotizado(9, 350.000, 50.000) AS valor_cotizado;
SELECT calcular_cargo_entrega_tardia('2024-06-15', '2024-06-10', 450.000) AS cargo_entrega_tardia;

SELECT idVehiculo, tipo_vehiculo, placa, referencia, modelo, puertas, capacidad, sunroof, motor, color
FROM Vehiculos
WHERE tipo_vehiculo = 'tipo_deseado'
    AND valor_alquiler_dia BETWEEN precio_minimo AND precio_maximo
    AND idVehiculo NOT IN (
        SELECT idVehiculo
        FROM Alquileres
        WHERE (fecha_salida <= 'fecha_final' AND fecha_llegada >= 'fecha_inicial')
           OR (fecha_esperada_llegada >= 'fecha_inicial' AND fecha_esperada_llegada <= 'fecha_final')
    );

SELECT a.idAlquiler, v.tipo_vehiculo, v.placa, c.nombres AS nombre_cliente, e.nombres AS nombre_empleado,
       s_salida.ciudad AS ciudad_salida, s_llegada.ciudad AS ciudad_llegada,
       a.fecha_salida, a.fecha_llegada, a.fecha_esperada_llegada,
       a.valor_alquiler_semana, a.valor_alquiler_dia, a.porcentaje_descuento,
       a.valor_cotizado, a.valor_pagado
FROM Alquileres a
JOIN Vehiculos v ON a.idVehiculo = v.idVehiculo
JOIN Clientes c ON a.idCliente = c.idCliente
JOIN Empleados e ON a.idEmpleado = e.idEmpleado
JOIN Sucursales s_salida ON a.idSucursal_salida = s_salida.idSucursal
JOIN Sucursales s_llegada ON a.idSucursal_llegada = s_llegada.idSucursal
ORDER BY a.fecha_salida DESC;
