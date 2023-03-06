CREATE DATABASE Reparaciones;

USE Reparaciones;

-- Creación de la tabla Cliente
CREATE TABLE Cliente (
    RFC VARCHAR(13) PRIMARY KEY,
    Nombre VARCHAR(50),
    Direccion VARCHAR(100)
);

-- Creación de la tabla Mecanico
CREATE TABLE Mecanico (
    idMecanico INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Salario DECIMAL(8,2)
);
-- Creación de la tabla Coche
CREATE TABLE Coche (
    Matricula VARCHAR(10) PRIMARY KEY,
    Marca VARCHAR(50),
    Modelo VARCHAR(50),
    Color VARCHAR(20),
    Cliente_RFC VARCHAR(13),
    idMecanico INT,
    FOREIGN KEY (Cliente_RFC) REFERENCES Cliente(RFC),
    FOREIGN KEY (idMecanico) REFERENCES Mecanico(idMecanico)
);





-- Creación de la tabla Nuevo
CREATE TABLE Nuevo (
    Matricula VARCHAR(10) PRIMARY KEY,
    NoFactura VARCHAR(20),
    FOREIGN KEY (Matricula) REFERENCES Coche(Matricula)
);

-- Creación de la tabla Usado
CREATE TABLE Usado (
    Matricula VARCHAR(10) PRIMARY KEY,
    Kilometraje INT,
    FOREIGN KEY (Matricula) REFERENCES Coche(Matricula)
);

-- Inserción de datos en la tabla Cliente
INSERT INTO Cliente (RFC, Nombre, Direccion)
VALUES
    ('ABC123456DEF', 'Juan Perez', 'Av. Insurgentes 123'),
    ('GHI789012JKL', 'Maria Rodriguez', 'Calle 10 #25');

-- Inserción de datos en la tabla Mecanico
INSERT INTO Mecanico (idMecanico, Nombre, Salario)
VALUES
    (1, 'Pedro Gonzalez', 12000.00),
    (2, 'Luisa Hernandez', 15000.00);

-- Inserción de datos en la tabla Coche
INSERT INTO Coche (Matricula, Marca, Modelo, Color, Cliente_RFC, idMecanico)
VALUES
    ('ABC123', 'Toyota', 'Corolla', 'Rojo', 'ABC123456DEF', 1),
    ('DEF456', 'Ford', 'Mustang', 'Negro', 'GHI789012JKL', 2),
    ('GHI789', 'Nissan', 'Versa', 'Blanco', 'ABC123456DEF', 1),
    ('JKL012', 'Chevrolet', 'Aveo', 'Azul', 'GHI789012JKL', 2);

-- Inserción de datos en la tabla Nuevo
INSERT INTO Nuevo (Matricula, NoFactura)
VALUES
    ('ABC123', 'FAC123456'),
    ('GHI789', 'FAC789012');

-- Inserción de datos en la tabla Usado
INSERT INTO Usado (Matricula, Kilometraje)
VALUES
    ('DEF456', 10000),
    ('JKL012', 5000);
