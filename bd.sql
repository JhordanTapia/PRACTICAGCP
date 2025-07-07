CREATE TABLE Personas_InfoAdicional (
  persona_id BIGINT NOT NULL PRIMARY KEY,
  origen VARCHAR(50),
  actividad VARCHAR(100),
  distrito VARCHAR(50),
  institucion VARCHAR(100),
  estado VARCHAR(20)
);

CREATE TABLE Personas (
  persona_id BIGINT NOT NULL PRIMARY KEY,
  nombres VARCHAR(50),
  apellidos VARCHAR(50),
  fecha_nacimiento DATE,
  telefono1 VARCHAR(15),
  telefono2 VARCHAR(15),
  correo VARCHAR(100),
  FOREIGN KEY (persona_id) REFERENCES Personas_InfoAdicional(persona_id)
);

INSERT INTO Personas_InfoAdicional (persona_id, origen, actividad, distrito, institucion, estado) VALUES
(1, 'Chimbote', 'Estudia Ingeniería', 'Nuevo Chimbote', 'UNS', 'Activo'),
(2, 'Lima', 'Trabaja en tecnología', 'Miraflores', 'UPN', 'Activo'),
(3, 'Piura', 'Estudia Medicina', 'Castilla', 'UNP', 'Inactivo'),
(4, 'Trujillo', 'Docente universitario', 'La Esperanza', 'UNT', 'Activo'),
(5, 'Arequipa', 'Estudia Derecho', 'Cercado', 'UCSP', 'Activo');

INSERT INTO Personas (
  persona_id, nombres, apellidos, fecha_nacimiento, telefono1, telefono2, correo
) VALUES
(1, 'Jhordan', 'Tapia', '2001-04-03', '937507475', '948138671', 'jhordantapiaespinoza@gmail.com'),
(2, 'Rocio', 'Espinoza', '1998-11-20', '948138671', '934567812', 'rocioea_11@hotmail.com'),
(3, 'Harold', 'Tapia', '1993-05-30', '978123456', NULL, 'haroldtapiaespinoza@gmail.com'),
(4, 'Lucía', 'Fernández', '1997-07-15', '912345678', NULL, 'luciaf@gmail.com'),
(5, 'José', 'Vega', '1999-03-22', '987654321', NULL, 'jose.v@gmail.com');


