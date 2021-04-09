CREATE DATABASE courses;
\c courses;

CREATE TABLE course(
    id SERIAL,
    name VARCHAR(40),
    PRIMARY KEY(id));

CREATE TABLE student(
    rut VARCHAR(9) NOT NULL UNIQUE,
    name_student VARCHAR(40),
    id_course INT,
    PRIMARY KEY(rut),
    FOREIGN KEY(id_course) REFERENCES course(id));

CREATE TABLE teacher(
    id SERIAL,
    name_teacher VARCHAR(40),
    departament VARCHAR(40), 
    PRIMARY KEY(id));

CREATE TABLE test(
    id SERIAL,
    score INT,
    rut_student VARCHAR(9),
    id_teacher INT,
    PRIMARY KEY(id),
    FOREIGN KEY(rut_student) REFERENCES student(rut),
    FOREIGN KEY(id_teacher) REFERENCES teacher(id));