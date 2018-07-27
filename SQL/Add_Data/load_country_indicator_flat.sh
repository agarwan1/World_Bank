DBNAME=countryind
export DBNAME
DIR=/home/ubuntu/Nisha
export DIR


#LOAD DATA LOCAL INFILE '$DIR/WorldBankData.csv'
#LOAD DATA LOCAL INFILE '$DIR/XXXXX'
#SET
#country_code = nullif(@vone,''),
#country_name = nullif(@vtwo,''),
#indicator_code = nullif(@vthree,''),
#indicator_name = nullif(@vfour,''),
#yr_1960 = nullif(@vfive,''),
#yr_1961 = nullif(@vsix,''),
#yr_1962 = nullif(@vseven,''),
#yr_1963 = nullif(@veight,'')
mysql --local-infile -u root -pNisha123 $DBNAME <<!
LOAD DATA LOCAL INFILE '$DIR/WorldBankData.csv'
INTO TABLE country_indicator_flat
FIELDS TERMINATED BY ',' 
ENCLOSED BY '\"' 
LINES TERMINATED BY '\n' 
IGNORE 1 LINES
; 
!

