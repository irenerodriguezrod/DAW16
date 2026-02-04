
-- ----------- ----------- ----------- -----------
-- ACTIVIDAD 3: Transacciones y control de errores.
-- Autor: Irene Rodríguez Rodríguez
-- Descripción: En esta actividad practicarás el uso de transacciones SQL para garantizar la integridad y consistencia de los datos 
-- 				en situaciones que implican múltiples operaciones relacionadas. Ejecutarás operaciones agrupadas mediante `BEGIN`, 
-- 				`COMMIT` y `ROLLBACK`, asegurando el cumplimiento de las propiedades ACID.
-- Última revisión: 25 de noviembre de 2025
-- ----------- ----------- ----------- -----------
-- 1. Simula el proceso de publicación de una nueva oferta y la asignación inmediata de tres candidatos a dicha oferta. 
-- Confirma la transacción.
START TRANSACTION;

-- comprobar las ultimas 3 ofertas de manera descendente
SELECT * FROM ofertas ORDER BY id_oferta DESC LIMIT 3;

-- Insertar oferta
INSERT INTO ofertas (id_empresa, titulo, descripcion, salario, ubicacion, fecha_publicacion, fecha_cierre)
VALUES (1, 'Soporte Nivel 1', 'Atención técnica básica', 22000, 'Madrid', CURDATE(), DATE_ADD(CURDATE(), INTERVAL 30 DAY));

-- Guardar ID de la oferta
SET @idNuevaOferta = LAST_INSERT_ID();

-- Insertar 3 candidatos a la oferta
INSERT INTO candidato_oferta (id_candidato, id_oferta, fecha_postulacion)
VALUES 
		(1, @idNuevaOferta, CURDATE()),
		(2, @idNuevaOferta, CURDATE()),
		(3, @idNuevaOferta, CURDATE());

-- Confirmación final
COMMIT;

-- Verificación final
SELECT * FROM candidato_oferta WHERE id_oferta = @idNuevaOferta;

-- 2. Realiza una transacción que actualice el salario de todas las ofertas del sector 'Tecnología' en un 15%. 
-- Descarta la transacción utilizando un ROLLBACK
START TRANSACTION;

-- Comprobacion inicial
SELECT id_oferta, titulo, salario
FROM ofertas
WHERE titulo LIKE '%Cloud%'
   OR titulo LIKE '%Software%'
   OR titulo LIKE '%Dev%'
   OR titulo LIKE '%Ciber%'
   OR titulo LIKE '%Datos%'
   OR titulo LIKE '%Backend%'
   OR titulo LIKE '%Ingeniero%';

-- Actualizamos +15%
UPDATE ofertas
SET salario = salario * 1.15
WHERE titulo LIKE '%Cloud%'
   OR titulo LIKE '%Software%'
   OR titulo LIKE '%Dev%'
   OR titulo LIKE '%Ciber%'
   OR titulo LIKE '%Datos%'
   OR titulo LIKE '%Backend%'
   OR titulo LIKE '%Ingeniero%';

-- Deshacemos cambios
ROLLBACK;

-- Comprobación final (deben salir igual que al principio)
SELECT id_oferta, titulo, salario
FROM ofertas
WHERE titulo LIKE '%Cloud%'
   OR titulo LIKE '%Software%'
   OR titulo LIKE '%Dev%'
   OR titulo LIKE '%Ciber%'
   OR titulo LIKE '%Datos%'
   OR titulo LIKE '%Backend%'
   OR titulo LIKE '%Ingeniero%';

-- 3. Inserta dos nuevas ofertas y luego elimina una empresa relacionada. 
-- Utiliza puntos intermedios para revertir parcialmente la transacción. Documenta todo el proceso.
START TRANSACTION;

-- Insertar dos ofertas nuevas
INSERT INTO ofertas (id_empresa, titulo, descripcion, salario, ubicacion, fecha_publicacion, fecha_cierre)
VALUES 
(3, 'Tester Manual Junior', 'Pruebas manuales en aplicaciones web', 25000, 'Barcelona', CURDATE(), DATE_ADD(CURDATE(), INTERVAL 30 DAY)),
(3, 'Becario QA', 'Apoyo en pruebas de software', 0, 'Barcelona', CURDATE(), DATE_ADD(CURDATE(), INTERVAL 30 DAY));

-- Guardamos punto intermedio
SAVEPOINT punto1;

-- Intentar borrar empresa con ofertas asociadas -> va a FALLAR
DELETE FROM empresas
WHERE id_empresa = 3;

-- Revertimos solo hasta el SAVEPOINT que hicimos antes
ROLLBACK TO punto1;
-- Confirmamos el resto (OJO: las ofertas insertadas permanecen)
COMMIT;

-- Comprobación final
SELECT * FROM ofertas ORDER BY id_oferta DESC LIMIT 5;

-- 4. Inicia una transacción para eliminar todas las ofertas de una ciudad concreta. Antes del COMMIT, comprueba que los registros ya no están visibles para otras sesiones. 
-- Luego confirma o revierte la operación.
START TRANSACTION;

-- Comprobación inicial
SELECT * FROM ofertas WHERE ubicacion = 'Sevilla';

-- Eliminar
DELETE FROM ofertas
WHERE ubicacion = 'Sevilla';

-- Comprobación
SELECT * FROM ofertas WHERE ubicacion = 'Sevilla';

-- COMMIT;   -- para aplicar cambios
-- ROLLBACK; -- para deshacerlos