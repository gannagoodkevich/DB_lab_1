-- task 4

SELECT * FROM  producer_project_part_number
WHERE part_number BETWEEN 300 AND 750;

-- task 7

SELECT DISTINCT producer_project_part_number.id_d, producer_project_part_number.id_p, producer_project_part_number.id_pr FROM producer_project_part_number
JOIN producer ON producer_project_part_number.id_d = producer.id
JOIN part ON part.id =  producer_project_part_number.id_p
JOIN project ON project.id = producer_project_part_number.id_pr
WHERE producer.city != part.city AND producer.city != project.city AND part.city != project.city;

-- task 8 ???!!!


-- task 12

SELECT DISTINCT part.id FROM part
JOIN producer_project_part_number ON producer_project_part_number.id_p = part.id
JOIN producer ON producer_project_part_number.id_d = producer.id
JOIN project ON project.id = producer_project_part_number.id_pr
WHERE project.city = producer.city;

-- task 17

SELECT DISTINCT producer_project_part_number.id_p, producer_project_part_number.id_pr, SUM(producer_project_part_number.part_number) FROM producer_project_part_number
GROUP BY  producer_project_part_number.id_p, producer_project_part_number.id_pr;

-- task 18

SELECT DISTINCT producer_project_part_number.id_p, producer_project_part_number.id_pr, SUM(producer_project_part_number.part_number) FROM producer_project_part_number
GROUP BY  producer_project_part_number.id_p, producer_project_part_number.id_pr
HAVING SUM(producer_project_part_number.part_number) > 320;

-- task 25 ???!!!

SELECT project.id FROM project
ORDER BY project.city
LIMIT 1;

-- task 26

SELECT producer_project_part_number.id_pr FROM producer_project_part_number
WHERE producer_project_part_number.id_p = 'Д1'
GROUP BY producer_project_part_number.id_pr
HAVING AVG(producer_project_part_number.part_number) > (SELECT MAX(producer_project_part_number.part_number) FROM producer_project_part_number
WHERE producer_project_part_number.id_pr = 'ПР1'
GROUP BY producer_project_part_number.id_pr);

-- task 32

SELECT DISTINCT producer_project_part_number.id_d FROM producer_project_part_number
WHERE producer_project_part_number.id_p = (SELECT producer_project_part_number.id_p FROM producer_project_part_number
WHERE producer_project_part_number.id_d = 'П1'
GROUP BY  producer_project_part_number.id_d, producer_project_part_number.id_p);

-- task 36

SELECT prodact,  GROUP_CONCAT(DISTINCT (id_d) SEPARATOR ', ') FROM (SELECT DISTINCT producer_project_part_number.id_d, GROUP_CONCAT(DISTINCT (producer_project_part_number.id_p) SEPARATOR ', ') AS 'prodact'
FROM producer_project_part_number
GROUP BY producer_project_part_number.id_d) newTable
GROUP BY prodact
HAVING COUNT(id_d) > 1;


