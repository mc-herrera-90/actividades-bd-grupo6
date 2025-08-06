-- DROP DATABASE IF EXISTS rverde_ecommerce;
-- CREATE DATABASE rverde_ecommerce;
-- USE rverde_ecommerce;
DROP TABLE IF EXISTS orden_detalles;
DROP TABLE IF EXISTS ordenes;
DROP TABLE IF EXISTS direcciones;
DROP TABLE IF EXISTS carrito;
DROP TABLE IF EXISTS productos;
DROP TABLE IF EXISTS categorias;
DROP TABLE IF EXISTS usuarios;

-- USUARIOS
CREATE TABLE usuarios (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL,
	correo VARCHAR(100) UNIQUE NOT NULL,
	contrasena VARCHAR(255) NOT NULL,
	direccion VARCHAR(255),
	telefono VARCHAR(15),
	fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- CATEGORIAS
CREATE TABLE categorias (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(150) NOT NULL,
	descripcion VARCHAR(255)
);

-- PRODUCTOS
CREATE TABLE productos (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL,
	descripcion VARCHAR(255),
	precio INT NOT NULL,
	stock INT NOT NULL,
	image_url VARCHAR(200),
	categoria_id BIGINT,
	FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);

-- CARRITO
CREATE TABLE carrito (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	usuario_id BIGINT NOT NULL,
	producto_id BIGINT NOT NULL,
	cantidad INT NOT NULL,
	fecha_agregado TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
	FOREIGN KEY (producto_id) REFERENCES productos(id)
);

-- DIRECCIONES (para envíos personalizados)
CREATE TABLE direcciones (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	usuario_id BIGINT NOT NULL,
	direccion VARCHAR(255) NOT NULL,
	ciudad VARCHAR(100),
	region VARCHAR(100),
	codigo_postal VARCHAR(20),
	pais VARCHAR(100),
	FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

-- ORDENES (pedidos)
CREATE TABLE ordenes (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	usuario_id BIGINT NOT NULL,
	fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	total DECIMAL(10,2) NOT NULL,
	estado VARCHAR(50) DEFAULT 'pendiente', -- pagado, enviado, entregado, cancelado
	direccion_envio VARCHAR(255),
	metodo_pago VARCHAR(50),
	FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

-- DETALLES DE ORDEN
CREATE TABLE orden_detalles (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	orden_id BIGINT NOT NULL,
	producto_id BIGINT NOT NULL,
	cantidad INT NOT NULL,
	precio_unitario INT NOT NULL,
	FOREIGN KEY (orden_id) REFERENCES ordenes(id),
	FOREIGN KEY (producto_id) REFERENCES productos(id)
);
