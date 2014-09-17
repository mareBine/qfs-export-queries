SET @cc = 'DE';

select AggregationPeriod, 
	COUNT(IF(Year = 1992, 1, null)) AS '1992',
	COUNT(IF(Year = 1993, 1, null)) AS '1993',
	COUNT(IF(Year = 1994, 1, null)) AS '1994',
	COUNT(IF(Year = 1995, 1, null)) AS '1995',
	COUNT(IF(Year = 1996, 1, null)) AS '1996',
	COUNT(IF(Year = 1997, 1, null)) AS '1997',
	COUNT(IF(Year = 1998, 1, null)) AS '1998',
	COUNT(IF(Year = 1999, 1, null)) AS '1999',
	COUNT(IF(Year = 2000, 1, null)) AS '2000',
	COUNT(IF(Year = 2001, 1, null)) AS '2001',
	COUNT(IF(Year = 2002, 1, null)) AS '2002',
	COUNT(IF(Year = 2003, 1, null)) AS '2003',
	COUNT(IF(Year = 2004, 1, null)) AS '2004',
	COUNT(IF(Year = 2005, 1, null)) AS '2005',
	COUNT(IF(Year = 2006, 1, null)) AS '2006',
	COUNT(IF(Year = 2007, 1, null)) AS '2007',
	COUNT(IF(Year = 2008, 1, null)) AS '2008',
	COUNT(IF(Year = 2009, 1, null)) AS '2009',
	COUNT(IF(Year = 2010, 1, null)) AS '2010',
	COUNT(IF(Year = 2011, 1, null)) AS '2011',
	COUNT(IF(Year = 2012, 1, null)) AS '2012',
	COUNT(IF(Year between 1992 and 2012, 1, null)) AS 'Grand Total'

from data_nutrients

where 1
# država
and CountryCode = @cc
# splošni pogoj
and dataset_record = 1
and (RecordDelete is null or RecordDelete != 1)

GROUP BY AggregationPeriod

UNION

select 'Total' AS AggregationPeriod, 
	COUNT(IF(Year = 1992, 1, null)) AS '1992',
	COUNT(IF(Year = 1993, 1, null)) AS '1993',
	COUNT(IF(Year = 1994, 1, null)) AS '1994',
	COUNT(IF(Year = 1995, 1, null)) AS '1995',
	COUNT(IF(Year = 1996, 1, null)) AS '1996',
	COUNT(IF(Year = 1997, 1, null)) AS '1997',
	COUNT(IF(Year = 1998, 1, null)) AS '1998',
	COUNT(IF(Year = 1999, 1, null)) AS '1999',
	COUNT(IF(Year = 2000, 1, null)) AS '2000',
	COUNT(IF(Year = 2001, 1, null)) AS '2001',
	COUNT(IF(Year = 2002, 1, null)) AS '2002',
	COUNT(IF(Year = 2003, 1, null)) AS '2003',
	COUNT(IF(Year = 2004, 1, null)) AS '2004',
	COUNT(IF(Year = 2005, 1, null)) AS '2005',
	COUNT(IF(Year = 2006, 1, null)) AS '2006',
	COUNT(IF(Year = 2007, 1, null)) AS '2007',
	COUNT(IF(Year = 2008, 1, null)) AS '2008',
	COUNT(IF(Year = 2009, 1, null)) AS '2009',
	COUNT(IF(Year = 2010, 1, null)) AS '2010',
	COUNT(IF(Year = 2011, 1, null)) AS '2011',
	COUNT(IF(Year = 2012, 1, null)) AS '2012',
	COUNT(IF(Year between 1992 and 2012, 1, null)) AS 'Grand Total'

from data_nutrients

where 1
# država
and CountryCode = @cc

# splošni pogoj
and dataset_record = 1
and (RecordDelete is null or RecordDelete != 1);

