## SELECT basics

## Modify it to show population of Germany
SELECT population FROM world
  WHERE name = 'Germany';

## Show the name and the population for 'Sweden', 'Norway' and 'Denmark'.
SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark'); 