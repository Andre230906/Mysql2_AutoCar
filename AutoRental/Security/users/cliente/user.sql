USE AutoRental;


CREATE USER 'cliente'@'172.16.101.107' IDENTIFIED BY 'password_cliente';
GRANT SELECT ON AutoRental.* TO 'cliente'@'172.16.101.107';