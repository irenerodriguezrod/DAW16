/*
Actividad 2: Consultas multitabla con JOIN y LEFT JOIN.
Tipo: Proyecto individual Descripción:
Realiza las siguientes consultas multitabla usando JOIN y LEFT JOIN, combinando las diferentes tabals.
    • Muestra el título de la oferta, el nombre de la empresa y su ubicación.
    • Muestra todas las ofertas, incluyendo aquellas que no tienen empresa asignada
    • Lista los candidatos junto con los títulos de las ofertas en las que se ha inscrito.
    • Muestra el nombre del candidato, la ciudad, el título de la oferta y la fecha de inscripción en la oferta.
    • Muestra todas las ofertas junto con el número de candidatos que se han interesado en cada una.
    • Lista todas las empresas junto con las ofertas publicadas en la ciudad de Zaragoza.
    • Muestra los candidatos que no se han interesado en ninguna oferta.
    • Muestra todas las ofertas de las empresas de Barcelona Las ofertas mostradas no pueden ser de la ciudad de Barcelona.
*/

-- 1. Muestra el título de la oferta, el nombre de la empresa y su ubicación.
SELECT o.titulo, e.nombre_empresa, o.ubicacion FROM ofertas o -- la O es la abreviación de ofertas al igual que la E que es de empresa
JOIN empresas e ON o.id_empresa = e.id_empresa;

-- 2. Muestra todas las ofertas, incluyendo aquellas que no tienen empresa asignada.
SELECT o.titulo, e.nombre_empresa
FROM Ofertas o
LEFT JOIN Empresas e ON o.id_empresa = e.id_empresa;

-- 3. Lista los candidatos junto con los títulos de las ofertas en las que se ha inscrito.
SELECT c.nombre AS nombre_candidato, -- AS es un alias personalizado para cada campo
	   o.titulo AS titulo_oferta 
FROM Candidatos c 
JOIN Candidato_Oferta co ON c.id_candidato = co.id_candidato
JOIN Ofertas o ON co.id_oferta = o.id_oferta;

-- 4. Muestra el nombre del candidato, la ciudad, el título de la oferta y la fecha de inscripción en la oferta.
SELECT c.nombre AS nombre_candidato, 
	   c.ciudad AS ciudad_candidato, 
	   o.titulo AS titulo_oferta, 
	   co.fecha_postulacion AS fecha_inscripcion
FROM candidatos c 
JOIN candidato_oferta co ON c.id_candidato = co.id_candidato
JOIN ofertas o ON co.id_oferta = o.id_oferta;

-- 5. Muestra todas las ofertas junto con el número de candidatos que se han interesado en cada una.
SELECT o.*, COUNT(co.id_candidato) AS num_candidatos -- COUNT para contar el nº total de candidatos por oferta
FROM ofertas o
LEFT JOIN candidato_Oferta co ON o.id_oferta = co.id_oferta
GROUP BY o.id_oferta;
-- 6. Lista todas las empresas junto con las ofertas publicadas en la ciudad de Zaragoza.
SELECT e.nombre_empresa, o.titulo, o.ubicacion
FROM empresas e
JOIN ofertas o ON e.id_empresa = o.id_empresa
WHERE o.ubicacion = 'Zaragoza';

-- 7. Muestra los candidatos que no se han interesado en ninguna oferta.
SELECT c.* FROM candidatos c
LEFT JOIN candidato_oferta co ON c.id_candidato = co.id_candidato
WHERE co.id_oferta IS NULL;

-- 8. Muestra todas las ofertas de las empresas de Barcelona Las ofertas mostradas no pueden ser de la ciudad de Barcelona.
SELECT o.* FROM ofertas o
JOIN Empresas e ON o.id_empresa = e.id_empresa
WHERE e.ciudad = 'Barcelona' AND o.ubicacion != 'Barcelona';