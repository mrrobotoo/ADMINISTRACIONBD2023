create table Estudiantes(
id_number(10) primary key,
nombre varchar2(40)
fecha_nacimiento date(15)
direccion varchar2(100)
);


create table Curso (
id number primary key 
nombre varchar2(40)
codigo_curso varchar2(100)
);

create table Profesores (
id_number primary key 
nombre varchar2(40)
especialidades varchar2(40)
);

create table Inscripciones (
fecha_inscripcion date,
curso_id number,
FOREIGN KEY (estudiante_id) REFERENCES Estudiantes(id),
    FOREIGN KEY (curso_id) REFERENCES Cursos(id)
);

CREATE TABLE Calificaciones (
    id INT PRIMARY KEY,
    estudiante_id INT,
    curso_id INT,
    profesor_id INT,
    nota DECIMAL(5,2),
    FOREIGN KEY (estudiante_id) REFERENCES Estudiantes(id),
    FOREIGN KEY (curso_id) REFERENCES Cursos(id),
    FOREIGN KEY (profesor_id) REFERENCES Profesores(id)
);