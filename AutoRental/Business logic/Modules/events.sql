USE AUTORENTAL;

-- Aplicar descuentos automáticos según el tipo de vehículo y la temporada del año.
CREATE EVENT aplicar_descuentos_evento
ON SCHEDULE EVERY 1 MONTH
STARTS CURRENT_TIMESTAMP
DO
BEGIN
    UPDATE Alquileres AS a
    JOIN Vehiculos AS v ON a.idVehiculo = v.idVehiculo
    SET a.porcentaje_descuento = CASE
        WHEN v.tipo_vehiculo IN ('sedán', 'compacto') THEN 10.00
        WHEN v.tipo_vehiculo = 'camioneta lujo' THEN 7.00
        ELSE 0.00
    END;
END;
