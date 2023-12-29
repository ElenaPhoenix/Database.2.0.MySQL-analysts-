DROP DATABASE homework5; 
CREATE DATABASE homework5; 
USE homework5;

CREATE TABLE cars ( id INT NOT NULL PRIMARY KEY, name VARCHAR(45), cost INT );

INSERT cars 
VALUES (1, "Audi", 52642), (2, "Mercedes", 57127 ), (3, "Skoda", 9000 ), (4, "Volvo", 29000), (5, "Bentley", 350000), (6, "Citroen ", 21000 ), (7, "Hummer", 41400), (8, "Volkswagen ", 21600);
# 1. Создайте представление, в которое попадут автомобили стоимостью до 25 000 долларов CREATE VIEW CheapCars AS SELECT Name FROM Cars WHERE Cost<25000;
SELECT * FROM cars_view;
# 2. Изменить в существующем представлении порог для стоимости: пусть цена будет до 30 000 долларов (используя оператор ALTER VIEW) ALTER VIEW CheapCars AS SELECT Name FROM CarsWHERE Cost<30000;
SELECT * FROM cars_view;
# 3. Создайте представление, в котором будут только автомобили марки “Шкода” и “Ауди” (аналогично) 
SELECT * FROM cars_view2;
# Вывести название и цену для всех анализов, которые продавались 5 февраля 2020 и всю следующую неделю. Есть таблица анализов Analysis: an_id — ID анализа; an_name — название анализа; an_cost — себестоимость анализа; an_price — розничная цена анализа; an_group — группа анализов. Есть таблица групп анализов Groups: gr_id — ID группы; gr_name — название группы; gr_temp — температурный режим хранения. Есть таблица заказов Orders: ord_id — ID заказа; ord_datetime — дата и время заказа; ord_an — ID анализа.
SELECT an_name, an_price, ord_datetime 
FROM Analysis JOIN Orders 
ON Analysis.an_id = Orders.ord_id 
AND Orders.ord_datetime >= '2020-02-05' 
AND Orders.ord_datetime <= '2020-02-12';