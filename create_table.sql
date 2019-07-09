/*Создаем таблицу users*/
CREATE TABLE users (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
)

/*просмотр информацию о созданной таблице*/
SHOW CREATE TABLE users;

/*Копируем структуру  таблицы "users" в таблицу "person"*/
CREATE  TABLE person LIKE users

/*Создаем таблицу books*/
CREATE TABLE books(
    id MEDIUMINT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR (200) NOT NULL,
    author VARCHAR (200) NOT NULL,
    isbn VARCHAR(22),
    publisher VARCHAR(40),
    pages SMALLINT,
    weight SMALLINT,
    cover ENUM("","мягкая","твёрдая"),
    pub YEAR,
    electronic VARCHAR(20)
) ENGINE InnoDB;