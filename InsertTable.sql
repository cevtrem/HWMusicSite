INSERT INTO Genres (genre_ID, name_genre)
VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Hip Hop');

INSERT INTO Artists (artist_ID, name_artist)
VALUES
(1, 'Scorpions'),
(2, 'Beyonce'),
(3, 'Eminem'),
(4, 'Баста');

INSERT INTO ArtistGenres (artist_ID, genre_ID)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 3;

INSERT INTO Albums (album_ID, name_album, release_year)
VALUES
(1, 'Rock Believer', 2022),
(2, 'Lemonade', 2019),
(3, 'Kamikaze', 2018),
(4, 'Бастилио', 2005);

INSERT INTO Tracks (track_ID, name_track, duration, album_ID)
VALUES
(1, 'Roors In My Boots', 3.17, 1),
(2, 'Freedom', 3.8, 2),
(3, 'Venom', 4.31, 3)
(4, 'Paul', 0.35, 3),
(5, 'Мой стиль', 4.16, 4),
(6, 'Моя игра', 5,25, 4);

INSERT INTO Collections (collection_ID, name_collection, release_year)
VALUES
(1, 'Compilation 1', 2015),
(2, 'Compilation 2', 2018),
(3, 'Compilation 3', 2019),
(4, 'Compilation 4', 2022);

INSERT INTO CollectionTracks (collection_ID, track_ID)
VALUES
(1, 5),
(1, 6),
(2, 3),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(4, 3);

INSERT INTO AlbumArtists (album_ID, artist_ID)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);
 

