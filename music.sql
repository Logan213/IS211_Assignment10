DROP TABLE IF EXISTS Artist;
DROP TABLE IF EXISTS Albums;
DROP TABLE IF EXISTS Songs;


CREATE TABLE Artist
(
    artist_id int PRIMARY KEY,
    artist varchar NOT NULL
    );

CREATE TABLE Albums
(
    album_id int PRIMARY KEY,
    artist_id int NOT NULL REFERENCES Artist(artist_id)
    album_title varchar NOT NULL
    );

CREATE TABLE Songs
(
    song_id int PRIMARY KEY,
    song_title varchar NOT NULL
    album_id int NOT NULL REFERENCES Albums(album_id)
    artist_id int NOT NULL REFERENCES Artist(artist_id)
    track_number int NOT NULL
    track_length varchar
    );
