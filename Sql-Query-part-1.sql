-- 1. Selezionare tutti gli studenti nati nel 1990 (160)

SELECT * 
FROM `students` 
WHERE `date_of_birth` 
LIKE '1990%';

SELECT * 
FROM `students` 
WHERE 
YEAR(`date_of_birth` ) = 1990; 



-- 2. Selezionare tutti i corsi che valgono più di 10 crediti (479)

SELECT * 
FROM `courses`
WHERE `cfu` > 10; 

-- 3. Selezionare tutti gli studenti che hanno più di 30 anni
SELECT * 
FROM `students`
WHERE `date_of_birth` 
BETWEEN "1992-01-01" 
AND '2021-12-31';


SELECT * 
FROM `students`
WHERE `date_of_birth` < DATE_SUB(CURENT_DATE(), INTERVAL 31 YEAR);


-- 4. Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di laurea (286)

SELECT * 
FROM `courses` 
WHERE `period` = "I semestre" 
AND `year` = "1";


-- 5. Selezionare tutti gli appelli d'esame che avvengono nel pomeriggio (dopo le 14) del 2020/06/10 (21)

SELECT * 
FROM `exams` 
WHERE `date` = "2020-06-10" 
AND `hour` >= "14:00";
-- *********************************   -<<< (28)?
SELECT * 
FROM `exams` 
WHERE `date` = "2020-06-10" 
AND `hour` 
BETWEEN "14:00" 
AND "24:00";


SELECT * 
FROM `exams` 
WHERE `date` = "2020-06-10" 
AND HOUR (`hour`) >= 14 

-- 6. Selezionare tutti i corsi di laurea magistrale (38)

SELECT * 
FROM `degrees` 
WHERE `level` = "magistrale";
-- ********************************* 
SELECT * 
FROM `degrees` 
WHERE `name` 
LIKE "%Magistrale%";


-- 7. Da quanti dipartimenti è composta l'università? (12)
SELECT COUNT(`id`)  AS 'department_count'
FROM `departments`; 

-- 8. Quanti sono gli insegnanti che non hanno un numero di telefono? (50)

SELECT COUNT(`id`) AS `phone_number`
FROM `teachers` 
WHERE `phone` 
IS NULL;