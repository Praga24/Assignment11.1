--Table Creation

CREATE TABLE IF NOT EXISTS olympic(athlete string,age int,country string,year string,closing_date string,sport string,
gold int,silver int,bronze int,total int)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\t'
STORED AS TEXTFILE;

--Loading Data

LOAD DATA LOCAL INPATH '/home/acadgild/Downloads/olympic_data.csv' OVERWRITE INTO TABLE olympic;

-- Number of medals won by each country in swimming

SELECT country,SUM(total) FROM olympic WHERE sport="Swimming" GROUP BY country;

--Number of medals that India won year wise

SELECT year,SUM(total) from olympic WHERE COUNTRY=="India" GROUP BY year;
