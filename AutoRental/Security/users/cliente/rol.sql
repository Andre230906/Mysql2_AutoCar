USE AutoRental;


CREATE ROLE cliente;
GRANT SELECT, INSERT, UPDATE, DELETE ON AutoRental.Clientes TO cliente;
GRANT SELECT ON AutoRental.Vehiculos TO cliente;
GRANT SELECT ON AutoRental.Alquileres TO cliente;
