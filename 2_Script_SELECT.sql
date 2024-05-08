SELECT name_track, length_track 
FROM track 
WHERE length_track = (SELECT MAX(length_track) FROM track);

SELECT name_track 
FROM track 
WHERE length_track>=210;

SELECT name_collection
FROM collection
WHERE EXTRACT(YEAR FROM year_published) BETWEEN 2018 AND 2020;

SELECT name_artist 
FROM artist
WHERE strpos(name_artist, ' ')>0; 

SELECT name_track
FROM track
WHERE strpos(name_track, 'мой')>0 OR strpos(name_track, 'my')>0;



