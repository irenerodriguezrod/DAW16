/*
Actividad 3: Modificación y optimización de la base de datos empresa.
Tipo: Proyecto individual Descripción:
Aplica múltiples modificaciones a través del comando ALTER TABLE para adaptarte a nuevos requisitos:
    • Añadir columna género a empleados.
    • Añade campo `estado` con valor por defecto ‘activo’ a empleados.
    • Establece la restricción de que el salario debe ser superior a 1000.
    • Amplia el campo dirección a 100 caracteres.
    • Añade campo `activo` a departamentos; elimina `ubicacion`, valor por defecto true.
    • Restricciones en `duracion_maxima_dias` y presupuesto que deben ser superiores a 0.
    • En asignaciones, añade `horas_asignadas_dia` con una restricción superior a 0 y inferior o igual a 8.
    • El campo rol_en_proyecto puede tener los valores: Desarrollador, Analista, Jefe de Proyecto o Tester, por defecto Desarrollador.
Índices: 
    1. Índice simple sobre dni en empleados. Crea una restricción UNIQUE en el correo electrónico.
    2. Crea dos índices más en los campos que creas convenientes. Justifica tu elección.
Entrega:
    - script SQL de todas las instrucciones ALTER TABLE, con justificación técnica por cada cambio.
    - Diagrama E-R generado con MySQL Workbench.
    - Documento pdf justificando la elección de los índices.
*/

-- 1. Añadir columna género a empleados.
ALTER TABLE empleados
ADD COLUMN genero ENUM('Masculino', 'Femenino', 'Otro', 'Prefiero no decirlo') NULL;

-- 2. Añade campo `estado` con valor por defecto ‘activo’ a empleados.
ALTER TABLE empleados
ADD COLUMN estado VARCHAR(25) NOT NULL DEFAULT 'activo';

-- 3) Establecer restricción de que el salario debe ser superior a 1000
ALTER TABLE empleados
  ADD CHECK (salario > 1000);
-- Requiere MySQL 8+ para hacer CHECK; versiones antiguas puede que no funcione y en su lugar, haya que emplear triggers o validaciones en la lógica del programa.

-- 4) Ampliar campo direccion a 100 caracteres
ALTER TABLE empleados
  MODIFY COLUMN direccion VARCHAR(100);

-- 5) Añadir campo activo a departamentos y eliminar ubicacion; valor por defecto TRUE
ALTER TABLE departamentos
  DROP COLUMN ubicacion,
  ADD COLUMN activo TINYINT(1) NOT NULL DEFAULT 1;
-- Se usa TINYINT(1) (booleano) con DEFAULT 1 (true).

-- 6) Restricciones en duracion_maxima_dias y presupuesto (must be > 0) en proyectos
ALTER TABLE proyectos
  ADD CHECK (duracion_maxima_dias > 0),
  ADD CHECK (presupuesto > 0);

-- 7) En asignaciones, añadir horas_asignadas_dia con restricción >0 y <=8
ALTER TABLE asignaciones
  ADD COLUMN horas_asignadas_dia INT NOT NULL DEFAULT 1,
  ADD CHECK (horas_asignadas_dia > 0 AND horas_asignadas_dia <= 8);

-- 8) Limitar rol_en_proyecto a valores concretos y establecer default 'Desarrollador'
--    (Modificamos el tipo de columna a ENUM con los valores pedidos)
ALTER TABLE asignaciones
  MODIFY COLUMN rol_en_proyecto ENUM('Desarrollador','Analista','Jefe de Proyecto','Tester','Desarrolladora principal') 
  NOT NULL DEFAULT 'Desarrollador';

-- 9) Índice simple sobre dni en empleados (si actualmente es UNIQUE lo convertimos a índice no único)
--    Primero, eliminamos índice UNIQUE sobre dni si existe (en nuestro script inicial dni era UNIQUE).
ALTER TABLE empleados
  DROP INDEX dni;
-- luego creamos el índice simple
CREATE INDEX idx_dni ON empleados(dni);

-- 10) Crear restricción UNIQUE en el correo electrónico (si no existe ya)
-- Si ya tiene valor UNIQUE en email, esta instrucción dará error.
ALTER TABLE empleados
  ADD UNIQUE INDEX idx_email_unique (email);

-- 11) Crear dos índices adicionales
-- Índice sobre id_departamento en empleados (consultas por departamento y joins)
CREATE INDEX idx_empleado_departamento ON empleados(id_departamento);

-- Índice sobre fecha_ingreso en empleados (consultas/ordenaciones por fecha de alta)
CREATE INDEX idx_empleado_fecha_ingreso ON empleados(fecha_ingreso);
