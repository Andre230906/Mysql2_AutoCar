CREATE DATABASE AUTORENTAL;
USE AUTORENTAL;

-- Tabla Sucursales


CREATE TABLE Sucursales (
idSucursal INT PRIMARY KEY AUTO_INCREMENT,
ciudad VARCHAR(100) NOT NULL,
direccion VARCHAR(255) NOT NULL,
telefono_fijo VARCHAR(20),
celular VARCHAR(20),
correo_electronico VARCHAR(100)
);
-- Tabla Empleados
CREATE TABLE Empleados (
idEmpleado INT PRIMARY KEY AUTO_INCREMENT,
idSucursal INT NOT NULL,
cedula VARCHAR(20) NOT NULL,
nombres VARCHAR(100) NOT NULL,
apellidos VARCHAR(100) NOT NULL,
direccion VARCHAR(255),
ciudad_residencia VARCHAR(100),
celular VARCHAR(20),
correo_electronico VARCHAR(100),
FOREIGN KEY (idSucursal) REFERENCES Sucursales(idSucursal)
);
-- Tabla Clientes
CREATE TABLE Clientes (
idCliente INT PRIMARY KEY AUTO_INCREMENT,
cedula VARCHAR(20) NOT NULL,
nombres VARCHAR(100) NOT NULL,
apellidos VARCHAR(100) NOT NULL,
direccion VARCHAR(255),
ciudad_residencia VARCHAR(100),
celular VARCHAR(20), 
correo_electronico VARCHAR(100)
);
-- Tabla Vehiculos
CREATE TABLE Vehiculos (
idVehiculo INT PRIMARY KEY AUTO_INCREMENT,
tipo_vehiculo VARCHAR(50) NOT NULL,
placa VARCHAR(20) NOT NULL,
referencia VARCHAR(100),
modelo INT,
puertas INT,
capacidad INT,
sunroof ENUM('si', 'no'),
motor VARCHAR(50),
color VARCHAR(50)
);
-- Tabla Alquileres
CREATE TABLE Alquileres ( idAlquiler INT PRIMARY KEY AUTO_INCREMENT,
idVehiculo INT NOT NULL, idCliente INT NOT NULL,
idEmpleado INT NOT NULL, idSucursal_salida INT NOT NULL,
idSucursal_llegada INT NOT NULL, fecha_salida DATE NOT NULL,
fecha_llegada DATE NOT NULL,
fecha_esperada_llegada DATE NOT NULL,
valor_alquiler_semana DECIMAL(10, 2) NOT NULL,
valor_alquiler_dia DECIMAL(10, 2) NOT NULL,
porcentaje_descuento DECIMAL(5, 2),
valor_cotizado DECIMAL(10, 2),
valor_pagado DECIMAL(10, 2),
FOREIGN KEY (idVehiculo) REFERENCES Vehiculos(idVehiculo),
FOREIGN KEY (idCliente) REFERENCES Clientes(idCliente),
FOREIGN KEY (idEmpleado) REFERENCES Empleados(idEmpleado),
FOREIGN KEY (idSucursal_salida) REFERENCES Sucursales(idSucursal),
FOREIGN KEY (idSucursal_llegada) REFERENCES Sucursales(idSucursal)
);

