-- Задание 2

--Название и продолжительность самого длительного трека.
SELECT name_track, duration
FROM Tracks
ORDER BY duration DESC
LIMIT 1;

--Название треков, продолжительность которых не менее 3,5 минут.
SELECT name_track
FROM Tracks
WHERE duration >= 190;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT name_collection
FROM Collections
WHERE release_year BETWEEN 2018 AND 2020;

--Исполнители, чьё имя состоит из одного слова.
SELECT 

--Название треков, которые содержат слово «мой» или «my».
SELECT name_track
FROM Tracks
WHERE name_track LIKE '%Мой%' OR name_track LIKE '%My%';

--Задание 3

--Количество исполнителей в каждом жанре.
SELECT genre_ID, COUNT(DISTINCT artist_ID) AS count_artists
FROM ArtistGenres
GROUP BY genre_ID;

--Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT release_year, COUNT(*) AS track_count
FROM Tracks
JOIN Albums ON Tracks.album_ID = Albums.album_ID
WHERE release_year BETWEEN 2019 AND 2020
GROUP BY release_year;

--Средняя продолжительность треков по каждому альбому.
SELECT name_album, AVG(duration) AS avg_duration
FROM Tracks
JOIN Albums ON Tracks.album_ID = Albums.album_ID
GROUP BY name_album;

--Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT name_artist
FROM Artists
WHERE artist_ID NOT IN (
    SELECT artist_ID
    FROM AlbumArtists
    JOIN Albums ON AlbumArtists.album_ID = Albums.album_ID
    WHERE release_year = 2020
);

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами), (Eminem).
SELECT name_collection
FROM CollectionTracks
JOIN Collections ON CollectionTracks.collection_ID = Collections.collection_ID
JOIN Tracks ON CollectionTracks.track_ID = Tracks.track_ID
JOIN Albums ON Tracks.album_ID = Albums.album_ID
JOIN AlbumArtists ON Albums.album_ID = AlbumArtists.album_ID
JOIN Artists ON AlbumArtists.artist_ID = Artists.artist_ID
WHERE name_artist = 'Eminem';






