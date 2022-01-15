--название и год выхода альбомов, вышедших в 2018 году;
--название и продолжительность самого длительного трека;
--название треков, продолжительность которых не менее 3,5 минуты;
--названия сборников, вышедших в период с 2018 по 2020 год включительно;
--исполнители, чье имя состоит из 1 слова;
--название треков, которые содержат слово "мой"/"my".

select album_name, album_year from album
where album_year = 2018;

select track_title, track_duration from track
order by track_duration desc
limit 1;

select track_title, track_duration from track
where track_duration > 3.5;

select collection_name from collection
where collection_year > 2018 and collection_year < 2020;

select singer_name from singer
where not singer_name like '% %';

select track_title from track 
where track_title like '%my%';

