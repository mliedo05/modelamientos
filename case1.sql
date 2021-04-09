CREATE DATABASE departaments;
\c departaments;

CREATE TABLE departament(
    id SERIAL,
    name VARCHAR(40),
    PRIMARY KEY(id));

CREATE TABLE worker(
    rut VARCHAR(9) NOT NULL UNIQUE,
    name_worker VARCHAR(40),
    direction VARCHAR(300),
    departament_id INT,
    PRIMARY KEY (rut),
    FOREIGN KEY (departament_id) REFERENCES departament(id));

CREATE TABLE salary(
    id_salary SERIAL,
    rut_worker VARCHAR(9),
    FOREIGN KEY (rut_worker) REFERENCES WORKER(rut));