/*I have written this roject after I completed the SQL course at codecademy.com*/
/*Create a table named tracks with an id, title, and album_id column. The id column should be the PRIMARY KEY.*/
CREATE TABLE tracks(id INTEGER PRIMARY KEY, title TEXT, album_id INTEGER);

/*"Smooth Criminal" is a track from Michael Jackson's "Bad" album. Add this track to the database.*/
INSERT INTO tracks(id, title, album_id)
VALUES(1, 'Bad', 3);

/*Add more tracks to the database.*/
INSERT INTO tracks(id, title, album_id)
VALUES(2, '1989', 6);

INSERT INTO tracks(id, title, album_id)
VALUES(3, 'Unorthodox Jukebox', 8);

/*Combine the albums and tracks tables using an INNER JOIN. Order the query by album_id.*/
SELECT * FROM albums
INNER JOIN tracks ON 
albums.artist_id =  tracks.album_id;
 
/*Combine the albums and artists table using a LEFT OUTER JOIN. Let albums be the left table.*/
SELECT * FROM albums
LEFT JOIN artists ON 
albums.artist_id = artists.id;

/*Combine the albums and artists table using a LEFT OUTER JOIN. Let artists be the left table.*/
SELECT * FROM artists
LEFT JOIN albums ON 
artists.id = albums.artist_id ;