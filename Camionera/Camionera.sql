-- Creamos la BD
CREATE DATABASE Camionera;

-- Usamos la BD creada
USE Camionera;

-- Creación de la tabla Camionero
CREATE TABLE Camionero (
    ID INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Telefono VARCHAR(60),
    Direccion VARCHAR(100),
    Salario DECIMAL(8,2),
    Poblacion VARCHAR(50)
);

-- Creación de la tabla Paquete
CREATE TABLE Paquete (
    CodigoPaquete VARCHAR(20) PRIMARY KEY,
    Descripcion VARCHAR(100),
    Destinatario VARCHAR(50),
    DireccionDestinatario VARCHAR(100),
    Camionero_ID INT,
    FOREIGN KEY (Camionero_ID) REFERENCES Camionero(ID)
);

-- Creación de la tabla Provincia
CREATE TABLE Provincia (
    CodigoProvincia VARCHAR(2) PRIMARY KEY,
    Nombre VARCHAR(50)
);

-- Creación de la tabla LlegadaPaquete
CREATE TABLE LlegadaPaquete (
    CodigoPaquete VARCHAR(20),
    CodigoProvincia VARCHAR(2),
    PRIMARY KEY (CodigoPaquete, CodigoProvincia),
    FOREIGN KEY (CodigoPaquete) REFERENCES Paquete(CodigoPaquete),
    FOREIGN KEY (CodigoProvincia) REFERENCES Provincia(CodigoProvincia)
);

-- Creación de la tabla Camion
CREATE TABLE Camion (
    Matricula VARCHAR(10) PRIMARY KEY,
    Modelo VARCHAR(50),
    Tipo VARCHAR(50),
    Potencia INT
);

-- Creación de la tabla Conduce
CREATE TABLE Conduce (
    Camionero_ID INT,
    Matricula VARCHAR(10),
    Fecha DATE,
    PRIMARY KEY (Camionero_ID, Matricula, Fecha),
    FOREIGN KEY (Camionero_ID) REFERENCES Camionero(ID),
    FOREIGN KEY (Matricula) REFERENCES Camion(Matricula)
);

-- Tabla Camionero

INSERT INTO Camionero (ID, Nombre, Telefono, Direccion, Salario, Poblacion) VALUES
(1, 'Juan Perez', '123456789', 'Calle Mayor 1', 1800, 'Madrid'),
(2, 'Pedro Garcia', '987654321', 'Calle Estrella 5', 2000, 'Barcelona'),
(3, 'Maria Lopez', '456123789', 'Calle del Sol 7', 2200, 'Sevilla'),
(4, 'Ana Martin', '789456123', 'Avenida del Mar 11', 1900, 'Valencia'),
(5, 'Luisa Rodriguez', '369258147', 'Calle del Pilar 3', 2100, 'Bilbao');

-- Tabla Paquete

INSERT INTO Paquete (CodigoPaquete, Descripcion, Destinatario, DireccionDestinatario, Camionero_ID) VALUES
('001', 'Paquete 1', 'Carlos Sanchez', 'Calle de la Rosa 2', 1),
('002', 'Paquete 2', 'Laura Garcia', 'Calle del Bosque 8', 2),
('003', 'Paquete 3', 'Mario Fernandez', 'Avenida del Mar 7', 3),
('004', 'Paquete 4', 'Sofia Perez', 'Calle de la Luna 4', 4),
('005', 'Paquete 5', 'Marta Rodriguez', 'Calle del Sol 12', 5);

-- Tabla Provincia

INSERT INTO Provincia (CodigoProvincia, Nombre) VALUES
('01', 'Álava'),
('02', 'Albacete'),
('03', 'Alicante'),
('04', 'Almería'),
('05', 'Ávila');

-- Tabla LlegadaPaquete

INSERT INTO LlegadaPaquete (CodigoPaquete, CodigoProvincia) VALUES
('001', '01'),
('002', '02'),
('003', '03'),
('004', '04'),
('005', '05');

-- Tabla Camion

INSERT INTO Camion (Matricula, Modelo, Tipo, Potencia) VALUES
('1234ABC', 'Mercedes Benz', 'Caja cerrada', 120),
('5678DEF', 'Iveco', 'Volquete', 150),
('9012GHI', 'Scania', 'Furgón', 180),
('3456JKL', 'Renault', 'Plataforma', 200),
('7890MNO', 'Man', 'Caja abierta', 170);

-- Tabla Conduce

INSERT INTO Conduce (Camionero_ID, Matricula, Fecha) VALUES
(1, '1234ABC', '2022-02-20'),
(2, '5678DEF', '2022-02-21'),
(3, '9012GHI', '2022-02-22'),
(4, '3456JKL', '2022-02-23'),
(5, '7890MNO', '2022-02-24');
