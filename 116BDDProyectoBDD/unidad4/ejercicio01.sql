/*
Actividad 1: Consultas simples con condiciones y ordenación.
Tipo: Proyecto individual Descripción:
Trabaja sobre la base de datos `bd_ofertasdetrabajo` y realiza las siguientes simples utilizando SELECT con condiciones y ordenación. Incluye: operadores de comparación, filtros con LIKE, BETWEEN, IS NULL, ordenaciones con ORDER BY y alias de columnas.
Consultas:
    • Ofertas con salario entre 25.000 y 40.000 euros, ordenadas por salario ascendente.
    • Ofertas cuyo título contenga la palabra 'Ingeniero'.
    • Ofertas publicadas después del 1 de enero de 2024.
    • Ofertas sin salario especificado (IS NULL).
    • Ofertas cuya ubicación contenga 'Madrid', ordenadas alfabéticamente.
    • Ofertas donde la descripción esté vacía o nula.
    • Candidatos cuyo correo electrónico termine en '@gmail.com'.
    • Candidatos nacidos antes de 1990, ordenados por fecha de nacimiento.
    • Candidatos cuyo nombre contenga la letra 'a' y vivan en Barcelona.
    • Lista de candidatos, ordenados por ciudad de residencia en orden descendente.

Fecha de creación: 01/02/2026
Última edición: 02/02/2026
*/

use ofertastrabajo;

SHOW TABLES;

-- 1. Ofertas con salario entre 25.000 y 40.000 euros, ordenadas por salario ascendente.
SELECT * 
FROM ofertas 
WHERE 
    salario BETWEEN 25000 AND 40000;

-- 2. Ofertas cuyo título contenga la palabra 'Ingeniero'.
SELECT * 
FROM ofertas 
WHERE 
    titulo LIKE '%Ingeniero%';

-- 3. Ofertas publicadas después del 1 de enero de 2024.
SELECT * 
FROM ofertas 
WHERE 
    fecha_publicacion >= '2024-01-01';

-- 4. Ofertas sin salario especificado (IS NULL).
SELECT * 
FROM ofertas 
WHERE 
    salario = 'IS NULL';

-- 5. Ofertas cuya ubicación contenga 'Madrid', ordenadas alfabéticamente.
SELECT *
FROM ofertas
WHERE
    ubicacion LIKE '%Madrid%'
ORDER BY titulo ASC;

-- 6. Ofertas donde la descripción esté vacía o nula.
SELECT * 
FROM ofertas
WHERE 
    descripcion IS NULL
        OR descripcion='';

-- 7. Candidatos cuyo correo electrónico termine en '@gmail.com'.
SELECT * 
FROM candidatos
WHERE 
    correo_electronico LIKE '%@gmail.com';

-- 8. Candidatos nacidos antes de 1990, ordenados por fecha de nacimiento.
SELECT *
FROM candidatos
WHERE 
    fecha_nacimiento < '1990-01-01'
ORDER BY fecha_nacimiento ASC;

-- 9. Candidatos cuyo nombre contenga la letra 'a' y vivan en Barcelona.
SELECT *
FROM candidatos
WHERE 
    nombre LIKE '%a%'
    AND ciudad = 'Barcelona';

-- 10. Lista de candidatos, ordenados por ciudad de residencia en orden descendente.
SELECT *
FROM candidatos
ORDER BY ciudad DESC;