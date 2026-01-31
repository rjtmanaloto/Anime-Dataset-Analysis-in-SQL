--create anime table and impott data from anime_raw
--rename MAL_ID as animeId
SELECT 
	MAL_ID AS AnimeId, 
    Name,
    Genres,
    Type, 
    Episodes, 
    Score, 
    Members, 
    Studios, 
    Aired 
FROM anime_raw;