CREATE DATABASE Instituto;

USE Instituto;

CREATE TABLE Estudiante (
    NoControl INT PRIMARY KEY,
    NombreAlumno VARCHAR(50),
    ModalidadEstudiante VARCHAR(60),
    EmpresaLaboral VARCHAR(50)
);

CREATE TABLE Materia (
    idMateria INT PRIMARY KEY,
    NombreMateria VARCHAR(50),
    Especialidad VARCHAR(50),
    ModalidadMateria VARCHAR(60),
    Creditos INT
);

CREATE TABLE ModalidadMateria (
    Modalidad VARCHAR(60) PRIMARY KEY,
    NombreAula VARCHAR(50),
    NombreSala VARCHAR(50),
    HorasUsadas VARCHAR(50)
);
CREATE TABLE Semestre (
    idSemestre INT PRIMARY KEY,
    NombreSemestre VARCHAR(50),
    Año INT
);
CREATE TABLE Cursa (
    idCursa INT PRIMARY KEY,
    NoControl INT,
    idMateria INT,
    idSemestre INT,
    Calificacion INT,
    FOREIGN KEY (NoControl) REFERENCES Estudiante(NoControl),
    FOREIGN KEY (idMateria) REFERENCES Materia(idMateria),
    FOREIGN KEY (idSemestre) REFERENCES Semestre(idSemestre)
);

-- Tabla Estudiante

INSERT INTO Estudiante (NoControl, NombreAlumno, ModalidadEstudiante, EmpresaLaboral)
VALUES (1, 'Juan Perez', 'Alumno que trabaja', 'Empresa A');

INSERT INTO Estudiante (NoControl, NombreAlumno, ModalidadEstudiante)
VALUES (2, 'Maria Hernandez', 'Alumno que no trabaja');

INSERT INTO Estudiante (NoControl, NombreAlumno, ModalidadEstudiante)
VALUES (3, 'Pedro Ramirez', 'Alumno que no trabaja');


-- Tabla Materia

INSERT INTO Materia (idMateria, NombreMateria, Especialidad, ModalidadMateria, Creditos)
VALUES (1, 'Matemáticas', 'Ciencias', 'Materias sin laboratorio', 6);

INSERT INTO Materia (idMateria, NombreMateria, Especialidad, ModalidadMateria, Creditos)
VALUES (2, 'Física', 'Ciencias', 'Materias con laboratorio', 8);

INSERT INTO Materia (idMateria, NombreMateria, Especialidad, ModalidadMateria, Creditos)
VALUES (3, 'Programación', 'Informática', 'Materias sin laboratorio', 10);


-- Tabla ModalidadMateria

INSERT INTO ModalidadMateria (Modalidad, NombreAula, NombreSala, HorasUsadas)
VALUES ('Materias sin laboratorio', 'Aula 1', NULL, NULL);

INSERT INTO ModalidadMateria (Modalidad, NombreAula, NombreSala, HorasUsadas)
VALUES ('Materias con laboratorio', NULL, 'Sala 3', '3 horas diarias');


-- Tabla Semestre

INSERT INTO Semestre (idSemestre, NombreSemestre, Año)
VALUES (1, 'Primer semestre', 2022);

INSERT INTO Semestre (idSemestre, NombreSemestre, Año)
VALUES (2, 'Segundo semestre', 2022);


-- Tabla Cursa

INSERT INTO Cursa (idCursa, NoControl, idMateria, idSemestre, Calificacion)
VALUES (1, 1, 1, 1, 9);

INSERT INTO Cursa (idCursa, NoControl, idMateria, idSemestre, Calificacion)
VALUES (2, 2, 2, 2, 7);

INSERT INTO Cursa (idCursa, NoControl, idMateria, idSemestre, Calificacion)
VALUES (3, 3, 3, 1, 8);


