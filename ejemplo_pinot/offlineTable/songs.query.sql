
-- 1. Para la tabla OFFLINE
SELECT artist, COUNT(*), AVG(popularity) FROM songs GROUP BY artist;

-- 2. Consulta tabla OFFLINE - songs
SELECT title, popularity FROM songs ORDER BY popularity DESC LIMIT 5;

-- 3. Agregación en songs
SELECT COUNT(*), AVG(popularity), MIN(popularity), MAX(popularity) FROM songs;

-- 4. Canciones con mayor duración
SELECT title, album, duration FROM songs ORDER BY duration DESC LIMIT 5;

-- 5. Contar canciones por álbum
SELECT album, COUNT(*) as total_songs, AVG(popularity) as avg_popularity FROM songs GROUP BY album;

-- 6. Filtrar por popularidad
SELECT title, artist, popularity FROM songs WHERE popularity >= 55 ORDER BY popularity DESC;