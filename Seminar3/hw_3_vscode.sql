-- ДЛЯ ПОДКЛЮЧЕНИЯ К VSCODE
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'passw';


-- СОЗДАНИЕ НОВОГО ПОЛЬЗОВАТЕЛЯ
Enter password: *************
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 68
Server version: 8.0.33 MySQL Community Server - GPL

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> CREATE USER 'newuser'@'localhost' IDENTIFIED BY '123456';
Query OK, 0 rows affected (0.02 sec)

mysql> GRANT ALL PRIVILEGES ON *.* TO 'newuser'@'localhost';
Query OK, 0 rows affected (0.01 sec)

mysql> FLUSH PRIVILEGES;
Query OK, 0 rows affected (0.01 sec)

mysql>