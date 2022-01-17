-- 1. Contare quanti iscritti ci sono stati ogni anno
SELECT YEAR(`enrolment_date`) AS `year`, COUNT(`id`) AS `students_count` 
FROM `students` 
GROUP BY `year`; 
-- 2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT COUNT(`id`) AS `teachers_count`,`office_address` 
FROM `teachers` 
GROUP BY `office_address`;  
-- 3. Calcolare la media dei voti di ogni appello d'esame
SELECT COUNT(`exam_id`) AS `exam_count`,SUM(`vote`) AS `averege` 
FROM `exam_student` 
GROUP BY `exam_id`;
-- 4. Contare quanti corsi di laurea ci sono per ogni dipartimento

SELECT COUNT(`department_id`) AS `department_degrees` 
FROM `degrees` 
GROUP BY `department_id`;


-- ________________________________________________________________________________________
-- 1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT `degrees`.`id`,`degrees`.`name` AS `course_name`, `students`.* 
FROM `degrees` 
INNER JOIN `students` ON `degrees`.`id` = `students`.`degree_id` 
WHERE `degrees`.`name` = "Corso di Laurea in Economia" 


-- 2. Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze
SELECT `departments`.`name` AS `depart_name`,`departments`.`head_of_department` AS `head_of_depart`, `degrees`.`name` AS `cpurse_name`, `degrees`.`level`, `degrees`.`email` 
FROM `departments` 
INNER JOIN `degrees` ON `departments`.`id` = `degrees`.`department_id` 
WHERE `departments`.name = "Dipartimento di Neuroscienze" 


-- 3. Selezionare tutti i Corsi in cui insegna Fulvio Amato (id=44)
SELECT `teachers`.`name`,`teachers`.`surname`,`teachers`.`id`, `courses`.`id` AS `courses_id`,`courses`.`name`,`courses`.`description` 
FROM `course_teacher` 
INNER JOIN `teachers` ON `teachers`.`id` = `course_teacher`.`teacher_id` 
INNER JOIN `courses` ON `courses`.`id` = `course_teacher`.`course_id` 
WHERE `teachers`.`name` = "Fulvio" AND `teachers`.`surname` = "Amato" 


-- 4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il
-- relativo dipartimento, in ordine alfabetico per cognome e nome

SELECT `students`.`id` AS `student_id`, `students`.`name` AS `student_name`, `students`.`surname` AS `student_surname`, `departments`.`name` AS `departments_name`, `degrees`.`name` AS `degrees_name` 
FROM `departments` 
INNER JOIN `degrees` ON `departments`.`id` = `degrees`.`department_id` 
INNER JOIN `students` ON `degrees`.`id` = `students`.`degree_id` 
ORDER BY `students`.`name` ASC, `students`.`surname` ASC 