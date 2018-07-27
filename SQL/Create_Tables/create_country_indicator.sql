create table country_indicator (		
    country_indicator_id    INT(11)    AUTO_INCREMENT PRIMARY KEY,		
	country_code nvarchar(20) NULL,			
	country_id int NULL,
	indicator_code nvarchar(25) NULL,		
	indicator_id int NULL,
	year	int NULL,
	indicator_value  double NULL
);				

