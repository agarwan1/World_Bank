CREATE VIEW GDP_IN_USD_VIEW AS   SELECT year, ci.country_code, country_name, ci.indicator_code, indicator_name, indicator_value FROM country_indicator ci
LEFT JOIN indicator i ON ci.indicator_id = i.indicator_id LEFT JOIN country c ON ci.country_id = c.country_id
WHERE i.indicator_code = 'NY.GDP.MKTP.CD' AND year BETWEEN 1990 AND 2016;

SELECT * FROM GDP_IN_USD_VIEW;

CREATE VIEW TOTAL_POPULATION_VIEW AS   SELECT year, ci.country_code, country_name, ci.indicator_code, indicator_name, indicator_value FROM country_indicator ci
LEFT JOIN indicator i ON ci.indicator_id = i.indicator_id LEFT JOIN country c ON ci.country_id = c.country_id
WHERE i.indicator_code = 'SP.POP.TOTL' AND year BETWEEN 1990 AND 2016;

SELECT * FROM TOTAL_POPULATION_VIEW;

CREATE VIEW PCT_RENEWABLE_ENERGY_VIEW AS   SELECT year, ci.country_code, country_name, ci.indicator_code, indicator_name, indicator_value FROM country_indicator ci
LEFT JOIN indicator i ON ci.indicator_id = i.indicator_id LEFT JOIN country c ON ci.country_id = c.country_id
WHERE i.indicator_code = 'EG.ELC.RNEW.ZS' AND year BETWEEN 1990 AND 2016;

SELECT * FROM PCT_RENEWABLE_ENERGY_VIEW;

CREATE VIEW PCT_ACCESS_TO_ELECTRICITY_VIEW AS   SELECT year, ci.country_code, country_name, ci.indicator_code, indicator_name, indicator_value FROM country_indicator ci
LEFT JOIN indicator i ON ci.indicator_id = i.indicator_id LEFT JOIN country c ON ci.country_id = c.country_id
WHERE i.indicator_code = 'EG.ELC.ACCS.ZS' AND year BETWEEN 1990 AND 2016;

SELECT * FROM PCT_ACCESS_TO_ELECTRICITY_VIEW;


CREATE VIEW CO2_EMISSION_KT_VIEW AS   SELECT year, ci.country_code, country_name, ci.indicator_code, indicator_name, indicator_value FROM country_indicator ci
LEFT JOIN indicator i ON ci.indicator_id = i.indicator_id LEFT JOIN country c ON ci.country_id = c.country_id
WHERE i.indicator_code = 'EN.ATM.CO2E.KT' AND year BETWEEN 1990 AND 2016;

SELECT * FROM CO2_EMISSION_KT_VIEW;









CREATE VIEW GDP_IN_USD_ABBR_VIEW AS   SELECT year, ci.country_code, country_name, ci.indicator_code, indicator_name, indicator_value FROM country_indicator_abbr ci
LEFT JOIN indicator i ON ci.indicator_id = i.indicator_id LEFT JOIN country c ON ci.country_id = c.country_id
WHERE i.indicator_code = 'NY.GDP.MKTP.CD' AND year BETWEEN 1990 AND 2016;

SELECT * FROM GDP_IN_USD_ABBR_VIEW;

CREATE VIEW TOTAL_POPULATION_ABBR_VIEW AS   SELECT year, ci.country_code, country_name, ci.indicator_code, indicator_name, indicator_value FROM country_indicator_abbr ci
LEFT JOIN indicator i ON ci.indicator_id = i.indicator_id LEFT JOIN country c ON ci.country_id = c.country_id
WHERE i.indicator_code = 'SP.POP.TOTL' AND year BETWEEN 1990 AND 2016;

SELECT * FROM TOTAL_POPULATION_ABBR_VIEW;

CREATE VIEW PCT_RENEWABLE_ENERGY_ABBR_VIEW AS   SELECT year, ci.country_code, country_name, ci.indicator_code, indicator_name, indicator_value FROM country_indicator_abbr ci
LEFT JOIN indicator i ON ci.indicator_id = i.indicator_id LEFT JOIN country c ON ci.country_id = c.country_id
WHERE i.indicator_code = 'EG.ELC.RNEW.ZS' AND year BETWEEN 1990 AND 2016;

SELECT * FROM PCT_RENEWABLE_ENERGY_ABBR_VIEW;

CREATE VIEW PCT_ACCESS_TO_ELECTRICITY_ABBR_VIEW AS   SELECT year, ci.country_code, country_name, ci.indicator_code, indicator_name, indicator_value FROM country_indicator_abbr ci
LEFT JOIN indicator i ON ci.indicator_id = i.indicator_id LEFT JOIN country c ON ci.country_id = c.country_id
WHERE i.indicator_code = 'EG.ELC.ACCS.ZS' AND year BETWEEN 1990 AND 2016;

SELECT * FROM PCT_ACCESS_TO_ELECTRICITY_ABBR_VIEW;


CREATE VIEW CO2_EMISSION_KT_ABBR_VIEW AS   SELECT year, ci.country_code, country_name, ci.indicator_code, indicator_name, indicator_value FROM country_indicator_abbr ci
LEFT JOIN indicator i ON ci.indicator_id = i.indicator_id LEFT JOIN country c ON ci.country_id = c.country_id
WHERE i.indicator_code = 'EN.ATM.CO2E.KT' AND year BETWEEN 1990 AND 2016;

SELECT * FROM CO2_EMISSION_KT_ABBR_VIEW;