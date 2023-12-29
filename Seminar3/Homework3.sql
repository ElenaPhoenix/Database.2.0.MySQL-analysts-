# Таблицы с данными можно найти в файле Homework_3_tables.sql -- Эти таблицы взяты из презентации.
# Часть 1 Используемы таблицы: salespeople, customers, orders
# 1. Напишите запрос, который вывел бы таблицу со столбцами в следующем порядке: city, sname, snum, comm. (к первой или второй таблице, используя SELECT)
SELECT city, sname, snum, comn FROM SALESPEOPLE;
INSERT INTO `` (`city`,`sname`,`snum`,`comn`) VALUES ('London','Peel',1001,'0.12');
INSERT INTO `` (`city`,`sname`,`snum`,`comn`) VALUES ('San Jose','Serres',1002,'0.13');
INSERT INTO `` (`city`,`sname`,`snum`,`comn`) VALUES ('London','Motika',1004,'0.11');
INSERT INTO `` (`city`,`sname`,`snum`,`comn`) VALUES ('Barcelona','Rifkin',1007,'0.15');
INSERT INTO `` (`city`,`sname`,`snum`,`comn`) VALUES ('New York','Axelrod',1003,'0.10');
# 2. Напишите команду SELECT, которая вывела бы оценку(rating), сопровождаемую именем каждого заказчика в городе San Jose. (“заказчики”)
SELECT rating,cname FROM customers WHERE city = 'SanJose'
INSERT INTO `` (`rating`,`cname`) VALUES (200,'Liu');
INSERT INTO `` (`rating`,`cname`) VALUES (300,'Cisneros');
VALUES (300,'Cisneros');
# 3. Напишите запрос, который вывел бы значения snum всех продавцов из таблицы заказов без каких бы то ни было повторений. (уникальные значения в “snum“ “Продавцы”)
SELECT DISTINCT snum FROM orders
INSERT INTO `` (`snum`) VALUES (1007);
INSERT INTO `` (`snum`) VALUES (1001);
INSERT INTO `` (`snum`) VALUES (1004);
INSERT INTO `` (`snum`) VALUES (1002);
INSERT INTO `` (`snum`) VALUES (1003);
# 4. Напишите запрос, который бы выбирал заказчиков, чьи имена начинаются с буквы G. Используется оператор "LIKE": (“заказчики”) https://dev.mysql.com/doc/refman/8.0/en/string-comparisonfunctions.html
SELECT * FROM customers WHERE cname LIKE 'G%'
LIMIT 0, 1000

INSERT INTO `` (`cnum`,`cname`,`city`,`rating`,`snum`) VALUES (2002,'Giovanni','Rome',200,1003);
INSERT INTO `` (`cnum`,`cname`,`city`,`rating`,`snum`) VALUES (2004,'Grass','Berlin	',300,1002);
# 5. Напишите запрос, который может дать вам все заказы со значениями суммы выше чем $1,000. (“Заказы”, “amt” - сумма)
SELECT * FROM orders WHERE amt > 1000
LIMIT 0, 1000

INSERT INTO `` (`onum`,`amt`,`odate`,`cnum`,`snum`) VALUES (3002,'1900.10',10/03/1990,2007,1004);
INSERT INTO `` (`onum`,`amt`,`odate`,`cnum`,`snum`) VALUES (3005,'5160.45',10/03/1990,2003,1002);
INSERT INTO `` (`onum`,`amt`,`odate`,`cnum`,`snum`) VALUES (3006,'1098.16',10/03/1990,2008,1007);
INSERT INTO `` (`onum`,`amt`,`odate`,`cnum`,`snum`) VALUES (3009,'1713.23',10/04/1990,2002,1003);
INSERT INTO `` (`onum`,`amt`,`odate`,`cnum`,`snum`) VALUES (3008,'4723.00',10/05/1990,2006,1001);
INSERT INTO `` (`onum`,`amt`,`odate`,`cnum`,`snum`) VALUES (3010,'1309.95',10/05/1990,2004,1002);
INSERT INTO `` (`onum`,`amt`,`odate`,`cnum`,`snum`) VALUES (3011,'9891.88',10/05/1990,2006,1001);
# 6. Напишите запрос который выбрал бы наименьшую сумму заказа. (Из поля “amt” - сумма в таблице “Заказы” выбрать наименьшее значение)
SELECT * FROM orders ORDER BY amt ASC LIMIT 1

INSERT INTO `` (`onum`,`amt`,`odate`,`cnum`,`snum`) VALUES (3006,'1098.16',NULL,2008,1007);
# 7. Напишите запрос к таблице “Заказчики”, который может показать всех заказчиков, у которых рейтинг больше 100 и они находятся не в Риме.
SELECT * FROM customers WHERE rating > 100 AND city = 'Rome'
LIMIT 0, 1000

INSERT INTO `` (`cnum`,`cname`,`city`,`rating`,`snum`) VALUES (2002,'Giovanni','Rome',200,1003);

#Часть 2 Используемые таблицы: staff
# 1. Отсортируйте поле “зарплата” в порядке убывания и возрастания
select * from MyTable order by salary
LIMIT 0, 1000

