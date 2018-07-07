update country_indicator ci inner join country c on ci.country_code = c.country_code
set ci.country_id = c.country_id  where year <=1970;
update country_indicator ci inner join country c on ci.country_code = c.country_code
set ci.country_id = c.country_id  where year >= 1971 and year <=1980;
update country_indicator ci inner join country c on ci.country_code = c.country_code
set ci.country_id = c.country_id  where year >= 1981 and year <=1990;
update country_indicator ci inner join country c on ci.country_code = c.country_code
set ci.country_id = c.country_id  where year >= 1991 and year <=2000;
update country_indicator ci inner join country c on ci.country_code = c.country_code
set ci.country_id = c.country_id  where year >= 2001 and year <=2010;
update country_indicator ci inner join country c on ci.country_code = c.country_code
set ci.country_id = c.country_id  where year >= 2011 and year <=2020;


UPDATE country_indicator 
SET country_indicator.country_id = (
    SELECT country.country_id 
    FROM country
    WHERE country.country_code = country_indicator.country_code
) where year <=1970;


UPDATE country_indicator 
SET country_indicator.country_id = (
    SELECT country.country_id 
    FROM country
    WHERE country.country_code = country_indicator.country_code
) where year >= 1971 and year <=1980;

UPDATE country_indicator 
SET country_indicator.country_id = (
    SELECT country.country_id 
    FROM country
    WHERE country.country_code = country_indicator.country_code
) where year >= 1981 and year <=1990;

UPDATE country_indicator 
SET country_indicator.country_id = (
    SELECT country.country_id 
    FROM country
    WHERE country.country_code = country_indicator.country_code
) where year >= 1991 and year <=2000;

UPDATE country_indicator 
SET country_indicator.country_id = (
    SELECT country.country_id 
    FROM country
    WHERE country.country_code = country_indicator.country_code
) where year >= 2001 and year <=2010;

UPDATE country_indicator 
SET country_indicator.country_id = (
    SELECT country.country_id 
    FROM country
    WHERE country.country_code = country_indicator.country_code
) where year >= 2011 and year <=2020;

