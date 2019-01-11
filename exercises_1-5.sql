--exercise 1
SELECT title FROM movies;

SELECT director FROM movies;

SELECT title, director FROM movies; 

SELECT title, year FROM movies; 

SELECT * FROM movies; 
--exercise 2
SELECT id, title FROM movies 
WHERE id = 6;

SELECT year, title FROM movies 
WHERE year Between 2000 AND 2010;

SELECT year, title FROM movies 
WHERE year NOT Between 2000 AND 2010;

SELECT * FROM movies 
WHERE id BETWEEN 1 AND 5;

--exercise 3 
SELECT title, director FROM movies 
WHERE title LIKE "Toy Story%";

SELECT title, director FROM movies 
WHERE title LIKE "John Lasseter";

SELECT title, director FROM movies 
WHERE director != "John Lasseter";

SELECT * FROM movies 
WHERE title LIKE "WALL-_";

--exercise 4
SELECT DISTINCT director FROM movies
ORDER BY director ASC;

SELECT title, year FROM movies
ORDER BY year DESC
LIMIT 4;

SELECT title FROM movies
ORDER BY title ASC
LIMIT 5;

SELECT title FROM movies
ORDER BY title ASC
LIMIT 5 OFFSET 5;

--exercise 5
SELECT city, population FROM north_american_cities
WHERE country = "Canada";

SELECT city, latitude FROM north_american_cities
WHERE country = "United States"
ORDER BY latitude DESC;

SELECT city, longitude FROM north_american_cities
WHERE longitude < -87.629798
ORDER BY longitude ASC;

SELECT city, population FROM north_american_cities
WHERE country LIKE "Mexico"
ORDER BY population DESC
LIMIT 2;

SELECT city, population FROM north_american_cities
WHERE country LIKE "United States"
ORDER BY population DESC
LIMIT 2 OFFSET 2;
 