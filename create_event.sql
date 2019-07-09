
/*создаем событие superEvent(каждый 10 секунд будет создат новый элемент)*/
CREATE EVENT superEvent
    ON SCHEDULE EVERY 10 SECOND
    DO INSERT INTO person (LastName,City)
    VALUES (RAND(),NOW())

/*просмотр информацию о созданной событии*/
SHOW CREATE EVENT superEvent;

/*Просмотр настройки*/
SHOW VARIABLES LIKE '%SCHEDULE%';

/*Меняем значение переменной "event_scheduler= 1" без которых не срабатываеть событии*/
SET GLOBAL event_scheduler = 1;

/*Отключение событий*/
ALTER EVENT superEvent DISABLE;

/*Удаление события superEvent*/
DROP EVENT IF EXISTS superEvent