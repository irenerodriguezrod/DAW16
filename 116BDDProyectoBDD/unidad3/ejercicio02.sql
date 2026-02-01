-- ----------- ----------- ----------- -----------
-- ACTIVIDAD 2: Creación de la base de datos EMPRESA
-- Autor: Irene Rodríguez Rodríguez
-- Descripción: Base de datos con tablas departamentos, empleados, proyectos y asignaciones
-- Fecha de creación: 30 de octubre de 2025
-- Última revisión: 1 de febrero de 2026
-- ----------- ----------- ----------- -----------

-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS empresa;
USE empresa;

-- ----------- ----------- ----------- -----------
-- Tabla: DEPARTAMENTOS
-- ----------- ----------- ----------- -----------
CREATE TABLE departamentos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    ubicacion VARCHAR(100)
) ENGINE = InnoDB;

-- ----------- ----------- ----------- -----------
-- Tabla: EMPLEADOS
-- ----------- ----------- ----------- -----------
CREATE TABLE empleados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellidos VARCHAR(150) NOT NULL,
    dni CHAR(9) UNIQUE NOT NULL,
    fecha_nacimiento DATE,
    email VARCHAR(100) UNIQUE,
    telefono VARCHAR(15),
    direccion VARCHAR(150),
    fecha_ingreso DATE,
    salario DECIMAL(10,2),
    id_departamento INT,
    FOREIGN KEY (id_departamento) REFERENCES departamentos(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
) ENGINE = InnoDB;

-- ----------- ----------- ----------- -----------
-- Tabla: PROYECTOS
-- ----------- ----------- ----------- -----------
CREATE TABLE proyectos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL,
    descripcion TEXT,
    fecha_inicio DATE,
    fecha_fin DATE,
    presupuesto DECIMAL(12,2),
    duracion_maxima_dias INT,
    id_responsable INT,
    FOREIGN KEY (id_responsable) REFERENCES empleados(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
) ENGINE = InnoDB;

-- ----------- ----------- ----------- -----------
-- Tabla: ASIGNACIONES
-- (relación N:M entre empleados y proyectos)
-- ----------- ----------- ----------- -----------
CREATE TABLE asignaciones (
    id_empleado INT,
    id_proyecto INT,
    fecha_asignacion DATE,
    rol_en_proyecto VARCHAR(100),
    PRIMARY KEY (id_empleado, id_proyecto),
    FOREIGN KEY (id_empleado) REFERENCES empleados(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    FOREIGN KEY (id_proyecto) REFERENCES proyectos(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
) ENGINE = InnoDB;

-- ----------- ----------- ----------- -----------
-- Insertar registros de prueba
-- ----------- ----------- ----------- -----------

INSERT INTO departamentos (nombre, ubicacion)
VALUES ('Recursos Humanos', 'Madrid');

INSERT INTO empleados (nombre, apellidos, dni, fecha_nacimiento, email, telefono, direccion, fecha_ingreso, salario, id_departamento)
VALUES ('Laura', 'Pérez Gómez', '12345678A', '1990-05-14', 'laura.perez@empresa.com', '600123456', 'Calle Mayor 10', '2020-03-01', 25000.00, 1);

INSERT INTO proyectos (nombre, descripcion, fecha_inicio, fecha_fin, presupuesto, duracion_maxima_dias, id_responsable)
VALUES ('Proyecto Alpha', 'Desarrollo de un nuevo sistema web', '2024-01-15', '2024-06-30', 50000.00, 180, 1);

INSERT INTO asignaciones (id_empleado, id_proyecto, fecha_asignacion, rol_en_proyecto)
VALUES (1, 1, '2024-01-20', 'Desarrolladora principal');