--summarize, visualize, and examine data

--count of animes
SELECT COUNT(*) AS TotalAnime 
FROM anime_cleaned;

--"Which anime have the highest rating/score?"
SELECT Name, Score 
FROM anime_cleaned
ORDER BY Score DESC
LIMIT 1;

--"What is the average rating/score of the animes on the list?"
SELECT AVG(Score) AS AverageScore 
FROM anime_cleaned;

--"Is there a relationship between number of episodes and ratings/scores?"
SELECT Episodes, AVG(Score) AS AverageRatingScore
FROM anime_cleaned
GROUP BY Episodes
ORDER BY Episodes DESC;

--"Which studios produce the highest-rated/scored anime?"
SELECT Studios, AVG(Score) AS AverageRatingScore
FROM anime_cleaned
GROUP BY Studios
ORDER BY AverageRatingScore DESC
LIMIT 5;

--"Do newer anime perform better than older ones?"
SELECT 
	CASE 
		WHEN Aired <= 1999 THEN 'Old Anime'
		ELSE 'New Anime'
	END AS YearGroup,
	COUNT(*) AS AnimeCount, 
	AVG(Score) AS AverageRatingScore
FROM anime_cleaned
GROUP BY YearGroup;