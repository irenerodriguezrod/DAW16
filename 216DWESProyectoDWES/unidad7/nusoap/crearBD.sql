/*
Archivo: crearBD.sql
Descripción: 
Autor: Irene RODRIGUEZ RODRIGUEZ
Fecha de creación: 30/01/2026
Última modificación: 31/01/2026
*/

-- Crear base de datos
CREATE DATABASE IF NOT EXISTS agendaContactos;

-- Usar la base de datos
USE agendaContactos;

-- Crear tabla contacto
DROP TABLE IF EXISTS contacto;

CREATE TABLE contacto (
    codigo INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(20),
    email VARCHAR(100),
    direccion VARCHAR(200),
    tipo VARCHAR(50)
);

-- Insertar datos de ejemplo
INSERT INTO
    contacto (
        nombre,
        telefono,
        email,
        direccion,
        tipo
    )
VALUES (
        'Juan Pérez',
        '123456789',
        'juan@example.com',
        'Calle Falsa 123',
        'personal'
    ),
    (
        'María García',
        '987654321',
        'maria@example.com',
        'Avenida Siempre Viva 456',
        'trabajo'
    ),
    (
        'Carlos López',
        '555666777',
        'carlos@example.com',
        'Plaza Mayor 789',
        'personal'
    ),
    (
        'Ana Martínez',
        '111222333',
        'ana@example.com',
        'Calle Real 101',
        'trabajo'
    );