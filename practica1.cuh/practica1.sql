CREATE TABLE Estudiantes (
    id_number VARCHAR2(10) PRIMARY KEY,
    nombre VARCHAR2(40),
    fecha_nacimiento DATE,
    direccion VARCHAR2(100)
);

CREATE TABLE Curso (
    id NUMBER PRIMARY KEY,
    nombre VARCHAR2(40),
    codigo_curso VARCHAR2(100)
);

CREATE TABLE Mestros (
    id NUMBER PRIMARY KEY,
    nombre VARCHAR2(40),
    especialidades VARCHAR2(40)
);

CREATE TABLE Inscripciones (
    fecha_inscripcion DATE,
    estudiante_id VARCHAR2(10),
    curso_id NUMBER,
    FOREIGN KEY (estudiante_id) REFERENCES Estudiantes(id_number),
    FOREIGN KEY (curso_id) REFERENCES Curso(id)
);

CREATE TABLE Calificaciones (
    id INT PRIMARY KEY,
    estudiante_id VARCHAR2(10),
    curso_id NUMBER,
    profesor_id NUMBER,
    nota DECIMAL(5, 2),
    FOREIGN KEY (estudiante_id) REFERENCES Estudiantes(id_number),
    FOREIGN KEY (curso_id) REFERENCES Curso(id),
    FOREIGN KEY (profesor_id) REFERENCES Mestros(id)
    
);



