USE AUTORENTAL;

-- Calcular el valor cotizado del alquiler en función de la cantidad de días y semanas.


DELIMITER //

CREATE TRIGGER calcular_valor_cotizado
BEFORE INSERT ON Alquileres
FOR EACH ROW
BEGIN
    DECLARE dias INT;
    DECLARE semanas INT;
    DECLARE valor DECIMAL(10, 2);

    SET dias = DATEDIFF(NEW.fecha_llegada, NEW.fecha_salida);
    SET semanas = FLOOR(dias / 7);
    SET dias = dias - semanas * 7;

    SET valor = semanas * NEW.valor_alquiler_semana + dias * NEW.valor_alquiler_dia;

    SET NEW.valor_cotizado = valor;
END //

DELIMITER ;

-- Aplicar automáticamente un descuento según el tipo de vehículo alquilado y la fecha del alquiler.
DELIMITER //

CREATE TRIGGER aplicar_descuento
BEFORE INSERT ON Alquileres
FOR EACH ROW
BEGIN
    DECLARE descuento DECIMAL(5, 2);

    -- Lógica para determinar el descuento basado en el tipo de vehículo y la fecha
    IF NEW.tipo_vehiculo = 'sedán' THEN
        SET descuento = 5.00; -- Ejemplo de descuento del 5%
    ELSE
        SET descuento = 0.00; -- Sin descuento por defecto
    END IF;

    SET NEW.porcentaje_descuento = descuento;
    SET NEW.valor_cotizado = NEW.valor_cotizado * (1 - descuento / 100);
END //

DELIMITER ;


--  DELIMITER //

CREATE TRIGGER calcular_valor_adicional
BEFORE UPDATE ON Alquileres
FOR EACH ROW
BEGIN
    DECLARE dias_adicionales INT;
    DECLARE valor_adicional DECIMAL(10, 2);

    IF NEW.fecha_llegada > OLD.fecha_esperada_llegada THEN
        SET dias_adicionales = DATEDIFF(NEW.fecha_llegada, OLD.fecha_esperada_llegada);
        SET valor_adicional = NEW.valor_alquiler_dia * dias_adicionales * 1.08; -- 8% de incremento
        SET NEW.valor_pagado = NEW.valor_pagado + valor_adicional;
    END IF;
END //

DELIMITER ;
