### loop  @cc = {'SI,'HR'}
SET @cc = 'SI';

### AggregationPeriod ###
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
and CountryCode = @cc
and dataset_record = 1 and (RecordDelete is null or RecordDelete != 1)

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
and CountryCode = @cc
and dataset_record = 1 and (RecordDelete is null or RecordDelete != 1);

### Determinand_Nutrients ###
select b.`Group` AS Determinand_Group, Determinand_Nutrients, 
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

from data_nutrients as a
left join waterbase_common.tb_fiche_determinand_order as b using(Determinand_Nutrients)

where 1
and CountryCode = @cc
and dataset_record = 1 and (RecordDelete is null or RecordDelete != 1)

GROUP BY Determinand_Nutrients

UNION

select 'Total' AS Determinand_Group, NULL AS Determinand_Nutrients, 
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
and CountryCode = @cc
and dataset_record = 1 and (RecordDelete is null or RecordDelete != 1)

ORDER BY Determinand_Group;

### Mean count + number of years ###
select s.WaterbaseId, s.NationalStationName, s.RiverName, s.RBDcode,
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
	COUNT(*) AS 'Grand Total',
	COUNT(DISTINCT Year) AS 'No of years'

from data_stations as s
inner join data_nutrients as a using(CountryCode, NationalStationID)

where 1

and CountryCode = @cc
and Year between 1992 and 2012

and s.dataset_record = 1 and (s.RecordDelete is null or s.RecordDelete != 1)
and a.dataset_record = 1 and (a.RecordDelete is null or a.RecordDelete != 1)

GROUP BY CountryCode, NationalStationID

UNION

select 'Total' AS WaterbaseId, null as NationalStationName, null as RiverName, null as RBDcode, 
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
	COUNT(*) AS 'Grand Total',
	COUNT(DISTINCT Year) AS 'No of years'

from data_stations as s
inner join data_nutrients as a using(CountryCode, NationalStationID)

where 1

and CountryCode = @cc
and Year between 1992 and 2012

and s.dataset_record = 1 and (s.RecordDelete is null or s.RecordDelete != 1)
and a.dataset_record = 1 and (a.RecordDelete is null or a.RecordDelete != 1)
;

### All data ###
select 
	s.CountryCode, s.WaterbaseId, s.RiverName, s.NationalStationName, 
	n.`Year`,
	n.Determinand_Nutrients, 
	n.Mean,
	n.AggregationPeriod,
	s.RBDcode,
	s.WaterBodyID,
	s.WaterBodyName,
	n.AggregationMonths

from data_stations as s
inner join data_nutrients as n using(CountryCode, NationalStationID)

where 1

and CountryCode = @cc

and s.dataset_record = 1 and (s.RecordDelete is null or s.RecordDelete != 1)
and n.dataset_record = 1 and (n.RecordDelete is null or n.RecordDelete != 1)
;

### RBD ###
select 
	s.RBDcode, 
	COUNT(DISTINCT s.NationalStationID) AS 'No of stations'

from data_stations as s

where 1
and CountryCode = @cc
and s.dataset_record = 1 and (s.RecordDelete is null or s.RecordDelete != 1)

GROUP BY s.RBDcode
;

