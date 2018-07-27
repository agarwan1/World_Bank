DBNAME=countryind
export DBNAME
DIR=/mnt/ubuntu/NISHA
export DIR


mysql  -u root -pNisha123 $DBNAME <create_country_indicator_flat.sql
mysql  -u root -pNisha123 $DBNAME <create_country_indicator.sql
mysql  -u root -pNisha123 $DBNAME <create_country.sql
mysql  -u root -pNisha123 $DBNAME <create_indicator.sql
