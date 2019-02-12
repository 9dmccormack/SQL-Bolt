--exercise 6

SELECT title, domestic_sales, international_sales 
FROM movies
  JOIN boxoffice
    ON movies.id = boxoffice.movie_id;

SELECT title, domestic_sales, international_sales
FROM movies
  JOIN boxoffice
    ON movies.id = boxoffice.movie_id
WHERE international_sales > domestic_sales;

SELECT title, rating
FROM movies
  JOIN boxoffice
    ON movies.id = boxoffice.movie_id
ORDER BY rating DESC;

--exercise 7
SELECT DISTINCT building FROM employees;

SELECT * FROM buildings;

SELECT DISTINCT building_name, role 
FROM buildings 
  LEFT JOIN employees
    ON building_name = building;

--exercise 8
SELECT name, role FROM employees
WHERE building IS NULL;

SELECT DISTINCT building_name
FROM buildings 
  LEFT JOIN employees
    ON building_name = building
WHERE role IS NULL;

--exercise 9
SELECT title, (domestic_sales + international_sales) / 1000000 AS gross_sales_millions
FROM movies
  JOIN boxoffice
    ON movies.id = boxoffice.movie_id;

SELECT title, rating * 10 AS rating_percent
FROM movies
  JOIN boxoffice
    ON movies.id = boxoffice.movie_id;

SELECT title, year
FROM movies
WHERE year % 2 = 0;

--exercise 10
SELECT MAX(years_employed) as Max_years_employed
FROM employees;

SELECT role, AVG(years_employed) as Average_years_employed
FROM employees
GROUP BY role;

SELECT building, SUM(years_employed) as Total_years_employed
FROM employees
GROUP BY building;

--exercise 11
SELECT role, COUNT(*) as Number_of_artists
FROM employees
WHERE role = "Artist";

SELECT role, COUNT(*)
FROM employees
GROUP BY role;

SELECT role, SUM(years_employed)
FROM employees
GROUP BY role
HAVING role = "Engineer";

--exercise 12
SELECT director, COUNT(id) as Num_movies_directed
FROM movies
GROUP BY director;

SELECT director, SUM(domestic_sales + international_sales) as Cumulative_sales_from_all_movies
FROM movies
    INNER JOIN boxoffice
        ON movies.id = boxoffice.movie_id
GROUP BY director;
--exercise 13
INSERT INTO movies VALUES (4, "Toy Story 4", "El Directore", 2015, 90);

INSERT INTO boxoffice VALUES (4, 8.7, 340000000, 270000000);
--exercise 14
UPDATE movies
SET director = "John Lasseter"
WHERE id = 2;

UPDATE movies
SET year = 1999
WHERE id = 3;

UPDATE movies
SET title = "Toy Story 3", director = "Lee Unkrich"
WHERE id = 11;
--exercise 15
DELETE FROM movies
where year < 2005;

DELETE FROM movies
where director = "Andrew Stanton";
--exercise 16
CREATE TABLE Database (
    Name TEXT,
    Version FLOAT,
    Download_count INTEGER
);
--exercise 17
ALTER TABLE Movies
  ADD COLUMN Aspect_ratio FLOAT DEFAULT 2.39;

ALTER TABLE Movies
  ADD COLUMN Language TEXT DEFAULT "English";
--exercise 18
DROP TABLE Movies;

DROP TABLE BoxOffice;