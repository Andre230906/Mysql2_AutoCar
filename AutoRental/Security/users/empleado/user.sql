USE AutoRental;


CREATE USER 'empleado'@'172.16.101.107' IDENTIFIED BY 'password_empleado';
GRANT SELECT, INSERT, UPDATE, DELETE ON AutoRental.* TO 'empleado'@'172.16.101.107';