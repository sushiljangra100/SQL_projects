-- Top 5 Most Played Songs
SELECT s.title, COUNT(*) as play_count
FROM Listens l
JOIN Songs s ON l.song_id = s.song_id
GROUP BY s.title
ORDER BY play_count DESC
LIMIT 5;

-- Most Active Users
SELECT u.username, COUNT(*) AS total_listens
FROM Listens l
JOIN Users u ON l.user_id = u.user_id
GROUP BY u.username
ORDER BY total_listens DESC;

-- User's Most Played Genre
SELECT u.username, s.genre, COUNT(*) as play_count
FROM Listens l
JOIN Songs s ON l.song_id = s.song_id
JOIN Users u ON l.user_id = u.user_id
GROUP BY u.username, s.genre
ORDER BY u.username, play_count DESC;

