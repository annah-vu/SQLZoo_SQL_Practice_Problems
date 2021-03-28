## SELECT basics

## Modify it to show population of Germany
SELECT population FROM world
  WHERE name = 'Germany';

## Show the name and the population for 'Sweden', 'Norway' and 'Denmark'.
SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark'); 

/* Which countries are not too small and not too big? 
BETWEEN allows range checking (range specified is inclusive of boundary values). 
The example below shows countries with an area of 250,000-300,000 sq. km. 
Modify it to show the country and the area for countries with an area between 200,000 and 250,000. */
SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000






##SELECT QUIZ
/* 1. Select the code which produces this table
name	population
Bahrain	1234571
Swaziland	1220000
Timor-Leste	1066409
*/

SELECT name, population
  FROM world
 WHERE population BETWEEN 1000000 AND 1250000

 /*2. Pick the result you would obtain from this code:
      SELECT name, population
      FROM world
      WHERE name LIKE 'Al%'

      Answer: 
Table-E
Albania	3200000
Algeria	32900000

*/

## 3. Select the code which shows the countries that end in A or L
SELECT name FROM world
 WHERE name LIKE '%a' OR name LIKE '%l'

 /* 4. Pick the result from the query
SELECT name,length(name)
FROM world
WHERE length(name)=5 and continent='Europe'

Answer:
name length(name)
Italy	 5
Malta	 5
Spain	 5 
*/

/* 5. Here are the first few rows of the world table:
name	region	area	population	gdp
Afghanistan	South Asia	652225	26000000	
Albania	Europe	28728	3200000	6656000000
Algeria	Middle East	2400000	32900000	75012000000
Andorra	Europe	468	64000	
...
Pick the result you would obtain from this code:
SELECT name, area*2 FROM world WHERE population = 64000

Answer: Andorra 936 */

 /* 6.) Select the code that would show the countries with an area larger than 50000 
 and a population smaller than 10000000 */
SELECT name, area, population
  FROM world
 WHERE area > 50000 AND population < 10000000

 ## 7. Select the code that shows the population density of China, Australia, Nigeria and France
 SELECT name, population/area
  FROM world
 WHERE name IN ('China', 'Nigeria', 'France', 'Australia');
 ## because population density is population/area 






 ## Select From World 
 /*  2.) Show the name for the countries that have a population of at least 200 million. 
 200 million is 200000000, there are eight zeros. */
SELECT name
  FROM world
 WHERE population > 200000000

## 3.) Give the name and the per capita GDP for those countries with a population of at least 200 million.
select name, gdp/population
from world
where population >= 200000000

/* 4.) Show the name and population in millions 
for the countries of the continent 'South America'. Divide the population by 1000000 
to get population in millions.
*/
select name, population/1000000
from world
where continent like 'South America' 

## 5.) Show the name and population for France, Germany, Italy
select name, population
from world
where name in ('France', 'Germany', 'Italy')

## 6.) Show the countries which have a name that includes the word 'United'
select name 
from world
where name like '%United%'

/* 7.) Two ways to be big: A country is big if it has an area of more than 3 million sq km 
or it has a population of more than 250 million.
Show the countries that are big by area or big by population. Show name, population and area. */
select name, population, area
from world
where area > 3000000
or population > 250000000

/* 8.) Exclusive OR (XOR). Show the countries that are big by area (more than 3 million) 
or big by population (more than 250 million) but not both. Show name, population and area. */
select name, population, area
from world
where (area > 3000000 or population > 250000000) and not (area > 3000000 and population > 250000000) 

/* 9.) Show the name and population in millions and the GDP in billions for the countries of the continent 'South America'. 
Use the ROUND function to show the values to two decimal places. */
select name,
round(population/1000000,2),
round(gdp/1000000000,2)
from world
where continent like 'South America'

## if it's in the select, it makes its own column so you don't have to make them. 

/* 10.) Show the name and per-capita GDP for those countries with
 a GDP of at least one trillion (1000000000000; that is 12 zeros). 
 Round this value (per capita gdp) to the nearest 1000. */
select name,
round (gdp/population,-3)
from world 
where gdp > 1000000000000

/* 11.) Show the name and capital where the name and the capital have the same number of characters. */
SELECT name, capital
  FROM world
 WHERE len(name) = len(capital)

 /* 12.) Show the name and the capital where the first letters of each match. 
 Don't include countries where the name and the capital are the same word.
You can use the function LEFT to isolate the first character.
You can use <> as the NOT EQUALS operator. */
select name, capital
from world
where left(name,1) = left(capital,1)
and name <> capital

/* 13.) Equatorial Guinea and Dominican Republic have all of the vowels (a e i o u) in the name. 
They don't count because they have more than one word in the name.
Find the country that has all the vowels and no spaces in its name. */
select name
from world
where name like '%a%'
and name like '%e%'
and name like '%i%'
and name like '%o%'
and name like '%u%'
and name not like '% %'



