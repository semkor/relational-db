-- cоздаем таблицу MOVIE
INSERT INTO MOVIE
VALUES(100,'ПИЛА 1','TRAVOLT', ('2022'), 70);

INSERT INTO MOVIE
VALUES(101,'ПИЛА 2','TRAVOLT', ('2018'), 120);

INSERT INTO MOVIE
VALUES(102,'ПИЛА 3','TRAVOLT', ('2016'), 119);

INSERT INTO MOVIE
VALUES(103,'ТИХИЙ ЛЕС','TRAVOLT', ('2017'), 124);

INSERT INTO MOVIE
VALUES(104,'ВЕСЕЛАЯ ЖИЗНЬ','TRAVOLT', ('2015'), 102);

INSERT INTO MOVIE
VALUES(105,'ТЯЖЕЛЫЙ','TRAVOLT', ('2012'), 184);

INSERT INTO MOVIE
VALUES(106,'РАБОТЯГА','RICH', ('2018'), 120);

INSERT INTO MOVIE
VALUES(107,'КРУИЗ','RICH', ('2016'), 119);

INSERT INTO MOVIE
VALUES(108,'ВСЕЛЕННАЯ','RICH', ('2017'), 124);

INSERT INTO MOVIE
VALUES(109,'УТРО','KLARK', ('2015'), 102);

INSERT INTO MOVIE
VALUES(110,'ЛЕС','KLARK', ('2012'), 184);


---- создаем таблицу MOVIE_STAT
INSERT INTO MOVIE_STAT
VALUES(100,2.2,152484, 98754);

INSERT INTO MOVIE_STAT
VALUES(101, 1.2, 15871, 278575);

INSERT INTO MOVIE_STAT
VALUES(102,10.0, 15871, 278575);

INSERT INTO MOVIE_STAT
VALUES(103,7.25, 15971, 298575);

INSERT INTO MOVIE_STAT
VALUES(104,8.745, 17971, 298565);

INSERT INTO MOVIE_STAT
VALUES(105,9.3, 17971, 298565);

INSERT INTO MOVIE_STAT
VALUES(106,9.3, 17971, 298565);

INSERT INTO MOVIE_STAT
VALUES(107,9.3, 17971, 498565);

INSERT INTO MOVIE_STAT
VALUES(108,8.3, 18971, 598565);

INSERT INTO MOVIE_STAT
VALUES(109,8.3, 19971, 498565);

INSERT INTO MOVIE_STAT
VALUES(110,8.3, 19971, 498565);


-- количество фильмов снятых каждым режисером
SELECT DIRECTOR,COUNT(DIRECTOR) FROM MOVIE
GROUP BY DIRECTOR;

-- количество сборов для каждого режисера на внутреннем рынке (нужно через совпадения, потом считать
SELECT MOVIE.DIRECTOR, SUM(DOMESTIC_SALES) FROM MOVIE,MOVIE_STAT
WHERE MOVIE_STAT.MOVIE_ID = MOVIE.ID
GROUP BY MOVIE.DIRECTOR;

-- количество сборов для каждого режисера на внешнем рынке
SELECT MOVIE.DIRECTOR, SUM(INTERNATIONAL_SALES) FROM MOVIE,MOVIE_STAT
WHERE MOVIE_STAT.MOVIE_ID = MOVIE.ID
GROUP BY MOVIE.DIRECTOR;