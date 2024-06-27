USE AutoRental;


CREATE USER 'administrador'@'172.16.101.107' IDENTIFIED BY 'password_administrador';
GRANT ALL PRIVILEGES ON AutoRental.* TO 'administrador'@'172.16.101.107';