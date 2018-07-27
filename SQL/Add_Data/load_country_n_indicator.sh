DBNAME=countryind
export DBNAME
DIR=/home/ubuntu/Nisha
export DIR


#mysql -u root -pNisha123 $DBNAME <<!
#
#create table country (
#        country_code nvarchar(20) NULL,
#        country_name nvarchar(1000) NULL
#);
#
#
#create table indicator (					
#	indicator_code nvarchar(20) NULL,
#	indicator_name nvarchar(1000) NULL
#);					
#!

mysql -u root -pNisha123 $DBNAME <<!
insert into country (country_code, country_name) select distinct country_code, country_name from country_indicator_flat;
insert into indicator (indicator_code, indicator_name) select distinct indicator_code, indicator_name from country_indicator_flat;

!
