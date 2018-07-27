#We had to add primary keys to the table in order for SQL Alchemy to work.

#SELECT * FROM countryind.country_indicator Limit 5

use countryind;
alter table country add column `id` int(10) unsigned primary KEY AUTO_INCREMENT;
select * from country;

alter table country_indicator add column `id` int(10) unsigned primary KEY AUTO_INCREMENT;
select * from country_indicator;


alter table country_indicator_flat add column `id` int(10) unsigned primary KEY AUTO_INCREMENT;
select * from country_indicator_flat;

select * from indicator;
alter table indicator add column `id` int(10) unsigned primary KEY AUTO_INCREMENT;


