-- Таблица жанров
CREATE TABLE Genres (
genre_ID INT PRIMARY KEY,
name_genre VARCHAR(50)
);

-- Таблица исполнителей
CREATE TABLE Artists (
artist_ID INT PRIMARY KEY,
name_artist VARCHAR(50)
);

-- Таблица альбомов
CREATE TABLE Albums (
album_ID INT PRIMARY KEY,
name_album VARCHAR(100),
release_year INT,
CHECK (release_year >= 1900)
);

-- Таблица треков
CREATE TABLE Tracks (
track_ID INT PRIMARY KEY,
name_track VARCHAR(100),
duration INT,
album_ID INT,
FOREIGN KEY (album_ID) REFERENCES Albums(album_ID),
CHECK (duration >= 1)
);

-- Таблица сборников
CREATE TABLE Collections (
collection_ID INT PRIMARY KEY,
name_collection VARCHAR(100),
release_year INT,
CHECK (release_year >= 1900)
);

-- Таблица связей исполнителей и жанров
CREATE TABLE ArtistGenres (
artist_ID INT,
genre_ID INT,
PRIMARY KEY (artist_ID, genre_ID),
FOREIGN KEY (artist_ID) REFERENCES Artists(artist_ID),
FOREIGN KEY (genre_ID) REFERENCES Genres(genre_ID)
);

-- Таблица связей альбомов и исполнителей
CREATE TABLE AlbumArtists (
album_ID INT,
artist_ID INT,
PRIMARY KEY (album_ID, artist_ID),
FOREIGN KEY (album_ID) REFERENCES Albums(album_ID),
FOREIGN KEY (artist_ID) REFERENCES Artists(artist_ID)
);

-- Таблица связей сборников и треков
CREATE TABLE CollectionTracks (
collection_ID INT,
track_ID INT,
PRIMARY KEY (collection_ID, track_ID),
FOREIGN KEY (collection_ID) REFERENCES Collections(collection_ID),
FOREIGN KEY (track_ID) REFERENCES Tracks(track_ID)
);