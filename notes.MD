CREATE EXTENSION tablefunc;

SELECT * FROM crosstab('select country, year, population from country_population') AS ct(country varchar, "1980" int, "1981" int);
