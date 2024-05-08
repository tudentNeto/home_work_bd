ALTER TABLE album 
RENAME COLUMN year_published to release_date;

ALTER TABLE album 
ADD COLUMN year_published INTEGER NOT null;

ALTER TABLE album 
ADD CHECK (1900 < year_published);

ALTER TABLE album 
ADD CHECK ( year_published<2500);

ALTER TABLE track 
DROP COLUMN length_track;

ALTER TABLE track 
ADD COLUMN length_track INTEGER;
