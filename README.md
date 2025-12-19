Інструкція з розгортання та запуску проєкту

Клонування проєкту з GitHub

1\. Відкрий Git Bash

2\.	Перейди в папку, де хочеш зберігати проєкт:

cd Назва папки

3\.	Клонуй репозиторій:

git clone https://github.com/Elementary737/transport\_company.git

4\.	Зайди в папку проєкту:

cd transport\_company

5\.	Перевір структуру:

ls

Ти маєш побачити:

main.py

test\_go.go

transport\_company.sql

.env

README.md

Системні вимоги

Для коректної роботи проєкту необхідно встановити:

1\)	MySQL Server (версія 8.0 або сумісна)

2\)	Python версії 3.9 або новішої

3\)	Go версії 1.20 або новішої

Підготовка бази даних

База даних надається у вигляді експортованого SQL-файлу transport\_company.sql. 

Для проведення експерименту необхідно імпортувати цей файл у MySQL без внесення змін у структуру таблиць або тестові дані.

Імпорт через MySQL Workbench

1\)	Запустити MySQL Workbench.

2\)	Підключитися до локального MySQL-сервера.

3\)	У меню вибрати Server → Data Import.

4\)	Обрати Import from Self-Contained File.

5\)	Вказати файл transport\_company.sql.

6\)	У полі Default Schema вказати transport\_company.

7\)	Натиснути Start Import.

Налаштування підключення

Параметри підключення зберігаються у файлі .env., вам потрібно змінити їх на ваші

DB\_HOST=127.0.0.1

DB\_PORT=3306

DB\_USER=root

DB\_PASSWORD=your\_password

DB\_NAME=transport\_company

Запуск мовою Python

Перед запуском програми необхідно встановити необхідні бібліотеки:

pip install mysql-connector-python python-dotenv

Для запуску Python-версії тесту виконується команда:

python main.py

Програма виконує фіксований набір SQL-запитів та виводить мінімальний, середній і максимальний час виконання.

Запуск Go у GitBash

У каталозі проєкту виконуються команди:

go mod init db\_test

go get github.com/go-sql-driver/mysql

go get github.com/joho/godotenv

Для запуску Go-версії тесту виконується команда:

go run test\_go.go

Програма мовою Go виконує той самий набір SQL-запитів над тією ж базою даних і виводить статистику часу виконання.



