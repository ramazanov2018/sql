/*Изменяем структуру  таблицы "person" после ALTER TABLE person перечислят необходимые изменения через запятой*/
ALTER TABLE person
    CHANGE name LastName VARCHAR (200) DEFAULT "Вася",
    MODIFY City DATE