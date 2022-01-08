create table if not exists singer (
    singer_id serial primary key,
    singer_name varchar(50) not null unique
)

create table if not exists music_style (
	music_style_id serial primary key,
	music_style_name varchar(45) not null unique
	)
    
create table if not exists album (
    album_id serial primary key,
    singer_id int2 references singer (singer_id),
    album_name varchar(70) not null unique,
    album_year int2 not null
)

create table if not exists SingerAlbum (
	singer_id int2 singer (singer_id),
	album_id int2 album (album_id)
)

create table if not exists SingerStyle (
	singer_id int2 singer (singer_id),
	music_style_id int2 music_style (music_style_id)
)

create table if not exists track (
    track_id serial primary key,
    album_id int2 references album (album_id),
    track_title varchar(80) not null unique,
    track_duration int2
)

create table if not exists collection (
    collection_id serial primary key,
    collection_name varchar(80) not null unique,
    collection_year int2,
    track_id int2 references track (track_id),
)

create table if nit exists CollectionAlbum (
	collection_id references collection (collection_id),
	album_id references album (album_id)
)