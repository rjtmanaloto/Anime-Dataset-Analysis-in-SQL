-- inspect and clean data 

-- anime ids no duplicates
SELECT AnimeId, COUNT(*) 
FROM anime 
GROUP BY AnimeId 
HAVING COUNT(*) > 1;

-- anime names no duplicates
SELECT Name, COUNT(*) 
FROM anime 
GROUP BY Name 
HAVING COUNT(*) > 1;

-- no rows with NULL ratings
SELECT * 
FROM anime 
WHERE AnimeId IS Null OR ''
	OR Name IS Null OR ''
	OR Genres IS Null OR ''
	OR Type IS Null OR ''
	OR Episodes IS Null OR ''
	OR Score IS Null OR ''
	OR Members IS Null OR ''
	OR Studios IS Null OR ''
	OR Aired IS Null OR '';

-- no zero episodes
SELECT COUNT(*) AS zero_episodes 
FROM anime 
WHERE Episodes = 0;

-- no inconsistencies and formats in Type
SELECT DISTINCT Type 
FROM anime;

-- no inconsistencies and formats in Score
SELECT DISTINCT Score 
FROM anime;

-- no inconsistencies and formats in Studios
SELECT DISTINCT Studios 
FROM anime;

