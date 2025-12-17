-- =========================================================
-- TAREA 1: FUNDAMENTOS DE CONSULTAS SQL EN POSTGRESQL
-- Base de datos: tienda_online
-- Autor: Luis Enrique Babloa Flores
-- =========================================================


-- 1. Listar el nombre, precio y stock de los productos
--    que pertenecen a la categoría 'Periféricos'
SELECT nombre, precio, stock
FROM productos
WHERE categoria = 'Periféricos';


-- 2. Mostrar nombre, apellido y fecha de registro
--    de los clientes registrados en el último mes
SELECT nombre, apellido, fecha_registro
FROM clientes
WHERE fecha_registro >= CURRENT_DATE - INTERVAL '1 month';


-- 3. Mostrar productos con stock menor a 10
--    y que pertenezcan a la categoría 'Componentes'
SELECT nombre, stock, precio
FROM productos
WHERE stock < 10
AND categoria = 'Componentes';


-- 4. Listar productos con precio mayor a 500
--    o con stock mayor a 80
SELECT *
FROM productos
WHERE precio > 500
OR stock > 80;


-- 5. Mostrar clientes que NO viven en
--    Madrid, Barcelona o Valencia
SELECT nombre, email
FROM clientes
WHERE ciudad NOT IN ('Madrid', 'Barcelona', 'Valencia');

