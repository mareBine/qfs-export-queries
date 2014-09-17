select 
	Determinand_HazSubs, count(*) as all_data, 
	COUNT(IF(AggregatedBy = 'ETC', 1, NULL)) AS reported_disagg,	
	COUNT(IF(AggregatedBy != 'ETC', 1, NULL)) AS reported_agg,	
	count(distinct CountryCode) AS no_of_distinct_countries,
	GROUP_CONCAT(DISTINCT CountryCode ORDER BY CountryCode) AS distinct_countries,
	MIN(Year), MAX(Year),
	count(distinct Year) AS distinct_years

from _dataset_hazsubs_agg

group by Determinand_HazSubs
order by all_data desc

limit 0, 50