INSERT INTO `` (`id`,`name`,`surname`,`speciality`,`seniority`,`salary`,`age`) VALUES (12,'Люся','Люськина','уборщица','10',10000,49);
INSERT INTO `` (`id`,`name`,`surname`,`speciality`,`seniority`,`salary`,`age`) VALUES (10,'Максим','Воронин','рабочий','2',11000,22);
INSERT INTO `` (`id`,`name`,`surname`,`speciality`,`seniority`,`salary`,`age`) VALUES (11,'Юра','Галкин','рабочий','3',12000,24);
INSERT INTO `` (`id`,`name`,`surname`,`speciality`,`seniority`,`salary`,`age`) VALUES (9,'Юра','Юркин','рабочий','5',15000,25);
INSERT INTO `` (`id`,`name`,`surname`,`speciality`,`seniority`,`salary`,`age`) VALUES (8,'Антон','Антонов','рабочий','8',19000,28);
INSERT INTO `` (`id`,`name`,`surname`,`speciality`,`seniority`,`salary`,`age`) VALUES (7,'Сидор','Сидоров','рабочий','10',20000,35);
INSERT INTO `` (`id`,`name`,`surname`,`speciality`,`seniority`,`salary`,`age`) VALUES (6,'Петр','Петров','рабочий','20',25000,40);
INSERT INTO `` (`id`,`name`,`surname`,`speciality`,`seniority`,`salary`,`age`) VALUES (5,'Иван','Иванов','рабочий','40',30000,59);
INSERT INTO `` (`id`,`name`,`surname`,`speciality`,`seniority`,`salary`,`age`) VALUES (4,'Саша','Сашкин','инженер','12',50000,35);
INSERT INTO `` (`id`,`name`,`surname`,`speciality`,`seniority`,`salary`,`age`) VALUES (2,'Петя','Петькин','начальник','8',70000,30);
INSERT INTO `` (`id`,`name`,`surname`,`speciality`,`seniority`,`salary`,`age`) VALUES (3,'Катя','Катькин','инженер','2',70000,25);
INSERT INTO `` (`id`,`name`,`surname`,`speciality`,`seniority`,`salary`,`age`) VALUES (1,'Вася','Васькин','начальник','40',100000,60);
# 2. Отсортируйте по возрастанию поле “Зарплата” и выведите 5 строк с наибольшей заработной платой (возможен подзапрос)
select * from MyTable order by salary desc limit 5

INSERT INTO `` (`id`,`name`,`surname`,`speciality`,`seniority`,`salary`,`age`) VALUES (1,'Вася','Васькин','начальник','40',100000,60);
INSERT INTO `` (`id`,`name`,`surname`,`speciality`,`seniority`,`salary`,`age`) VALUES (2,'Петя','Петькин','начальник','8',70000,30);
INSERT INTO `` (`id`,`name`,`surname`,`speciality`,`seniority`,`salary`,`age`) VALUES (3,'Катя','Катькин','инженер','2',70000,25);
INSERT INTO `` (`id`,`name`,`surname`,`speciality`,`seniority`,`salary`,`age`) VALUES (4,'Саша','Сашкин','инженер','12',50000,35);
INSERT INTO `` (`id`,`name`,`surname`,`speciality`,`seniority`,`salary`,`age`) VALUES (5,'Иван','Иванов','рабочий','40',30000,59);

# 3. Выполните группировку всех сотрудников по специальности , суммарная зарплата которых превышает 100000
select *
from MyTable
order by salary desc
LIMIT 0, 1000

INSERT INTO `` (`id`,`name`,`surname`,`speciality`,`seniority`,`salary`,`age`) VALUES (1,'Вася','Васькин','начальник','40',100000,60);
INSERT INTO `` (`id`,`name`,`surname`,`speciality`,`seniority`,`salary`,`age`) VALUES (2,'Петя','Петькин','начальник','8',70000,30);
INSERT INTO `` (`id`,`name`,`surname`,`speciality`,`seniority`,`salary`,`age`) VALUES (3,'Катя','Катькин','инженер','2',70000,25);
INSERT INTO `` (`id`,`name`,`surname`,`speciality`,`seniority`,`salary`,`age`) VALUES (4,'Саша','Сашкин','инженер','12',50000,35);
INSERT INTO `` (`id`,`name`,`surname`,`speciality`,`seniority`,`salary`,`age`) VALUES (5,'Иван','Иванов','рабочий','40',30000,59);
INSERT INTO `` (`id`,`name`,`surname`,`speciality`,`seniority`,`salary`,`age`) VALUES (6,'Петр','Петров','рабочий','20',25000,40);
INSERT INTO `` (`id`,`name`,`surname`,`speciality`,`seniority`,`salary`,`age`) VALUES (7,'Сидор','Сидоров','рабочий','10',20000,35);
INSERT INTO `` (`id`,`name`,`surname`,`speciality`,`seniority`,`salary`,`age`) VALUES (8,'Антон','Антонов','рабочий','8',19000,28);
INSERT INTO `` (`id`,`name`,`surname`,`speciality`,`seniority`,`salary`,`age`) VALUES (9,'Юра','Юркин','рабочий','5',15000,25);
INSERT INTO `` (`id`,`name`,`surname`,`speciality`,`seniority`,`salary`,`age`) VALUES (11,'Юра','Галкин','рабочий','3',12000,24);
INSERT INTO `` (`id`,`name`,`surname`,`speciality`,`seniority`,`salary`,`age`) VALUES (10,'Максим','Воронин','рабочий','2',11000,22);
INSERT INTO `` (`id`,`name`,`surname`,`speciality`,`seniority`,`salary`,`age`) VALUES (12,'Люся','Люськина','уборщица','10',10000,49);