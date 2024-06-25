USE AUTORENTAL;
-- CLIENTES 
-- Creación de usuario 'cliente' con permisos limitados para el aplicativo web de clientes
CREATE USER 'cliente'@'172.16.101.107' IDENTIFIED BY 'password_cliente';
GRANT SELECT ON AutoRental.* TO 'cliente'@'172.16.101.107';
-- Creación de usuario 'administrador' con permisos completos para el software de gestión
CREATE USER 'administrador'@'172.16.101.107' IDENTIFIED BY 'password_administrador';
GRANT ALL PRIVILEGES ON AutoRental.* TO 'administrador'@'172.16.101.107';
-- Creación de usuario 'empleado' con permisos para el software de gestión y algunas funciones de clientes
CREATE USER 'empleado'@'172.16.101.107' IDENTIFIED BY 'password_empleado';
GRANT SELECT, INSERT, UPDATE, DELETE ON AutoRental.* TO 'empleado'@'172.16.101.107';