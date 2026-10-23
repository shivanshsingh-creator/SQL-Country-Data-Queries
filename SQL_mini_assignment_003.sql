-- SQL assignmnet
-- 1. Display the name of Name, Continent and popluation of all countries located in asia

SELECT Name, Continent, Population FROM country WHERE Continent = "ASIA";

-- 2. Display the name, popluation and life expectancy of all countries
-- SOrt the population by descending order

select name, population, lifeexpectancy 
FROM country
order by Population desc;


-- Display the name, continent and Population of countries that:
-- Brlong to europe and have popuplation greater than 20,000,000
-- SOrt the result alphabetically by country name

SELECT name, continent, population 
FROM country
WHERE Continent = 'Europe' AND Population>'20,000,000'
ORDER BY name;

-- Display the name, Region and Surface area of countries that are located in Nor or south america:
-- SOrt the result by regiuon

SELECT Name, Region, surfacearea FROM Country
WHERE REGION='North America' OR REGION ='South America'
ORDER BY region;

-- Display the name, continent and Population of countries that are not located in africa:
-- SOrt the result alphabetically by country name

SELECT Name, continent, population FROM country
where Continent != 'africa'
order by Name;


-- Display the name, population and government form of countries whose populaition is between
-- 10,000,000 and 50,000,000:
-- SOrt the result population

select name, population, governmentform from country
where population between 10000000 and 50000000
order by Population;

-- Display the name, capital and population of countries whose continent is one of the following:
-- asia, europe, oceania

SELECT Name, Capital, Population, Continent 
FROM country
WHERE Continent IN ('Asia', 'Europe', 'Oceania');

-- Display the name, region and population of countries whose name starts with the letter 'A';

SELECT Name, region, Population
FROM country
where name like 'a%';

-- Display the name, continent, population and lifeExpectancy of countries that:
-- Asia or europe;
-- Population > 50000000;
-- lifeExpectancy < 70;
-- sort the results by population in descending order.

select name, continent, population, LifeExpectancy from country
where Continent in ('asia', 'europe') and Population > 50000000 and LifeExpectancy < 70
order by Population desc;

-- Display the name, continent, population and governmentform of countries that:
-- are not in africa;
-- Population between  5000000 and 30000000;
-- name contain 'land';
-- sort the results by alphabetically.

select name, continent, population, governmentform from country
where Continent != 'africa' and 
name like '%land%' and
Population between 5000000 and 30000000 
order by name;


