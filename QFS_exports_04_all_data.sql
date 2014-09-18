SET @cc = 'DE';

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

#GROUP BY CountryCode, NationalStationID
;