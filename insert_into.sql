/*Заполняем определенные поля таблицы*/
INSERT INTO users(PersonID, LastName)
    VALUES (1 "Kevin");


/*Вводим сразу несколько значений*/
INSERT INTO users
    VALUES
    (2, "Andrey", "Karlov", "g.Moscov", "g.Moscov"),
    (3, "Alexandr", "Ivanov", "g.Saratov", "g.Saratov"),



/* заплняем таблицу person с данными из таблицы users где PersonID > 4*/
INSERT INTO person (PersonID, LastName, FirstName, Address)
        SELECT PersonID, LastName, FirstName, Address
        FROM users
        WHERE PersonID > 4