-- 1. Создать таблицу student с полями student_id serial, first_name varchar, last_name varchar, birthday date, phone varchar
CREATE TABLE student
(
    student_id serial PRIMARY KEY,
    first_name varchar(30),
    last_name varchar(30),
    birthday date,
    phone varchar(11)
)

-- 2. Добавить в таблицу student колонку middle_name varchar
ALTER TABLE student ADD COLUMN middle_name varchar(15)

-- 3. Удалить колонку middle_name
ALTER TABLE student DROP COLUMN middle_name

-- 4. Переименовать колонку birthday в birth_date
ALTER TABLE student RENAME COLUMN birthday TO birth_date

-- 5. Изменить тип данных колонки phone на varchar(32)
ALTER TABLE student ALTER COLUMN phone SET DATA TYPE varchar(32)

-- 6. Вставить три любых записи с автогенерацией идентификатора
INSERT INTO student (first_name, last_name, birth_date, phone)
VALUES ('Владислав', 'Хетагуров', '25.06.1995', '890371054038');
INSERT INTO student (first_name, last_name, birthday, phone)
VALUES ('Антон', 'Лесников', '01.03.2000', '89057653412');
INSERT INTO student (first_name, last_name, birthday, phone)
VALUES ('Дарья', 'Хорошева', '03.03.1993', '89027823460');

-- 7. Удалить все данные из таблицы со сбросом идентификатор в исходное состояние
TRUNCATE TABLE student RESTART IDENTITY
