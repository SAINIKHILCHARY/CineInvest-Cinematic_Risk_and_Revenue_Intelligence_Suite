CREATE DATABASE IF NOT EXISTS cineinvest;
USE cineinvest;

-- Primary_Production_Company 
SELECT
    m.movie_id,
    m.title,
    m.Primary_Production_Company,
    pc.Total_Movies,
    pc.Total_Revenue
FROM movies m
JOIN (
    SELECT
        Primary_Production_Company,
        COUNT(*) AS Total_Movies,
        SUM(Revenue) AS Total_Revenue
    FROM movies
    GROUP BY Primary_Production_Company
) pc
ON m.Primary_Production_Company = pc.Primary_Production_Company;

-- Primary_Genre
SELECT
    m.movie_id,
    m.title,
    m.Primary_Genre,
    g.Movie_Count,
    g.Average_Revenue
FROM movies m
JOIN (
    SELECT
        Primary_Genre,
        COUNT(*) AS Movie_Count,
        AVG(Revenue) AS Average_Revenue
    FROM movies
    GROUP BY Primary_Genre
) g
ON m.Primary_Genre = g.Primary_Genre;

-- Release_Year
SELECT
	m.movie_id,
    m.title,
    m.Release_Year,
    y.Total_Revenue,
    y.Total_Movies
FROM movies m
JOIN (
    SELECT
        Release_Year,
        SUM(Revenue) AS Total_Revenue,
        COUNT(*) AS Total_Movies
    FROM movies
    GROUP BY Release_Year
) y
ON m.Release_Year = y.Release_Year;

-- Financial_Result
SELECT
	m.movie_id,
    m.title,
    m.Financial_Result,
    f.Movie_Count
FROM movies m
JOIN (
    SELECT
        Financial_Result,
        COUNT(*) AS Movie_Count
    FROM movies
    GROUP BY Financial_Result
) f
ON m.Financial_Result = f.Financial_Result;

-- Budget_Category
SELECT
	m.movie_id,
    m.title,
    m.Budget_Category,
    b.Total_Movies,
    b.Average_ROI
FROM movies m
JOIN (
    SELECT
        Budget_Category,
        COUNT(*) AS Total_Movies,
        AVG(ROI) AS Average_ROI
    FROM movies
    GROUP BY Budget_Category
) b
ON m.Budget_Category = b.Budget_Category;

SELECT
    Production_Companies,
    COUNT(*) AS Movie_Count,
    SUM(Revenue) AS Total_Revenue,
    AVG(Revenue) AS Average_Revenue,
    MAX(Revenue) AS Highest_Revenue,
    MIN(Revenue) AS Lowest_Revenue
FROM movies
GROUP BY Production_Companies
ORDER BY Total_Revenue DESC;

SELECT
    Primary_Production_Company,
    COUNT(*) AS Movie_Count,
    SUM(Revenue) AS Total_Revenue,
    AVG(Revenue) AS Average_Revenue,
    MAX(Revenue) AS Highest_Revenue,
    MIN(Revenue) AS Lowest_Revenue
FROM movies
GROUP BY Primary_Production_Company
ORDER BY Total_Revenue DESC;

SELECT
    Primary_Production_Company,
    COUNT(*) AS Movie_Count,
    SUM(Genre_Count) AS Total_Genres,
    AVG(Genre_Count) AS Average_Genres
FROM movies
GROUP BY Primary_Production_Company
ORDER BY Total_Genres DESC;

SELECT
    Primary_Production_Company,
    COUNT(*) AS Movie_Count,
    SUM(Production_Company_Count) AS Total_Production_Companies,
    AVG(Production_Company_Count) AS Average_Production_Companies
FROM movies
GROUP BY Primary_Production_Company
ORDER BY Total_Production_Companies DESC;

SELECT
    Cast_Gender_Ratio,
    COUNT(*) AS Movie_Count,
    SUM(Revenue) AS Total_Revenue,
    AVG(Revenue) AS Average_Revenue
FROM movies
GROUP BY Cast_Gender_Ratio
ORDER BY Total_Revenue DESC;

SELECT
    Cast_Gender_Ratio,
    COUNT(*) AS Movie_Count,
    SUM(Genre_Count) AS Total_Genres,
    AVG(Genre_Count) AS Average_Genres
FROM movies
GROUP BY Cast_Gender_Ratio
ORDER BY Total_Genres DESC;

SELECT
    Cast_Gender_Ratio,
    COUNT(*) AS Movie_Count,
    SUM(Production_Company_Count) AS Total_Production_Companies,
    AVG(Production_Company_Count) AS Average_Production_Companies
FROM movies
GROUP BY Cast_Gender_Ratio
ORDER BY Total_Production_Companies DESC;


SELECT SUM(Revenue) AS Total_Revenue
FROM movies;

SELECT AVG(Revenue) AS Average_Revenue
FROM movies;

SELECT COUNT(*) AS Total_Movies
FROM movies;

SELECT
    Financial_Result,
    COUNT(*) AS Movie_Count
FROM movies
GROUP BY Financial_Result;

SELECT
    Primary_Production_Company,
    SUM(Revenue) AS Total_Revenue
FROM movies
GROUP BY Primary_Production_Company
ORDER BY Total_Revenue DESC
LIMIT 10;

SELECT
    Primary_Genre,
    AVG(ROI) AS Average_ROI
FROM movies
GROUP BY Primary_Genre
ORDER BY Average_ROI DESC;

SELECT
    title,
    Revenue
FROM movies
ORDER BY Revenue DESC
LIMIT 1;

SELECT
    title,
    Profit
FROM movies
ORDER BY Profit DESC
LIMIT 1;