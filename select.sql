/*Из таблицы country, в базе world, выбираем 13 сортированный по полю Code*/
SELECT * FROM world.country
    ORDER BY Code DESC LIMIT 13;


/*Из таблицы country, в базе world, выбираем элементы где в поле Continent имеется слово 'Africa'*/
SELECT * FROM world.country
    WHERE Continent LIKE '%Africa%'
    ORDER BY Code DESC;


/*ОбЪединение таблиц INNER JOIN, RIGHT JOIN, LEFT JOIN FULL JOIN*/
SELECT * FROM city
    INNER JOIN country ON CountryCode = Code LIMIT 5;


/*ОбЪединение запросов UNION, UNION ALL, UNION DISTINCT*/
SELECT name FROM city LIMIT 5
UNION
SELECT Name FROM country LIMIT 5;


/*----ПОДЗАПРОСЫ----*/
SELECT name FROM city
    WHERE countryCode IN
    (
    SELECT Code FROM country
        WHERE Name LIKE '%gen%' LIMIT 1
    )



/*Выбираеть больше любого из (SELECT 1e6. SELECT 2e6)*/
SELECT name, population FROM city
    WHERE population > ANY (
    SELECT 1e6
    UNION
    SELECT 2e6
    );


/*Выбираеть меньше любого из (SELECT 1e6. SELECT 2e6)*/
SELECT name, population FROM city
    WHERE population > ANY (
    SELECT 1e6
    UNION
    SELECT 2e6
    );


/*----ПОДЗАПРОСЫ----*/