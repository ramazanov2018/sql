/*Удаление всех данных из таблицы person которые совпадает PersonID*/
DELETE FROM person
    WHERE PersonID = 3

/*Удаление одного которое совпадает PersonID*/
DELETE FROM person
    WHERE PersonID = 6 LIMIT 1