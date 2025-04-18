INSERT INTO Users (username, email) VALUES 
('Harry_Osborn', 'goblin@gmail.com'),
('Peter_Parker', 'ditkovitch@gmail.com');

INSERT INTO Artists (name, genre, country) VALUES
('Imagine Dragons', 'Alternative Rock', 'USA'),
('Adele', 'Pop', 'UK');

INSERT INTO Albums (artist_id, title, release_date) VALUES
(1, 'Night Visions', '2012-09-04'),
(2, '25', '2015-11-20');

INSERT INTO Songs (album_id, title, duration, release_date, genre) VALUES
(1, 'Radioactive', 186, '2012-09-04', 'Alternative Rock'),
(2, 'Hello', 295, '2015-10-23', 'Pop');

INSERT INTO Playlists (user_id, name) VALUES
(1, 'My Rock Picks'),
(2, 'Sad Songs');

INSERT INTO PlaylistSongs VALUES
(1, 1),
(2, 2);

INSERT INTO Listens (user_id, song_id) VALUES
(1, 1),
(1, 2),
(2, 2);
