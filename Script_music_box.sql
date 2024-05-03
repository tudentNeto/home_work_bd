CREATE TABLE IF NOT EXISTS genre (
id_genre SERIAL PRIMARY KEY,
name_genre VARCHAR(20) UNIQUE NOT NULL
);
CREATE TABLE IF NOT EXISTS artist (
id_artist SERIAL PRIMARY KEY,
name_artist VARCHAR(60) UNIQUE NOT NULL
);
CREATE TABLE IF NOT EXISTS artist_genre (
id_artist INTEGER NOT NULL REFERENCES artist(id_artist) ON DELETE CASCADE,
id_genre INTEGER NOT NULL REFERENCES genre(id_genre) ON DELETE CASCADE,
CONSTRAINT pk_artist_genre PRIMARY KEY (id_artist, id_genre)
);
CREATE TABLE IF NOT EXISTS album (
id_album SERIAL PRIMARY KEY,
name_album VARCHAR(80) NOT null,
year_published date
);
CREATE TABLE IF NOT EXISTS artist_album (
id_artist INTEGER NOT NULL REFERENCES artist(id_artist) ON DELETE CASCADE,
id_album INTEGER NOT NULL REFERENCES album(id_album) ON DELETE CASCADE,
CONSTRAINT pk_artist_album PRIMARY KEY (id_artist, id_album)
);
CREATE TABLE IF NOT EXISTS track (
id_track SERIAL PRIMARY KEY,
id_album INTEGER NOT NULL, 
name_track VARCHAR(128) NOT NULL,
length_track time,
FOREIGN KEY (id_album) REFERENCES album(id_album) ON DELETE CASCADE
);
CREATE TABLE IF NOT EXISTS collection (
id_collection SERIAL PRIMARY KEY,
name_collection VARCHAR(80) NOT NULL,
year_published date
);
CREATE TABLE IF NOT EXISTS collection_track (
id_collection INTEGER NOT NULL REFERENCES collection(id_collection) ON DELETE CASCADE,
id_track INTEGER NOT NULL REFERENCES track(id_track) ON DELETE CASCADE,
CONSTRAINT pk_collection_track PRIMARY KEY (id_collection, id_track)
);

