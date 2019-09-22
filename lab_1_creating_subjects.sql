CREATE TABLE teacher(
  lect_id varchar(20) not NULL,
  surname varchar(20) not NULL,
  position varchar(20) not NULL,
  department varchar(20) not NULL,
  specialization text,
  phone_number INT,
  PRIMARY KEY (lect_id)
);


INSERT INTO teacher(lect_id, surname, position, department, specialization, phone_number)
VALUES ('221Л',  'Фролов', 'Доцент', 'ЭВМ', 'АСОИ, ЭВМ', '487');

INSERT INTO teacher(lect_id, surname, position, department, specialization, phone_number)
VALUES ('222Л', 'Костин', 'Доцент', 'ЭВМ', 'ЭВМ', '543');

INSERT INTO teacher(lect_id, surname, position, department, specialization, phone_number)
VALUES ('225Л', 'Бойко', 'Профессор', 'АСУ', 'АСОИ, ЭВМ', '112');

INSERT INTO teacher(lect_id, surname, position, department, specialization, phone_number)
VALUES ('430Л', 'Глазгов', 'Ассистент', 'ТФ', 'СД', '421');

INSERT INTO teacher(lect_id, surname, position, department, specialization, phone_number)
VALUES ('110Л', 'Петров', 'Ассистент', 'Экономики', 'Международная экономика', '324');

CREATE TABLE subgect(
  id varchar(20) not NULL,
  name varchar(20) not NULL,
  num_of_hours INT,
  specialization text,
  term INT,
  PRIMARY KEY (id)
);

INSERT INTO subgect(id, name, num_of_hours, specialization, term)
VALUES ('12П', 'МиниЭВМ', '36', 'ЭВМ', '1');

INSERT INTO subgect(id, name, num_of_hours, specialization, term)
VALUES ('14П', 'ПЭВМ', '72', 'ЭВМ', '2');

INSERT INTO subgect(id, name, num_of_hours, specialization, term)
VALUES ('17П', 'СУБД ПК', '48', 'АСОИ', '4');

INSERT INTO subgect(id, name, num_of_hours, specialization, term)
VALUES ('18П', 'ВКСС', '52', 'АСОИ', '6');

INSERT INTO subgect(id, name, num_of_hours, specialization, term)
VALUES ('34П', 'Физика', '30', 'СД', '6');

INSERT INTO subgect(id, name, num_of_hours, specialization, term)
VALUES ('22П', 'Аудит', '34', 'Бухучета', '3');

CREATE TABLE student_group(
id_group VARCHAR(20) not NULL,
group_name VARCHAR(20) not NULL,
num_of_students INT,
specialization VARCHAR(50) not NULL,
leader VARCHAR(20) not NULL,
PRIMARY KEY (id_group) 
);

INSERT INTO student_group(id_group , group_name, num_of_students, specialization, leader)
VALUES ('8Г', 'Э-12', '18', 'ЭВМ', 'Иванов');

INSERT INTO student_group(id_group , group_name, num_of_students, specialization, leader)
VALUES ('7Г', 'Э-15', '22', 'ЭВМ', 'Сеткин');

INSERT INTO student_group(id_group , group_name, num_of_students, specialization, leader)
VALUES ('4Г', 'АС-9', '24', 'АСОИ', 'Балабанов');

INSERT INTO student_group(id_group , group_name, num_of_students, specialization, leader)
VALUES ('3Г', 'АС-8', '20', 'АСОИ', 'Чижов');

INSERT INTO student_group(id_group , group_name, num_of_students, specialization, leader)
VALUES ('17Г', 'С-14', '29', 'СД', 'Амросов');

INSERT INTO student_group(id_group , group_name, num_of_students, specialization, leader)
VALUES ('12Г', 'М-16', '16', 'Международная экономика', 'Трубин');

INSERT INTO student_group(id_group , group_name, num_of_students, specialization, leader)
VALUES ('10Г', 'Б-4', '21', 'Бухучет', 'Зазюткин');

CREATE TABLE teacher_student_group(
id_group VARCHAR(20) not NULL,
id VARCHAR(20) not NULL,
lect_id VARCHAR(20) not NULL,
audience INT
);

INSERT INTO teacher_student_group(id_group , id, lect_id, audience)
VALUES ('8Г', '12П', '222Л', '112');

INSERT INTO teacher_student_group(id_group , id, lect_id, audience)
VALUES ('8Г', '14П', '221Л', '220');

INSERT INTO teacher_student_group(id_group , id, lect_id, audience)
VALUES ('8Г', '17П', '222Л', '112');

INSERT INTO teacher_student_group(id_group , id, lect_id, audience)
VALUES ('7Г', '14П', '221Л', '220');

INSERT INTO teacher_student_group(id_group , id, lect_id, audience)
VALUES ('7Г', '17П', '222Л', '241');

INSERT INTO teacher_student_group(id_group , id, lect_id, audience)
VALUES ('7Г', '18П', '225Л', '210');

INSERT INTO teacher_student_group(id_group , id, lect_id, audience)
VALUES ('4Г', '12П', '222Л', '112');

INSERT INTO teacher_student_group(id_group , id, lect_id, audience)
VALUES ('4Г', '18П', '225Л', '210');

INSERT INTO teacher_student_group(id_group , id, lect_id, audience)
VALUES ('3Г', '12П', '222Л', '112');

INSERT INTO teacher_student_group(id_group , id, lect_id, audience)
VALUES ('3Г', '17П', '221Л', '241');

INSERT INTO teacher_student_group(id_group , id, lect_id, audience)
VALUES ('3Г', '18П', '225Л', '210');

INSERT INTO teacher_student_group(id_group , id, lect_id, audience)
VALUES ('17Г', '12П', '222Л', '112');

INSERT INTO teacher_student_group(id_group , id, lect_id, audience)
VALUES ('17Г', '22П', '110Л', '220');

INSERT INTO teacher_student_group(id_group , id, lect_id, audience)
VALUES ('17Г', '34П', '430Л', '118');

INSERT INTO teacher_student_group(id_group , id, lect_id, audience)
VALUES ('12Г', '12П', '222Л', '112');

INSERT INTO teacher_student_group(id_group , id, lect_id, audience)
VALUES ('12Г', '22П', '110Л', '210');

INSERT INTO teacher_student_group(id_group , id, lect_id, audience)
VALUES ('10Г', '12П', '222Л', '210');

INSERT INTO teacher_student_group(id_group , id, lect_id, audience)
VALUES ('10Г', '22П', '110Л', '210');
