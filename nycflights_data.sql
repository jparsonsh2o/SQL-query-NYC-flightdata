--how many records of planes built since 2000?2025--
SELECT*
FROM planes
WHERE year >=2000;
--how many records of planes built by BOEING?1630--
SELECT*
FROM planes
WHERE manufacturer ILIKE 'Boeing';
--how many records of planes built between 1980 and 1990?315--
SELECT*
FROM planes
WHERE year BETWEEN 1980 AND 1990;
--how many records of planes built by Cessna, Boeing, or Airbus?1975--
SELECT*
FROM planes
WHERE manufacturer IN('BOEING','CESSNA','AIRBUS');
--how many records where year made is unknown?70--
SELECT*
FROM planes
WHERE year IS NULL;
-- how many records where speed is unknown?23--
SELECT*
FROM planes
WHERE speed IS NOT NULL;
--how many records of planes that do not seat between 50 and 200?417--
SELECT*
FROM planes
WHERE seats NOT BETWEEN 50 AND 200;
--how many records of planes whose engine field begin with "Turbo"?3292--
SELECT*
FROM planes
WHERE engine ILIKE 'Turbo%';
--how many records of planes with name format XXX_XXX?1496--
SELECT*
FROM planes
WHERE model LIKE '___-___';
--how many records of planes built before 1980 and seat more than 100?9--
SELECT*
FROM planes
WHERE year < 1980
	AND seats >100;
--how many records of planes built after 2000 or have a reciprocating engine?1806--
SELECT*
FROM planes
WHERE year > 2000
	OR engine = 'Reciprocating';
--how many records of planes either built between 1980 and 1990, are not two-engine, and have a nonmissing value for speed, or were made by Boeing or Cessna?1639--
SELECT*
FROM planes
WHERE (year BETWEEN 1980 and 1990
	AND engines <> 2
	AND speed IS NOT NULL)
	OR manufacturer IN ('BOEING','CESSNA');
--how many records of planes both built between 1980 and 1990 and are not two engine planes?6--
SELECT*
FROM planes
WHERE year BETWEEN 1980 AND 1990
	AND engines <> 2;
--how many of those have nonmissing values for speed or were made by Boeing or Cessna?1--
SELECT*
FROM planes
WHERE year BETWEEN 1980 AND 1990
	AND engines <> 2
	AND speed IS NOT NULL
	AND manufacturer IN ('BOEING','CESSNA');