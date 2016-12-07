DROP TABLE IF EXISTS albums;
DROP TABLE IF EXISTS artists;



CREATE TABLE artists (
  id serial8 primary key,
  name VARCHAR(255)
);

CREATE TABLE albums (
  id serial8 primary key,
  title VARCHAR(255),
  genre VARCHAR(255),
  artist_id INT4 references artists(id)
);