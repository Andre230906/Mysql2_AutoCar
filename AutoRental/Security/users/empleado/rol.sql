USE AutoRental;


CREATE ROLE empleado;
GRANT SELECT, INSERT, UPDATE, DELETE ON AutoRental.* TO empleado;
