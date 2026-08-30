CREATE DATABASE TiendaRopa;
USE TiendaRopa;

CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    correo VARCHAR(100) UNIQUE,
    telefono VARCHAR(15)
);

CREATE TABLE Categorias (
    id_categoria INT PRIMARY KEY,
    nombre_categoria VARCHAR(50) NOT NULL
);

CREATE TABLE Productos (
    id_producto INT PRIMARY KEY,
    nombre_producto VARCHAR(100) NOT NULL,
    talla VARCHAR(10),
    precio DECIMAL(10,2),
    stock INT,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES Categorias(id_categoria)
);

CREATE TABLE Pedidos (
    id_pedido INT PRIMARY KEY,
    fecha_pedido DATE,
    cantidad INT,
    id_cliente INT,
    id_producto INT,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
);

INSERT INTO Clientes VALUES
(1, 'Carlos', 'Hernandez', 'carlos@gmail.com', '7000-1111'),
(2, 'Maria', 'Lopez', 'maria@gmail.com', '7000-2222'),
(3, 'Jose', 'Martinez', 'jose@gmail.com', '7000-3333'),
(4, 'Ana', 'Garcia', 'ana@gmail.com', '7000-4444'),
(5, 'Brayan', 'Aguilar', 'brayan@gmail.com', '7000-5555');

INSERT INTO Categorias VALUES
(1, 'Camisas'),
(2, 'Pantalones'),
(3, 'Zapatos'),
(4, 'Vestidos'),
(5, 'Chaquetas');

INSERT INTO Productos VALUES
(1, 'Camisa deportiva', 'M', 25.00, 20, 1),
(2, 'Pantalon de mezclilla', '32', 40.00, 15, 2),
(3, 'Zapatillas deportivas', '42', 55.00, 10, 3),
(4, 'Vestido casual', 'M', 45.00, 8, 4),
(5, 'Chaqueta de cuero', 'L', 80.00, 5, 5);

INSERT INTO Pedidos VALUES
(1, '2026-08-20', 2, 1, 1),
(2, '2026-08-21', 1, 2, 3),
(3, '2026-08-22', 1, 3, 2),
(4, '2026-08-23', 2, 4, 4),
(5, '2026-08-24', 1, 5, 5);

SHOW TABLES;

