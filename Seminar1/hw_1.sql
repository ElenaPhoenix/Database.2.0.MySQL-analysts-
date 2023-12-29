-- 1. Создаем БД
DROP DATABASE IF EXISTS hw_1; -- Удаляем БД, если она существует 
CREATE DATABASE IF NOT EXISTS hw_1; -- Создаем БД lesson3, если ее раньше не было

-- 2. Выбираем конкретную БД
USE hw_1;
-- Можно и без USE
-- SELECT * FROM hw_1.product;


-- 1
-- Сккрипт создания таблицы
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `productName` varchar(45) NOT NULL,
  `manufacturer` varchar(45) DEFAULT 'NoName',
  `productCount` int DEFAULT '0',
  `price` int DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `productName_UNIQUE` (`productName`)
);

-- Вставка данных
INSERT INTO product
  (productName, manufacturer, productCount, price)
VALUES
  ('iPhone X', 'Apple', 3, 76000),
  ('iPhone 8', 'Apple', 2, 51000),
  ('Galaxy S9', 'Samsung', 2, 56000),
  ('Galaxy S8', 'Samsung', 1, 41000),
  ('P20 Pro', 'Huawei', 5, 36000);
    
-- Вывод всех записей
SELECT * FROM product;


-- 2
-- Вывести название, производителя и цену для товаров, количество которых превышает 2
SELECT productName, manufacturer, price, productCount 
  FROM product
WHERE productCount > 2;

-- 3
-- Вывеcти весь ассортимент товаров марки “Samsung”
SELECT *
  FROM product
WHERE manufacturer = 'Samsung';
-- 4.1 и 4.2 По аналогии с 4.4 Проще без регулярок
-- WHERE productName LIKE '%iPhone%';
-- WHERE productName LIKE '%Samsung%';


-- 4.3. Товары, в которых есть ЦИФРЫ
SELECT *
  FROM product
WHERE productName REGEXP '[0-9]';


-- 4.4. Товары, в которых есть ЦИФРА "8", тут проще без регулятки...
SELECT *
  FROM product
WHERE productName LIKE '%8%';