#Duplicate records were accidently added in mySQL. These were deleted using the following SQL command.

CREATE TABLE country_Verify AS SELECT DISTINCT * FROM country;
DELETE FROM country;
SELECT * FROM country_Verify;

INSERT INTO country SELECT * FROM country_Verify;  
SELECT * from country;
DROP TABLE country_Verify;