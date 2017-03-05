/*NOTE: Since it is very hard to write a pure SQL project I 
 * thought to upload this code up. I have done this project 
 * after I completed the SQL course at codecademy.com
 * In this project I wrote queries to retrive information from the 'movies' table */

/*Return all of the unique years in the movies table.*/
SELECT DISTINCT year FROM movies; 

/*Return all of the unique years in the movies table sorted from oldest to newest.*/
SELECT DISTINCT year FROM movies ORDER BY year ASC;

/*Return all movies that are dramas.*/
SELECT * FROM movies WHERE genre = 'drama';

/*Return all of the movies with names that contain "bride".*/
SELECT * FROM movies WHERE name LIKE '%bride%';

/*Return all of the movies that were made between 2000 and 2015.*/
SELECT * FROM movies WHERE year BETWEEN 2000 AND 2015;

/*Return all of the movies that were made in 1995 or have an IMDb rating of 9.*/
SELECT * FROM movies WHERE year = 1995 OR  imdb_rating = 9;

/*Return the name and IMDb rating of every movie made after 2009 in alphabetical order.*/
SELECT name, imdb_rating FROM movies WHERE year > 2009 ORDER BY name ASC;

/*Return 3 movies with an IMDb rating of 7.*/
SELECT * FROM movies where imdb_rating > 7  LIMIT 3;

/*Return 10 movies with an IMDb rating greater than 6, are comedies, were made after 1995, and sorted by IMDb rating from highest to lowest.*/
SELECT * FROM movies where imdb_rating > 6 AND genre = 'comedy'AND year > 1995 ORDER BY imdb_rating DESC LIMIT 10;

/*Return all movies named 'Cast Away'.*/
SELECT * FROM movies WHERE name = 'Cast Away';

/*Return all movies with an IMDb rating not equal to 7*/
SELECT * FROM movies WHERE imdb_rating != 7;

/*Return all movies with a horror genre and an IMDb rating less than 6.*/
SELECT * FROM movies WHERE genre = 'horror' AND imdb_rating < 6;

/*Return 10 movies with an IMDb rating greater than 8 sorted by their genre.*/
SELECT * FROM movies WHERE imdb_rating > 8 ORDER BY genre;

/*Return all movies that include 'King' in the name.*/
SELECT * FROM movies WHERE name LIKE '%King%';

/*Return all movies with names that end with the word 'Out'*/
SELECT * FROM movies WHERE name LIKE '%Out';

/*Return all movies with names that begin with the word "The" sorted by IMDb rating from highest to lowest*/
SELECT * FROM movies WHERE name LIKE 'The%' ORDER BY imdb_rating DESC;

/*Return all of the movies.*/
SELECT * FROM movies;

/*Return the name and id of each movie with an id greater than 125.*/
SELECT name, id FROM movies WHERE id > 125;

/*Return all movies with names that begin with 'X-Men'*/
SELECT * FROM movies WHERE name LIKE 'X-Men%';

/*Return the first 10 movies sorted in reverse alphabetical order.*/
SELECT * FROM movies WHERE id < 11 ORDER BY name DESC;

/*Return the id, name, and genre of all movies that are romances.*/
SELECT id, name, genre FROM movies WHERE genre = 'romance';

/*Return all of the Twilight movies in order from the year they were released from oldest to newest.*/
SELECT * FROM movies WHERE name LIKE '%Twilight%' ORDER BY year ASC;

/*Return all of the movies that were released in 2012 that are comedies.*/
SELECT * FROM movies WHERE genre = 'comedy' AND year = 2012;

/*END*/
