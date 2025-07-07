PADRE:

CREATE TABLE Personas_InfoAdicional (
  persona_id INT64 NOT NULL,
  origen STRING(50),
  actividad STRING(100),
  distrito STRING(50),
  institucion STRING(100),
  estado STRING(20)
) PRIMARY KEY(persona_id);

HIJA:

CREATE TABLE Personas (
  persona_id INT64 NOT NULL,
  nombres STRING(50),
  apellidos STRING(50),
  fecha_nacimiento DATE,
  telefonos ARRAY<STRING(15)>,  -- atributo multivaluado
  correo STRING(100)
) PRIMARY KEY(persona_id),
  INTERLEAVE IN PARENT Personas_InfoAdicional ON DELETE CASCADE;


INSERT INTO Personas_InfoAdicional (persona_id, origen, actividad, distrito, institucion, estado) VALUES
(1, 'Chimbote', 'Estudia Ingeniería', 'Nuevo Chimbote', 'UNS', 'Activo'),
(2, 'Lima', 'Trabaja en tecnología', 'Miraflores', 'UPN', 'Activo'),
(3, 'Piura', 'Estudia Medicina', 'Castilla', 'UNP', 'Inactivo'),
(4, 'Trujillo', 'Docente universitario', 'La Esperanza', 'UNT', 'Activo'),
(5, 'Arequipa', 'Estudia Derecho', 'Cercado', 'UCSP', 'Activo');


INSERT INTO Personas (
  persona_id, nombres, apellidos, fecha_nacimiento, telefonos, correo
) VALUES
(1, 'Luis', 'Martínez', DATE '2000-05-12', ['987654321', '912345678'], 'luis@gmail.com'),
(2, 'Ana', 'Gómez', DATE '1998-11-20', ['923456789', '934567812'], 'ana.gomez@hotmail.com'),
(3, 'Carlos', 'Ríos', DATE '2002-01-08', ['978123456'], 'carlosr@correo.com'),
(4, 'Lucía', 'Fernández', DATE '1997-07-15', ['912345678', '988776655'], 'luciaf@gmail.com'),
(5, 'José', 'Vega', DATE '1999-03-22', ['987654321'], 'jose.v@live.com');
