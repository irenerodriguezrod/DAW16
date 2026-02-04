-- ----------- ----------- ----------- -----------
-- ACTIVIDAD 1: Manipulación de datos.
-- Autor: Irene Rodríguez Rodríguez
-- Descripción: Trabaja sobre la base de datos `bd_ofertasdetrabajo` y realiza las siguientes actividades.
-- Última revisión: 25 de noviembre de 2025
-- ----------- ----------- ----------- -----------
USE ofertastrabajo;

-- 1. Inserta 2 nuevas ofertas de trabajo, incluyendo todos los campos requeridos como: id_oferta, titulo, empresa, ciudad, fecha_publicacion, salario, descripcion.
/*Ver primero las ofertas que hay
 select * from ofertas;
*/

INSERT INTO ofertas (id_empresa, titulo, descripcion, salario, ubicacion, fecha_publicacion, fecha_cierre) 
VALUES (3, 'Tester QA', 'Pruebas de calidad en aplicaciones web', 32000.00, 'Madrid', '2025-11-25','2025-12-31'),
(10, 'Becario backend', 'Becario para nuevo proyecto en el área backend',24000.00, 'Barcelona','2025-11-25','2025-12-31');

-- Comprobación final
SELECT * FROM ofertas ORDER BY id_oferta DESC LIMIT 3;

-- 2. Actualiza el salario de las ofertas ubicadas en Barcelona, incrementándolo en un 5%.
/* Comprobar primero los datos y después de la ejecución del query
SELECT titulo, salario, ubicacion
FROM ofertas
WHERE ubicacion = 'Barcelona';
*/

SET SQL_SAFE_UPDATES = 0; -- para quitar el safe mode y poder ejecutar el comando

UPDATE ofertas
SET salario = salario * 1.05 -- si quisieramos disminuir un 5% sería * 0.95
WHERE ubicacion = 'Barcelona';


-- 3. Elimina las ofertas de trabajo cuyo salario sea inferior a 27.000 € y cuya ciudad no sea Madrid.

/* ejecutar antes para ver qué ofertas hay y después para comprobar que las ha eliminado
select * from ofertas
where salario <27000 and ubicacion != 'Madrid';
*/

DELETE FROM ofertas
WHERE salario <27000 AND 
	ubicacion != 'Madrid';


-- 4. Cambia la ciudad de todas las ofertas de Diseño a ‘Zaragoza’. (título de la oferta).
-- Comprobación inicial
SELECT *
FROM ofertas
WHERE titulo LIKE '%Diseño%';

-- como no hay coincidencias, no devolvería un resultado como tal que sea 'visible'
UPDATE ofertas
SET ubicacion = 'Zaragoza'
WHERE titulo LIKE '%Diseño%';

-- en caso de que la coincidencia del nombre del titulo de la oferta pueda ser 'Diseñ' sería de la siguiente manera
-- primero comprobar 
SELECT *
FROM ofertas
WHERE titulo LIKE '%Diseñ%';

-- cambiar valores
UPDATE ofertas
SET ubicacion = 'Zaragoza'
WHERE titulo LIKE '%Diseñ%';

-- 5. Elimina las ofertas publicadas el mes de Agosto de 2025 (Usa el campo fecha_publicacion).
-- comprobacion inicial
SELECT id_oferta, titulo, fecha_publicacion
FROM ofertas
WHERE MONTH(fecha_publicacion) = 8 AND YEAR(fecha_publicacion) = 2025;

DELETE co, o
FROM ofertas o
LEFT JOIN candidato_oferta co ON o.id_oferta = co.id_oferta
WHERE MONTH(o.fecha_publicacion) = 8 AND YEAR(o.fecha_publicacion) = 2025;

-- Comprobacion final
SELECT id_oferta, titulo, fecha_publicacion
FROM ofertas
WHERE MONTH(fecha_publicacion) = 8 AND YEAR(fecha_publicacion) = 2025;

-- 6. Cambia el dominio del correo de contacto de la empresa innovatech a gmail.
-- comprobación inicial y final
SELECT id_empresa, nombre_empresa, email
FROM empresas
WHERE nombre_empresa = 'innovatech';

UPDATE empresas
SET email = CONCAT(SUBSTRING_INDEX(email, '@', 1), '@gmail.com')
WHERE nombre_empresa = 'innovatech';

-- 7. Inserta una nueva oferta de trabajo con el campo salario en valor NULL. Explica cómo se comporta la base de datos (¿lo permite?, ¿lo reemplaza con un valor por defecto?, ¿lanza error?).
-- comprobacion inicial para ver la estructura
DESCRIBE ofertas;

INSERT INTO ofertas (id_empresa, titulo, descripcion, salario, ubicacion, fecha_publicacion, fecha_cierre)
VALUES (3, 'Prácticas sin salario', 'Oferta con salario no definido', NULL, 'Valencia', '2025-11-25', '2025-12-25');

-- Explicación: La BD permite la inserción del valor como NULL. El valor se almacena como NULL. No se reemplaza por 0 ni provoca error.

-- Comprobación final
SELECT * FROM ofertas ORDER BY id_oferta DESC LIMIT 3;

-- 8. Elimina las ofertas ubicadas en Valencia que no tengan ningún candidato asignado.
-- Comprobación inicial inicial y finañ
SELECT o.id_oferta, o.titulo, o.ubicacion, co.id_candidato
FROM ofertas o
LEFT JOIN candidato_oferta co ON o.id_oferta = co.id_oferta
WHERE o.ubicacion = 'Valencia';

DELETE o FROM ofertas o
LEFT JOIN candidato_oferta co ON o.id_oferta = co.id_oferta
WHERE o.ubicacion = 'Valencia' AND co.id_candidato IS NULL;

-- 9. Aumenta un 10% el salario de las ofertas de trabajo en Madrid que correspondan al sector ‘Desarrollo de software’.
-- comprobacion inicial antes de modificarlo
SELECT id_oferta, titulo, salario, ubicacion
FROM ofertas
WHERE ubicacion = 'Madrid' AND (titulo LIKE '%Desarroll%' OR titulo LIKE '%Software%' OR titulo LIKE '%Dev%');

UPDATE ofertas
SET salario = salario * 1.10 -- *1.10 para aumentar en un 10%
WHERE ubicacion = 'Madrid' AND (titulo LIKE '%Desarroll%' OR titulo LIKE '%Software%' OR titulo LIKE '%Dev%');

-- 10. Inserta múltiples ofertas de trabajo en una sola sentencia INSERT, asegurando que todas pertenezcan al mismo sector (por ejemplo, ‘Marketing Digital’).
-- Comprobación inicial y final
SELECT * FROM ofertas ORDER BY id_oferta DESC LIMIT 3;

INSERT INTO ofertas (id_empresa, titulo, descripcion, salario, ubicacion, fecha_publicacion, fecha_cierre)
VALUES
		(2,  'Especialista SEM - Marketing Digital', 'Gestión de campañas SEM', 32000, 'Barcelona', '2025-11-26', '2025-12-26'),
		(4,  'Content Manager - Marketing Digital',   'Gestión de contenido en RRSS', 30000, 'Sevilla', '2025-11-26', '2025-12-26'),
		(8,  'Analista SEO - Marketing Digital',      'Auditorías SEO y optimización', 31000, 'Madrid', '2025-11-26', '2025-12-26');