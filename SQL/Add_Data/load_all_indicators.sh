DBNAME=countryind
export DBNAME
DIR=/home/ubuntu/Nisha
export DIR


mysql  -u root -pNisha123 $DBNAME <<!




insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 1960, CAST(yr_1960 as decimal(22,6)) from country_indicator_flat where yr_1960 is not NULL and yr_1960 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 1961, CAST(yr_1961 as decimal(22,6)) from country_indicator_flat where yr_1961 is not NULL and yr_1961 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 1962, CAST(yr_1962 as decimal(22,6)) from country_indicator_flat where yr_1962 is not NULL and yr_1962 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 1963, CAST(yr_1963 as decimal(22,6)) from country_indicator_flat where yr_1963 is not NULL and yr_1963 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 1964, CAST(yr_1964 as decimal(22,6)) from country_indicator_flat where yr_1964 is not NULL and yr_1964 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 1965, CAST(yr_1965 as decimal(22,6)) from country_indicator_flat where yr_1965 is not NULL and yr_1965 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 1966, CAST(yr_1966 as decimal(22,6)) from country_indicator_flat where yr_1966 is not NULL and yr_1966 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 1967, CAST(yr_1967 as decimal(22,6)) from country_indicator_flat where yr_1967 is not NULL and yr_1967 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 1968, CAST(yr_1968 as decimal(22,6)) from country_indicator_flat where yr_1968 is not NULL and yr_1968 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 1969, CAST(yr_1969 as decimal(22,6)) from country_indicator_flat where yr_1969 is not NULL and yr_1969 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 1970, CAST(yr_1970 as decimal(22,6)) from country_indicator_flat where yr_1970 is not NULL and yr_1970 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 1971, CAST(yr_1971 as decimal(22,6)) from country_indicator_flat where yr_1971 is not NULL and yr_1971 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 1972, CAST(yr_1972 as decimal(22,6)) from country_indicator_flat where yr_1972 is not NULL and yr_1972 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 1973, CAST(yr_1973 as decimal(22,6)) from country_indicator_flat where yr_1973 is not NULL and yr_1973 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 1974, CAST(yr_1974 as decimal(22,6)) from country_indicator_flat where yr_1974 is not NULL and yr_1974 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 1975, CAST(yr_1975 as decimal(22,6)) from country_indicator_flat where yr_1975 is not NULL and yr_1975 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 1976, CAST(yr_1976 as decimal(22,6)) from country_indicator_flat where yr_1976 is not NULL and yr_1976 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 1977, CAST(yr_1977 as decimal(22,6)) from country_indicator_flat where yr_1977 is not NULL and yr_1977 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 1978, CAST(yr_1978 as decimal(22,6)) from country_indicator_flat where yr_1978 is not NULL and yr_1978 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 1979, CAST(yr_1979 as decimal(22,6)) from country_indicator_flat where yr_1979 is not NULL and yr_1979 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 1980, CAST(yr_1980 as decimal(22,6)) from country_indicator_flat where yr_1980 is not NULL and yr_1980 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 1981, CAST(yr_1981 as decimal(22,6)) from country_indicator_flat where yr_1981 is not NULL and yr_1981 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 1982, CAST(yr_1982 as decimal(22,6)) from country_indicator_flat where yr_1982 is not NULL and yr_1982 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 1983, CAST(yr_1983 as decimal(22,6)) from country_indicator_flat where yr_1983 is not NULL and yr_1983 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 1984, CAST(yr_1984 as decimal(22,6)) from country_indicator_flat where yr_1984 is not NULL and yr_1984 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 1985, CAST(yr_1985 as decimal(22,6)) from country_indicator_flat where yr_1985 is not NULL and yr_1985 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 1986, CAST(yr_1986 as decimal(22,6)) from country_indicator_flat where yr_1986 is not NULL and yr_1986 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 1987, CAST(yr_1987 as decimal(22,6)) from country_indicator_flat where yr_1987 is not NULL and yr_1987 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 1988, CAST(yr_1988 as decimal(22,6)) from country_indicator_flat where yr_1988 is not NULL and yr_1988 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 1989, CAST(yr_1989 as decimal(22,6)) from country_indicator_flat where yr_1989 is not NULL and yr_1989 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 1990, CAST(yr_1990 as decimal(22,6)) from country_indicator_flat where yr_1990 is not NULL and yr_1990 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 1991, CAST(yr_1991 as decimal(22,6)) from country_indicator_flat where yr_1991 is not NULL and yr_1991 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 1992, CAST(yr_1992 as decimal(22,6)) from country_indicator_flat where yr_1992 is not NULL and yr_1992 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 1993, CAST(yr_1993 as decimal(22,6)) from country_indicator_flat where yr_1993 is not NULL and yr_1993 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 1994, CAST(yr_1994 as decimal(22,6)) from country_indicator_flat where yr_1994 is not NULL and yr_1994 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 1995, CAST(yr_1995 as decimal(22,6)) from country_indicator_flat where yr_1995 is not NULL and yr_1995 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 1996, CAST(yr_1996 as decimal(22,6)) from country_indicator_flat where yr_1996 is not NULL and yr_1996 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 1997, CAST(yr_1997 as decimal(22,6)) from country_indicator_flat where yr_1997 is not NULL and yr_1997 REGEXP '[eE+-.0-9]';

insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 1998, CAST(yr_1998 as decimal(22,6)) from country_indicator_flat where yr_1998 is not NULL and yr_1998 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 1999, CAST(yr_1999 as decimal(22,6)) from country_indicator_flat where yr_1999 is not NULL and yr_1999 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 2000, CAST(yr_2000 as decimal(22,6)) from country_indicator_flat where yr_2000 is not NULL and yr_2000 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 2001, CAST(yr_2001 as decimal(22,6)) from country_indicator_flat where yr_2001 is not NULL and yr_2001 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 2002, CAST(yr_2002 as decimal(22,6)) from country_indicator_flat where yr_2002 is not NULL and yr_2002 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 2003, CAST(yr_2003 as decimal(22,6)) from country_indicator_flat where yr_2003 is not NULL and yr_2003 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 2004, CAST(yr_2004 as decimal(22,6)) from country_indicator_flat where yr_2004 is not NULL and yr_2004 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 2005, CAST(yr_2005 as decimal(22,6)) from country_indicator_flat where yr_2005 is not NULL and yr_2005 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 2006, CAST(yr_2006 as decimal(22,6)) from country_indicator_flat where yr_2006 is not NULL and yr_2006 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 2007, CAST(yr_2007 as decimal(22,6)) from country_indicator_flat where yr_2007 is not NULL and yr_2007 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 2008, CAST(yr_2008 as decimal(22,6)) from country_indicator_flat where yr_2008 is not NULL and yr_2008 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 2009, CAST(yr_2009 as decimal(22,6)) from country_indicator_flat where yr_2009 is not NULL and yr_2009 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 2010, CAST(yr_2010 as decimal(22,6)) from country_indicator_flat where yr_2010 is not NULL and yr_2010 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 2011, CAST(yr_2011 as decimal(22,6)) from country_indicator_flat where yr_2011 is not NULL and yr_2011 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 2012, CAST(yr_2012 as decimal(22,6)) from country_indicator_flat where yr_2012 is not NULL and yr_2012 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 2013, CAST(yr_2013 as decimal(22,6)) from country_indicator_flat where yr_2013 is not NULL and yr_2013 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 2014, CAST(yr_2014 as decimal(22,6)) from country_indicator_flat where yr_2014 is not NULL and yr_2014 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 2015, CAST(yr_2015 as decimal(22,6)) from country_indicator_flat where yr_2015 is not NULL and yr_2015 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 2016, CAST(yr_2016 as decimal(22,6)) from country_indicator_flat where yr_2016 is not NULL and yr_2016 REGEXP '[eE+-.0-9]';
insert into country_indicator (country_code, indicator_code, year, indicator_value) select country_code, indicator_code, 2017, CAST(yr_2017 as decimal(22,6)) from country_indicator_flat where yr_2017 is not NULL and yr_2017 REGEXP '[eE+-.0-9]';

!

