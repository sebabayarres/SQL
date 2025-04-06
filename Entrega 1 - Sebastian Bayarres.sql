CREATE DATABASE RIFAS;

USE RIFAS;

CREATE TABLE compradores (
id_comprador INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR (50) NOT NULL,
apellido VARCHAR (50) NOT NULL,
email VARCHAR (50) NOT NULL UNIQUE,
documento VARCHAR (50) NOT NULL UNIQUE,
domicilio VARCHAR (50) NOT NULL, 
telefono VARCHAR (50) NOT NULL UNIQUE);


CREATE TABLE rifas (
id_rifa INT PRIMARY KEY AUTO_INCREMENT,
numero INT NOT NULL UNIQUE);

CREATE TABLE premios(
id_premio INT PRIMARY KEY AUTO_INCREMENT,
descripcion_premio VARCHAR (50) NOT NULL
);

CREATE TABLE sorteos (
id_sorteo INT PRIMARY KEY AUTO_INCREMENT,
id_premio INT,
resultado INT,
FOREIGN KEY (id_premio) REFERENCES premios(id_premio),
FOREIGN KEY (resultado) REFERENCES rifas(id_rifa)
);

CREATE TABLE ventas (
id_comprador INT PRIMARY KEY,
id_rifa INT,
tipo_de_venta VARCHAR (50) NOT NULL,
forma_de_pago VARCHAR (50) NOT NULL,
FOREIGN KEY (id_comprador) REFERENCES compradores(id_comprador),
FOREIGN KEY (id_rifa) REFERENCES rifas(id_rifa));



