SELECT *
FROM city
WHERE countrycode='USA' AND population > 100000

SELECT name
FROM City
WHERE CountryCode='USA' AND Population > 120000;

SELECT * FROM city
SELECT * FROM city WHERE id=1661;
SELECT * FROM city WHERE COUNTRYCODE='JPN';
SELECT name FROM city WHERE COUNTRYCODE='JPN';

SELECT city, state FROM STATION;
SELECT DISTINCT city FROM STATION where id % 2 = 0;


SELECT count(*) as N FROM STATION;

-- SELECT count(*) - count(DISTINCT city) AS "N - N'" FROM city;

SET @N = (SELECT count(city) FROM STATION);
SET @M = (SELECT count(DISTINCT city) FROM STATION);
SELECT @N - @M


SELECT max(city), length(max(city)) FROM station ORDER BY city;
SELECT min(city), length(max(city)) FROM station ORDER BY city;

SELECT city, length(city) FROM station ORDER BY city ASC  LIMIT 1;
SELECT city, length(city) FROM station ORDER BY city DESC LIMIT 1;

SELECT `city` FROM `station` WHERE `city` REGEXP "[aeiou].*";

SELECT DISTINCT `city` FROM `station` WHERE `city` REGEXP "^[aeiou]|[aeiou]$";
SELECT DISTINCT `city` FROM `station` WHERE `city` REGEXP "^[aeiou]|[aeiou]$";

SELECT DISTINCT `city` FROM `station` WHERE `city` REGEXP "^[^aeiou].*";

SELECT DISTINCT `city` FROM `station` WHERE `city` REGEXP "[^aeiou]$";

SELECT DISTINCT `city` FROM `station` WHERE `city` REGEXP "^[^aeiou].*[^aeiou]$";

SELECT `name` FROM `students` WHERE `marks` > 75 ORDER BY SUBSTRING(`name`, -3), `id`;

SELECT `name` FROM `employee` ORDER BY `name`;

-- salary-of-employees
SELECT `name` FROM `employee` WHERE `salary` > 2000 AND `months` < 10 ORDER BY `employee_id`;

SELECT ROUND(SUM(`lat_n`), 2) FROM `station`;
SELECT ROUND(SUM(`long_w`), 2) FROM `station`;

SELECT ROUND(SUM(`lat_n`), 2), ROUND(SUM(`long_w`), 2) FROM `station`;

SELECT TRUNCATE(SUM(`LAT_N`), 4) FROM `station` WHERE `LAT_N` > 38.7880 AND `LAT_N` < 137.2345;

SELECT TRUNCATE(MAX(`LAT_N`), 4) FROM `station` WHERE `LAT_N` < 137.2345;

SELECT ROUND(`LONG_W`, 4) FROM `station` WHERE `LAT_N` < 137.2345 ORDER BY `LAT_N` DESC LIMIT 1;

SELECT ROUND(MIN(`LAT_N`), 4) FROM `station` WHERE `LAT_N` > 38.7780;

SELECT ROUND(`LONG_W`, 4) FROM `station` WHERE `LAT_N` > 38.7780 ORDER BY `LAT_N` LIMIT 1;

SELECT ROUND(ABS(MIN(`LAT_N`) - MAX(`LAT_N`)) + ABS(MIN(`LONG_W`) - MAX(`LONG_W`)), 4) FROM `station`;

SELECT ROUND(SQRT(POW(MIN(`LAT_N`) - MAX(`LAT_N`), 2) + POW(MIN(`LONG_W`) - MAX(`LONG_W`), 2)), 4) FROM `station`;

-- WRONG
SET @c = SELECT COUNT(`id`) FROM `station`;
IF(@c DIV 2 = 0,
(SELECT AVG(`LAT_N`) FROM `station` ORDER BY `LAT_N` LIMIT (@c DIV 2), 2),
(SELECT AVG(`LAT_N`) FROM `station` ORDER BY `LAT_N` LIMIT (@c DIV 2 + 1), 1))
-- SELECT AVG(`LAT_N`) FROM `station` ORDER BY `LAT_N` LIMIT

Select round(S.LAT_N, 4) median from station S where (select count(Lat_N) from station where Lat_N < S.LAT_N)
                                                   = (select count(Lat_N) from station where Lat_N > S.LAT_N);


SELECT city.`name` FROM `city` INNER JOIN `country` WHERE `city`.`countryCode` = `country`.`code` AND `CONTINENT`="Africa";

SELECT COUNTRY.Continent, FLOOR(AVG(CITY.population)) FROM CITY, COUNTRY WHERE CITY.CountryCode = COUNTRY.Code GROUP BY COUNTRY.Continent;

(SELECT name, grade, marks FROM students, grades WHERE marks >= min_mark and marks <= max_mark AND grade >= 8 ORDER BY grade DESC, name)
UNION
(SELECT name, grade, marks FROM students, grades WHERE marks >= min_mark and marks <= max_mark AND grade < 8 ORDER BY grade DESC, marks);

SELECT name, grade, marks FROM students, grades WHERE marks >= min_mark and marks <= max_mark AND grade >= 8 ORDER BY grade DESC, name;
SELECT name, grade, marks FROM students, grades WHERE marks >= min_mark and marks <= max_mark AND grade < 8 ORDER BY grade DESC, marks;

-- END un-cleared

-- full-score
SELECT H.hacker_id, H.name FROM Hackers H
JOIN Submissions S ON H.hacker_id=S.hacker_id
JOIN Challenges C ON S.challenge_id=C.challenge_id
JOIN difficulty D ON c.difficulty_level=D.difficulty_level
WHERE S.score=D.score GROUP BY h.hacker_id, h.name HAVING COUNT(*) >= 2
ORDER BY COUNT(*) DESC, h.hacker_id;

