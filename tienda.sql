
DROP DATABASE IF EXISTS mi_tienda;

CREATE DATABASE mi_tienda;

USE mi_tienda;

CREATE TABLE productos (
    id INT PRIMARY KEY,
    nombre VARCHAR(100),
    precio DECIMAL(10, 2)
);

CREATE TABLE categorias (
    id INT PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE productos_categorias (
    producto_id INT,
    categoria_id INT,
    PRIMARY KEY (producto_id, categoria_id),
    FOREIGN KEY (producto_id) REFERENCES productos(id),
    FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);

INSERT INTO categorias (id, nombre) VALUES (1, 'bebidas');
INSERT INTO categorias (id, nombre) VALUES (2, 'dulces');

INSERT INTO productos (id, nombre, precio) VALUES (1, 'Coca-Cola', 1.50);
INSERT INTO productos (id, nombre, precio) VALUES (2, 'Agua Mineral', 1.00);
INSERT INTO productos (id, nombre, precio) VALUES (3, 'Chocolate', 2.20);

INSERT INTO productos_categorias (producto_id, categoria_id) VALUES (1, 1);
INSERT INTO productos_categorias (producto_id, categoria_id) VALUES (2, 1);
INSERT INTO productos_categorias (producto_id, categoria_id) VALUES (3, 2);

SELECT nombre, precio
FROM productos;

SELECT nombre, precio
FROM productos
WHERE precio > 10;

SELECT 
    p.nombre AS producto,
    c.nombre AS categoria
FROM productos p
JOIN productos_categorias pc ON p.id = pc.producto_id
JOIN categorias c ON pc.categoria_id = c.id;

SELECT 
    c.nombre AS categoria,
    p.nombre AS producto
FROM categorias c
LEFT JOIN productos_categorias pc ON c.id = pc.categoria_id
LEFT JOIN productos p ON pc.producto_id = p.id;


 