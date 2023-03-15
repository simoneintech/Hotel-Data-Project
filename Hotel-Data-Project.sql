-- creating temp table to combine all 
-- data into one table

select * 
INTO HotelsData
from [Hotel-Revenue-Porject].dbo.['2018$']
UNION ALL
select *
from [Hotel-Revenue-Porject].dbo.['2019$']
UNION ALL 
select *
from [Hotel-Revenue-Porject].dbo.['2020$']

select *
from HotelsData

-- is hotel rev growing by year?

select stays_in_week_nights+stays_in_weekend_nights from HotelsData 

-- multiply above by adr (daily rate) for revenue 

select (stays_in_week_nights+stays_in_weekend_nights)*adr 
as Revenue from HotelsData 

-- we want to see if revenue is increasing by year


select 
arrival_date_year,
(stays_in_week_nights+stays_in_weekend_nights)*adr 
as Revenue from HotelsData 

-- need to group this, and sum it by year
-- used round statement to have numbers rounded


select 
arrival_date_year,
ROUND(SUM((stays_in_week_nights+stays_in_weekend_nights)*adr),2)
as Revenue from HotelsData 
group by arrival_date_year

-- break it down by hotel type

select 
arrival_date_year,
hotel,
ROUND(SUM((stays_in_week_nights+stays_in_weekend_nights)*adr),2)
as Revenue from HotelsData 
group by arrival_date_year, hotel
order by 1,2

select * from
dbo.market_segment$

select * from HotelsData
left join dbo.market_segment$
on HotelsData.market_segment = 
market_segment$.market_segment
left join dbo.meal_cost$
on meal_cost$.meal = HotelsData.meal
 

select market_segment,
	   meal,
	   arrival_date_year,
	   hotel,
ROUND(SUM((stays_in_week_nights+stays_in_weekend_nights)*adr),2)
as Revenue from HotelsData 
group by market_segment, meal, arrival_date_year, hotel
order by 3,4

-- query for power.bi 




select * 
INTO HotelsData
from [Hotel-Revenue-Porject].dbo.['2018$']
UNION ALL
select *
from [Hotel-Revenue-Porject].dbo.['2019$']
UNION ALL 
select *
from [Hotel-Revenue-Porject].dbo.['2020$']

select * from HotelsData
left join dbo.market_segment$
on HotelsData.market_segment = 
market_segment$.market_segment
left join dbo.meal_cost$
on meal_cost$.meal = HotelsData.meal

-- note for final anaylsis 

-- there's been an 11,823,480.07 increase in revenue
-- from 2018-2019 for City Hotel and a -4,917,007.34
-- loss from 2019-2020 for City Hotel

-- there's been an 7,179,863.01 increase in revenue
-- from 2018-2019 for Resort Hotel and a -3,869,672.53
-- loss from 2019-2020 for City Hotel



