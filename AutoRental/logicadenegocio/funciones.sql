USE AUTORENTAL;

-- FUNCIONES 
-- FUNCION NUMERO 1

DELIMITER //
CREATE FUNCTION calcular_valor_cotizado(
 dias_alquiler INT,
 valor_semana DECIMAL(10, 2),
 valor_dia DECIMAL(10, 2)
) RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
 DECLARE semanas_completas INT;
 DECLARE dias_extra INT;
 DECLARE valor_cotizado DECIMAL(10, 2);
 -- Calcular semanas completas y días adicionales
 SET semanas_completas = FLOOR(dias_alquiler / 7);
 SET dias_extra = dias_alquiler % 7;
 -- Calcular valor cotizado
 SET valor_cotizado = semanas_completas * valor_semana + dias_extra * valor_dia;
 RETURN valor_cotizado;
END //
DELIMITER ;


-- FUNCION NUMERO 2

DELIMITER //
CREATE FUNCTION calcular_cargo_entrega_tardia(
 fecha_entrega DATE,
 fecha_esperada DATE,
 valor_cotizado DECIMAL(10, 2)
) RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
 DECLARE dias_tardios INT;
 DECLARE cargo_tardia DECIMAL(10, 2);
 -- Calcular días de retraso
 SET dias_tardios = DATEDIFF(fecha_entrega, fecha_esperada);
 -- Calcular cargo por entrega tardía si hay retraso
 IF dias_tardios > 0 THEN
 SET cargo_tardia = valor_cotizado * 0.08 * dias_tardios;
 ELSE
 SET cargo_tardia = 0.00;
 END IF;
 RETURN cargo_tardia;
END //