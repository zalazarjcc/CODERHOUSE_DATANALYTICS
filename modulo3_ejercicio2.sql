-- ══════════════════════════════════════════
-- BodegaTech — Script de Inventario
-- Autor: JOSE ZALAZAR
-- Fecha: 23-06-2026

-- SECCION DDL
DROP TABLE IF EXISTS inventario;--PASO 1 DEL EJERCICIO esto usamos para borrar una tabla si ya estaba creada

CREATE DATABASE EJERCICIO2; --CREAMOS UNA BASE DE DATOS PARA CADA EJERCICIO SOLO POR COMODIDAD Y VISUALIZACION

--SECCION DML
CREATE TABLE productos ( --PASO 3 CREAMOS LA TABLA CON LOS FORMATOS REQUERIDOS
    id_producto INT IDENTITY(1,1) PRIMARY KEY, 
    nombre_producto VARCHAR(100) NOT NULL,--LE DEJAMOS 100 CARACTERES PARA EL NOMBRE POR LAS DUDAS
    categoria VARCHAR(50),
    precio_unitario DECIMAL(10,2),--PRECIO SIEMPRE ELEGIMOS DECIMAL
    stock_actual INT,
    stock_minimo INT,
    fecha_ingreso DATE,
    activo TINYINT DEFAULT 1 --ELEGIMOS ESTA OPCION PORQUE ES UN VALOR PEQUEÑO QUE POR DEFAULT COMIENZA EN 1 ACTIVO
);


INSERT INTO productos (nombre_producto, categoria, precio_unitario, stock_actual, stock_minimo, fecha_ingreso, activo)
VALUES 
('Laptop Pro 15', 'Computación', 1200.00, 15, 3, '2024-01-10', 1),
('Mouse Inalámbrico', 'Accesorios', 28.00, 80, 10, '2024-01-10', 1),
('Monitor 4K 27"', 'Computación', 450.00, 12, 2, '2024-01-15', 1),
('Teclado Mecánico', 'Accesorios', 95.00, 40, 5, '2024-01-15', 1),
('Laptop Basic 14', 'Computación', 650.00, 20, 3, '2024-02-01', 1),
('Auriculares BT Pro', 'Audio', 120.00, 35, 5, '2024-02-01', 1),
('Hub USB-C 7 puertos', 'Accesorios', 45.00, 60, 10, '2024-02-10', 1),
('Webcam HD 1080p', 'Accesorios', 85.00, 25, 5, '2024-02-10', 1),
('SSD Externo 1TB', 'Almacenamiento', 130.00, 18, 3, '2024-03-01', 1),
('Parlante Bluetooth', 'Audio', 60.00, 45, 8, '2024-03-01', 1);
GO

SELECT * FROM productos;


-- 1. Actualizar Laptop Pro 15 (id_producto = 1) -> Vende 3 unidades
UPDATE productos
SET stock_actual = stock_actual - 3
WHERE id_producto = 1;

-- 2. Actualizar Mouse Inalámbrico (id_producto = 2) -> Vende 12 unidades
UPDATE productos
SET stock_actual = stock_actual - 12
WHERE id_producto = 2;

-- 3. Actualizar Auriculares BT Pro (id_producto = 6) -> Vende 5 unidades
UPDATE productos
SET stock_actual = stock_actual - 5
WHERE id_producto = 6;
GO

UPDATE productos -- ACA DISCONTINUAMOS LA WEB CAM Y LA DEJAMOS INACTIVA
SET activo = 0
WHERE id_producto = 8;

SELECT * FROM inventario; --VALIDAMOS QUE TODO ESTA OK
