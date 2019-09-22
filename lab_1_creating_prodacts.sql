CREATE TABLE producer(
  id varchar(20) not NULL,
  name varchar(20) not NULL,
  status INT,
  city varchar(20) not NULL,
  PRIMARY KEY (id)
);


INSERT INTO producer(id, name, status, city)
VALUES ('П1',  'Петров', '20', 'Москва');

INSERT INTO producer(id, name, status, city)
VALUES ('П2',  'Синицын', '10', 'Таллин');

INSERT INTO producer(id, name, status, city)
VALUES ('П3',  'Федеров', '30', 'Таллин');

INSERT INTO producer(id, name, status, city)
VALUES ('П4',  'Чаянов', '20', 'Минск');

INSERT INTO producer(id, name, status, city)
VALUES ('П5',  'Крюков', '30', 'Киев');

CREATE TABLE part(
  id varchar(20) not NULL,
  name varchar(20) not NULL,
  color varchar(20) not NULL,
  size_of_part INT,
  city VARCHAR(20) not NULL,
  PRIMARY KEY (id)
);

INSERT INTO part(id, name, color, size_of_part, city)
VALUES ('Д1', 'Болт', 'Красный', '12', 'Москва');

INSERT INTO part(id, name, color, size_of_part, city)
VALUES ('Д2', 'Гайка', 'Зеленая', '17', 'Минск');

INSERT INTO part(id, name, color, size_of_part, city)
VALUES ('Д3', 'Диск', 'Черный', '17', 'Вильнюс');

INSERT INTO part(id, name, color, size_of_part, city)
VALUES ('Д4', 'Диск', 'Черный', '14', 'Москва');

INSERT INTO part(id, name, color, size_of_part, city)
VALUES ('Д5', 'Корпус', 'Красный', '12', 'Минск');

INSERT INTO part(id, name, color, size_of_part, city)
VALUES ('Д6', 'Крышки', 'Красный', '19', 'Москва');

CREATE TABLE project(
id VARCHAR(20) not NULL,
name VARCHAR(20) not NULL,
city VARCHAR(20) not NULL,
PRIMARY KEY (id) 
);

INSERT INTO project(id , name, city)
VALUES ('ПР1', 'ИПР1', 'Минск');

INSERT INTO project(id , name, city)
VALUES ('ПР2', 'ИПР2', 'Таллин');

INSERT INTO project(id , name, city)
VALUES ('ПР3', 'ИПР3', 'Псков');

INSERT INTO project(id , name, city)
VALUES ('ПР4', 'ИПР4', 'Псков');

INSERT INTO project(id , name, city)
VALUES ('ПР5', 'ИПР5', 'Москва');

INSERT INTO project(id , name, city)
VALUES ('ПР6', 'ИПР6', 'Саратов');

INSERT INTO project(id , name, city)
VALUES ('ПР7', 'ИПР7', 'Москва');

CREATE TABLE producer_project_part_number(
id_d VARCHAR(20) not NULL,
id_p VARCHAR(20) not NULL,
id_pr VARCHAR(20) not NULL
part_number INT,
PRIMARY KEY (id_d, id_p, id_pr)
);

INSERT INTO teacher_student_group(id_group , id, lect_id, audience)
VALUES ('П1', 'Д1', 'ПР1', '200');

INSERT INTO teacher_student_group(id_group , id, lect_id, audience)
VALUES ('П1', 'Д1', 'ПР2', '700');

INSERT INTO teacher_student_group(id_group , id, lect_id, audience)
VALUES ('П2', 'Д3', 'ПР1', '400');

INSERT INTO teacher_student_group(id_group , id, lect_id, audience)
VALUES ('П2', 'Д2', 'ПР2', '200');

INSERT INTO teacher_student_group(id_group , id, lect_id, audience)
VALUES ('П2', 'Д3', 'ПР3', '200');

INSERT INTO teacher_student_group(id_group , id, lect_id, audience)
VALUES ('П2', 'Д3', 'ПР4', '500');

INSERT INTO teacher_student_group(id_group , id, lect_id, audience)
VALUES ('П2', 'Д3', 'ПР5', '600');

INSERT INTO teacher_student_group(id_group , id, lect_id, audience)
VALUES ('П2', 'Д3', 'ПР6', '400');

INSERT INTO teacher_student_group(id_group , id, lect_id, audience)
VALUES ('П2', 'Д3', 'ПР7', '800');

INSERT INTO teacher_student_group(id_group , id, lect_id, audience)
VALUES ('П2', 'Д5', 'ПР2', '100');

INSERT INTO teacher_student_group(id_group , id, lect_id, audience)
VALUES ('П3', 'Д3', 'ПР1', '200');

INSERT INTO teacher_student_group(id_group , id, lect_id, audience)
VALUES ('П3', 'Д4', 'ПР2', '500');

INSERT INTO teacher_student_group(id_group , id, lect_id, audience)
VALUES ('П4', 'Д6', 'ПР3', '300');

INSERT INTO teacher_student_group(id_group , id, lect_id, audience)
VALUES ('П4', 'Д6', 'ПР7', '300');

INSERT INTO teacher_student_group(id_group , id, lect_id, audience)
VALUES ('П5', 'Д2', 'ПР2', '200');

INSERT INTO teacher_student_group(id_group , id, lect_id, audience)
VALUES ('П5', 'Д2', 'ПР4', '100');

INSERT INTO teacher_student_group(id_group , id, lect_id, audience)
VALUES ('П5', 'Д5', 'ПР5', '500');

INSERT INTO teacher_student_group(id_group , id, lect_id, audience)
VALUES ('П5', 'Д5', 'ПР7', '100');

INSERT INTO teacher_student_group(id_group , id, lect_id, audience)
VALUES ('П5', 'Д6', 'ПР2', '200');

INSERT INTO teacher_student_group(id_group , id, lect_id, audience)
VALUES ('П5', 'Д1', 'ПР2', '100');

INSERT INTO teacher_student_group(id_group , id, lect_id, audience)
VALUES ('П5', 'Д3', 'ПР4', '200');

INSERT INTO teacher_student_group(id_group , id, lect_id, audience)
VALUES ('П5', 'Д4', 'ПР4', '800');

INSERT INTO teacher_student_group(id_group , id, lect_id, audience)
VALUES ('П5', 'Д5', 'ПР4', '400');

INSERT INTO teacher_student_group(id_group , id, lect_id, audience)
VALUES ('П5', 'Д6', 'ПР4', '500');
