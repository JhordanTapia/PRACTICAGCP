
CREATE TABLE Personas_InfoAdicional (
  persona_id INT64 NOT NULL,
  origen STRING(50),
  actividad STRING(100),
  distrito STRING(50),
  institucion STRING(100),
  estado STRING(20)
) PRIMARY KEY(persona_id);

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
(1, 'Jhordan', 'Tapia', DATE '2001-04-03', ['937507475','948138671'], 'jhordantapiaespinoza@gmail.com'),
(2, 'Rocio', 'Espinoza', DATE '1998-11-20', ['948138671', '934567812'], 'rocioea_11@hotmail.com'),
(3, 'Harold', 'Tapia', DATE '1993-05-30', ['978123456'], 'haroldtapiaespinoza@gmail.com'),
(4, 'Lucía', 'Fernández', DATE '1997-07-15', ['912345678'], 'luciaf@gmail.com'),
(5, 'José', 'Vega', DATE '1999-03-22', ['987654321'], 'jose.v@gmail.com');

