INSERT INTO artist (name_artist) VALUES
    ('MUSE'),
    ('PLACEBO'),
    ('My chemical romance'),
    ('DOLPHIN');
    
INSERT INTO genre (name_genre) VALUES
    ('Alternative'),
    ('POP PUNK'),
    ('EMO');   

INSERT INTO album (name_album, release_date, year_published) VALUES
	('Three Cheers for Sweet Revenge', '2004-06-08', 2004);

INSERT INTO album (name_album, release_date, year_published) VALUES
	('Absolution', '2020-09-15', 2020),
	('442', '2018-03-23',2018),
	('Meds', '2006-03-13', 2006),
	('The Black Parade', '2006-10-24', 2006);

INSERT INTO artist_genre (id_artist, id_genre) VALUES 
	(1,1),
	(1,3),
	(2,2),
	(3,3),
	(4,1);

INSERT INTO artist_album (id_artist, id_album) VALUES
	(3,1),
	(1,2),
	(4,3),
	(2,4),
	(3,5);

INSERT INTO track (id_album, name_track, length_track) VALUES
	(1, 'Helena', 203),
	(1, 'Interlude', 57),
	(1, 'Thank You for the Venom',221),
	(2, 'Intro', 22),
	(2, 'Hysteria',227),
	(2, 'Butterflies and Hurricanes', 303),
	(3, '520', 273),
	(3, '660', 262),
	(3, '744', 300),
	(4, 'Blind', 241),
	(4, 'Drag', 200),
	(5, 'The end.', 65),
	(5, 'Cancer', 122);

INSERT INTO track (id_album, name_track, length_track) VALUES
	(3, 'Мой', 240),
	(5, 'My', 240);

INSERT INTO collection (name_collection, year_published) VALUES
	('Collection_1', '2001-01-01'),
	('Collection_2', '2002-01-01'),
	('Collection_3', '2003-01-01'),
	('My_Favorite', '2004-01-01');

INSERT INTO collection_track (id_collection, id_track) VALUES
	(1,1),
	(1,2),
	(1,3),
	(1,12),
	(1,13),
	(1,15),
	(2,4),
	(2,5),
	(2,6),
	(2,10),
	(2,11),
	(3,7),
	(3,8),
	(4,3),
	(4,5);
	
