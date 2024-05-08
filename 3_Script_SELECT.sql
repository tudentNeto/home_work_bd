SELECT g.name_genre, count(ag.id_artist)
FROM genre AS g, artist_genre ag 
WHERE g.id_genre = ag.id_genre
GROUP BY g.id_genre;

SELECT count(id_track) 
FROM album a, track t 
WHERE a.id_album =t.id_album AND a.year_published BETWEEN 2019 AND 2020
GROUP BY a.id_album;

SELECT a.name_album, make_time(cast(trunc(avg(t.length_track)/60) AS integer),cast(trunc(avg(t.length_track)-(trunc(avg(t.length_track)/60)*60)) AS integer),0)  AS avg_length
FROM album a, track t 
WHERE a.id_album =t.id_album
GROUP BY a.id_album;

SELECT name_artist
FROM artist
WHERE id_artist NOT IN (SELECT a.id_artist 
	FROM artist a, album a2, artist_album aa 
	WHERE a.id_artist=aa.id_artist AND a2.id_album=aa.id_album AND a2.year_published=2020);

SELECT DISTINCT name_collection
FROM collection c, track t, collection_track ct, album a, artist a2, artist_album aa 
WHERE c.id_collection =ct.id_collection AND 
	t.id_track =ct.id_track AND 
	t.id_album =a.id_album AND 
	a.id_album =aa.id_album AND 
	a2.id_artist =aa.id_artist AND 
	a2.name_artist ='DOLPHIN';

