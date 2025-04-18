-- Users
CREATE TABLE Users (
    user_id INTEGER PRIMARY KEY,
    username TEXT NOT NULL,
    email TEXT NOT NULL,
    signup_date DATE DEFAULT CURRENT_DATE
);

-- Artists
CREATE TABLE Artists (
    artist_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    genre TEXT,
    country TEXT
);

-- Albums
CREATE TABLE Albums (
    album_id INTEGER PRIMARY KEY,
    artist_id INTEGER,
    title TEXT NOT NULL,
    release_date DATE,
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id)
);

-- Songs
CREATE TABLE Songs (
    song_id INTEGER PRIMARY KEY,
    album_id INTEGER,
    title TEXT NOT NULL,
    duration INTEGER, -- in seconds
    release_date DATE,
    genre TEXT,
    FOREIGN KEY (album_id) REFERENCES Albums(album_id)
);

-- Playlists
CREATE TABLE Playlists (
    playlist_id INTEGER PRIMARY KEY,
    user_id INTEGER,
    name TEXT NOT NULL,
    created_at DATE DEFAULT CURRENT_DATE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- PlaylistSongs
CREATE TABLE PlaylistSongs (
    playlist_id INTEGER,
    song_id INTEGER,
    PRIMARY KEY (playlist_id, song_id),
    FOREIGN KEY (playlist_id) REFERENCES Playlists(playlist_id),
    FOREIGN KEY (song_id) REFERENCES Songs(song_id)
);

-- Listens
CREATE TABLE Listens (
    listen_id INTEGER PRIMARY KEY,
    user_id INTEGER,
    song_id INTEGER,
    listen_timestamp DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (song_id) REFERENCES Songs(song_id)
);
