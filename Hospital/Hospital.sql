Create DATABASE Hospital;

use Hospital;


-- Crear la tabla de pacientes
CREATE TABLE pacientes (
  codigo INT PRIMARY KEY,
  nombre VARCHAR(50),
  apellido VARCHAR(50),
  direccion VARCHAR(100),
  poblacion VARCHAR(50),
  municipio VARCHAR(50),
  codigo_postal INT,
  telefono VARCHAR(20),
  especialidad VARCHAR(50)
);

-- Crear la tabla de médicos
CREATE TABLE medicos (
  codigo INT PRIMARY KEY,
  nombre VARCHAR(50),
  apellido VARCHAR(50),
  telefono VARCHAR(20),
  especialidad VARCHAR(50)
);

-- Crear la tabla de ingresos
CREATE TABLE ingresos (
  codigo_ingreso INT PRIMARY KEY,
  codigo_paciente INT,
  codigo_medico INT,
  numero_habitacion INT,
  numero_cama INT,
  fecha_ingreso DATE,
  FOREIGN KEY (codigo_paciente) REFERENCES pacientes(codigo),
  FOREIGN KEY (codigo_medico) REFERENCES medicos(codigo)
);

-- Insertar algunos datos de ejemplo
INSERT INTO pacientes (codigo, nombre, apellido, direccion, poblacion, municipio, codigo_postal, telefono, especialidad)
VALUES (1, 'Juan', 'García', 'Calle Mayor 123', 'Madrid', 'Madrid', 28001, '915555555', 'Cardiología');
INSERT INTO pacientes (codigo, nombre, apellido, direccion, poblacion, municipio, codigo_postal, telefono, especialidad)
VALUES (2, 'María', 'López', 'Calle Gran Vía 456', 'Barcelona', 'Barcelona', 08001, '934444444', 'Dermatología');
INSERT INTO medicos (codigo, nombre, apellido, telefono, especialidad)
VALUES (1, 'Pablo', 'Martínez', '912222222', 'Cardiología');
INSERT INTO medicos (codigo, nombre, apellido, telefono, especialidad)
VALUES (2, 'Laura', 'Gómez', '933333333', 'Dermatología');
INSERT INTO ingresos (codigo_ingreso, codigo_paciente, codigo_medico, numero_habitacion, numero_cama, fecha_ingreso)
VALUES (1, 1, 1, 101, 1, '2022-01-01');
INSERT INTO ingresos (codigo_ingreso, codigo_paciente, codigo_medico, numero_habitacion, numero_cama, fecha_ingreso)
VALUES (2, 2, 2, 102, 2, '2022-02-01');
INSERT INTO pacientes (codigo, nombre, apellido, direccion, poblacion, municipio, codigo_postal, telefono, especialidad)
VALUES (3, 'Carlos', 'Hernández', 'Calle Granada 789', 'Sevilla', 'Sevilla', 41001, '955555555', 'Traumatología');
INSERT INTO pacientes (codigo, nombre, apellido, direccion, poblacion, municipio, codigo_postal, telefono, especialidad)
VALUES (4, 'Ana', 'García', 'Calle Mayor 456', 'Madrid', 'Madrid', 28001, '916666666', 'Pediatría');
INSERT INTO pacientes (codigo, nombre, apellido, direccion, poblacion, municipio, codigo_postal, telefono, especialidad)
VALUES (5, 'Luisa', 'Fernández', 'Calle San Juan 123', 'Valencia', 'Valencia', 46001, '963333333', 'Oftalmología');
INSERT INTO pacientes (codigo, nombre, apellido, direccion, poblacion, municipio, codigo_postal, telefono, especialidad)
VALUES (6, 'Antonio', 'Rodríguez', 'Calle Málaga 789', 'Málaga', 'Málaga', 29001, '952222222', 'Cirugía');
INSERT INTO pacientes (codigo, nombre, apellido, direccion, poblacion, municipio, codigo_postal, telefono, especialidad)
VALUES (7, 'Sara', 'Martínez', 'Calle Gran Vía 456', 'Barcelona', 'Barcelona', 08001, '937777777', 'Ginecología');
INSERT INTO pacientes (codigo, nombre, apellido, direccion, poblacion, municipio, codigo_postal, telefono, especialidad)
VALUES (8, 'Pedro', 'González', 'Calle Alcalá 123', 'Madrid', 'Madrid', 28001, '917777777', 'Cardiología');
INSERT INTO pacientes (codigo, nombre, apellido, direccion, poblacion, municipio, codigo_postal, telefono, especialidad)
VALUES (9, 'Elena', 'Sánchez', 'Calle Granada 789', 'Sevilla', 'Sevilla', 41001, '954444444', 'Dermatología');
