-- 1 task

SELECT  * FROM teacher;

-- 2 task

SELECT * FROM student_group
WHERE student_group.specialization = 'ЭВМ';

-- 3 task

SELECT lect_id, audience FROM teacher_student_group
WHERE id = '18П';

-- 4 task

SELECT DISTINCT  subgect.name,  subgect.id FROM teacher_student_group
JOIN teacher ON teacher.lect_id = teacher_student_group.lect_id
JOIN subgect ON subgect.id = teacher_student_group.id
WHERE teacher.surname = 'Костин';

-- 5 task

SELECT teacher_student_group.id_group FROM teacher
JOIN teacher_student_group ON teacher.lect_id = teacher_student_group.lect_id
WHERE teacher.surname = 'Фролов';

-- 6 task

SELECT * FROM subgect
WHERE specialization = 'АСОИ';

-- 7 task

SELECT * FROM teacher
WHERE specialization LIKE '%АСОИ%';

-- 8 task

SELECT DISTINCT teacher.surname FROM teacher
JOIN teacher_student_group ON teacher.lect_id = teacher_student_group.lect_id
WHERE teacher_student_group.audience = '210';

-- 9 task

SELECT DISTINCT  subgect.name, student_group.group_name FROM teacher_student_group
JOIN student_group ON student_group.id_group = teacher_student_group.id_group
JOIN subgect ON subgect.id = teacher_student_group.id
WHERE teacher_student_group.audience BETWEEN 100 AND 200;

-- 10 task

SELECT specialization, GROUP_CONCAT(id_group SEPARATOR ', ') AS 'group'
FROM student_group
GROUP BY specialization;

-- 11 task

SELECT specialization, SUM(num_of_students) FROM student_group
GROUP BY specialization
HAVING specialization = 'АСОИ';

-- 12 task

SELECT  lect_id FROM teacher
WHERE specialization LIKE '%ЭВМ%';

-- 13 task

SELECT id 
FROM teacher_student_group
GROUP BY  id
HAVING COUNT(id_group) >=7;

-- 14 task

SELECT DISTINCT teacher.surname FROM teacher
JOIN teacher_student_group ON teacher.lect_id = teacher_student_group.lect_id
WHERE teacher_student_group.id = '14П';

-- 15 task

SELECT * FROM subgect
JOIN teacher_student_group ON subgect.id = teacher_student_group.id
WHERE teacher_student_group.lect_id != '221П';

-- 16 task

SELECT DISTINCT student_group.id_group, student_group.group_name, student_group.num_of_students, student_group.specialization,  student_group.leader FROM student_group
JOIN teacher_student_group ON student_group.id_group = teacher_student_group.id_group
WHERE student_group.group_name != 'М-6';

-- 17 task

SELECT  DISTINCT * FROM teacher
JOIN teacher_student_group ON teacher.lect_id = teacher_student_group.lect_id
WHERE teacher.position = 'Доцент'  AND teacher_student_group.id_group = '3Г' OR teacher_student_group.id_group = '8Г';

-- 18 task

SELECT  DISTINCT teacher_student_group.lect_id, teacher_student_group.id, teacher_student_group.id_group FROM teacher
JOIN teacher_student_group ON teacher.lect_id = teacher_student_group.lect_id
WHERE teacher.specialization LIKE '%АСОИ%'  AND teacher.department = 'ЭВМ';

-- 19 task

SELECT  DISTINCT student_group.id_group FROM teacher
JOIN student_group ON teacher.specialization LIKE CONCAT('%', student_group.specialization ,'%');

-- 20 task

SELECT  DISTINCT teacher.lect_id FROM teacher
JOIN student_group ON teacher.specialization = student_group.specialization
WHERE teacher.department = 'ЭВМ';

-- 21 task

SELECT  DISTINCT student_group.specialization FROM student_group
JOIN teacher_student_group ON student_group.id_group = teacher_student_group.id_group
JOIN teacher ON teacher.lect_id = teacher_student_group.lect_id
WHERE teacher.department = 'АСУ';

-- 22 task

SELECT  DISTINCT teacher_student_group.id FROM student_group
JOIN teacher_student_group ON student_group.id_group = teacher_student_group.id_group
WHERE student_group.group_name = 'АС-8';

-- 23 task

SELECT DISTINCT teacher_student_group.id_group FROM teacher_student_group
WHERE  teacher_student_group.id IN (SELECT DISTINCT teacher_student_group.id FROM student_group
JOIN teacher_student_group ON student_group.id_group = teacher_student_group.id_group
WHERE  student_group.group_name = 'АС-8');

-- 24 task

SELECT DISTINCT teacher_student_group.id_group FROM teacher_student_group
WHERE  teacher_student_group.id NOT IN (SELECT DISTINCT teacher_student_group.id FROM student_group
JOIN teacher_student_group ON student_group.id_group = teacher_student_group.id_group
WHERE  student_group.group_name = 'АС-8');

-- 25 task

SELECT DISTINCT teacher_student_group.id_group FROM teacher_student_group
WHERE  teacher_student_group.id_group NOT IN (SELECT  DISTINCT teacher_student_group.id_group FROM teacher_student_group
WHERE teacher_student_group.lect_id = '430Л');

-- 26 task

SELECT DISTINCT teacher_student_group.lect_id FROM teacher_student_group
WHERE  teacher_student_group.id_group IN (SELECT DISTINCT teacher_student_group.id_group FROM student_group
JOIN teacher_student_group ON student_group.id_group = teacher_student_group.id_group
WHERE  student_group.group_name = 'Э-15') AND teacher_student_group.lect_id NOT IN (SELECT DISTINCT teacher_student_group.lect_id FROM teacher_student_group
WHERE  teacher_student_group.id = '12П');





