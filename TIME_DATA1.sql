use Python_project

select * from TimeSeries_Data
select * from DistrictWise_Data
select * from StateWise_Data

select state,sum(confirmed) from TimeSeries_Data where State like 'AN' group by State

select *,lead(confirmed) over (order by confirmed) as lead,lag(confirmed) over (order by confirmed) as lag  from TimeSeries_Data where State like 'AN'

select state, date,
isnull(confirmed - lag(confirmed) over (order by state, date),1) as Confirmed,
isnull(deceased - lag(deceased) over (order by state,date),0) as Deceaseds,
isnull(recovered -lag(recovered) over (order by state,date),0) as Recovered,
isnull(tested - lag(tested) over (order by state,date),0) as Tested,
isnull(vaccinated1 - lag(vaccinated1) over (order by state,date),0) as Vaccinated1,
isnull(vaccinated2 - lag(vaccinated2) over (order by state,date),0) as Vaccinated2 from TimeSeries_Data where state = 'AN'
union all
select state, date,
isnull(confirmed - lag(confirmed) over (order by state, date),1) as Confirmed,
isnull(deceased - lag(deceased) over (order by state,date),0) as Deceaseds,
isnull(recovered -lag(recovered) over (order by state,date),0) as Recovered,
isnull(tested - lag(tested) over (order by state,date),0) as Tested,
isnull(vaccinated1 - lag(vaccinated1) over (order by state,date),0) as Vaccinated1,
isnull(vaccinated2 - lag(vaccinated2) over (order by state,date),0) as Vaccinated2 from TimeSeries_Data where state = 'AP'
union
select state, date,
isnull(confirmed - lag(confirmed) over (order by state, date),1) as Confirmed,
isnull(deceased - lag(deceased) over (order by state,date),0) as Deceaseds,
isnull(recovered -lag(recovered) over (order by state,date),0) as Recovered,
isnull(tested - lag(tested) over (order by state,date),0) as Tested,
isnull(vaccinated1 - lag(vaccinated1) over (order by state,date),0) as Vaccinated1,
isnull(vaccinated2 - lag(vaccinated2) over (order by state,date),0) as Vaccinated2 from TimeSeries_Data where state = 'AR'
union all
select state, date,
isnull(confirmed - lag(confirmed) over (order by state, date),1) as Confirmed,
isnull(deceased - lag(deceased) over (order by state,date),0) as Deceaseds,
isnull(recovered -lag(recovered) over (order by state,date),0) as Recovered,
isnull(tested - lag(tested) over (order by state,date),0) as Tested,
isnull(vaccinated1 - lag(vaccinated1) over (order by state,date),0) as Vaccinated1,
isnull(vaccinated2 - lag(vaccinated2) over (order by state,date),0) as Vaccinated2 from TimeSeries_Data where state = 'AS'
union all
select state, date,
isnull(confirmed - lag(confirmed) over (order by state, date),2) as Confirmed,
isnull(deceased - lag(deceased) over (order by state,date),0) as Deceaseds,
isnull(recovered -lag(recovered) over (order by state,date),0) as Recovered,
isnull(tested - lag(tested) over (order by state,date),0) as Tested,
isnull(vaccinated1 - lag(vaccinated1) over (order by state,date),0) as Vaccinated1,
isnull(vaccinated2 - lag(vaccinated2) over (order by state,date),0) as Vaccinated2 from TimeSeries_Data where state = 'BR'
union all
select state, date,
isnull(confirmed - lag(confirmed) over (order by state, date),1) as Confirmed,
isnull(deceased - lag(deceased) over (order by state,date),0) as Deceaseds,
isnull(recovered -lag(recovered) over (order by state,date),0) as Recovered,
isnull(tested - lag(tested) over (order by state,date),0) as Tested,
isnull(vaccinated1 - lag(vaccinated1) over (order by state,date),0) as Vaccinated1,
isnull(vaccinated2 - lag(vaccinated2) over (order by state,date),0) as Vaccinated2 from TimeSeries_Data where state = 'CH'
union all
select state, date,
isnull(confirmed - lag(confirmed) over (order by state, date),1) as Confirmed,
isnull(deceased - lag(deceased) over (order by state,date),0) as Deceaseds,
isnull(recovered -lag(recovered) over (order by state,date),0) as Recovered,
isnull(tested - lag(tested) over (order by state,date),0) as Tested,
isnull(vaccinated1 - lag(vaccinated1) over (order by state,date),0) as Vaccinated1,
isnull(vaccinated2 - lag(vaccinated2) over (order by state,date),0) as Vaccinated2 from TimeSeries_Data where state = 'CT'
union all
select state, date,
isnull(confirmed - lag(confirmed) over (order by state, date),1) as Confirmed,
isnull(deceased - lag(deceased) over (order by state,date),0) as Deceaseds,
isnull(recovered -lag(recovered) over (order by state,date),0) as Recovered,
isnull(tested - lag(tested) over (order by state,date),0) as Tested,
isnull(vaccinated1 - lag(vaccinated1) over (order by state,date),0) as Vaccinated1,
isnull(vaccinated2 - lag(vaccinated2) over (order by state,date),0) as Vaccinated2 from TimeSeries_Data where state = 'DL'
union all
select state, date,
isnull(confirmed - lag(confirmed) over (order by state, date),0) as Confirmed,
isnull(deceased - lag(deceased) over (order by state,date),0) as Deceaseds,
isnull(recovered -lag(recovered) over (order by state,date),0) as Recovered,
isnull(tested - lag(tested) over (order by state,date),80) as Tested,
isnull(vaccinated1 - lag(vaccinated1) over (order by state,date),0) as Vaccinated1,
isnull(vaccinated2 - lag(vaccinated2) over (order by state,date),0) as Vaccinated2 from TimeSeries_Data where state = 'DN'
union all
select state, date,
isnull(confirmed - lag(confirmed) over (order by state, date),3) as Confirmed,
isnull(deceased - lag(deceased) over (order by state,date),0) as Deceaseds,
isnull(recovered -lag(recovered) over (order by state,date),0) as Recovered,
isnull(tested - lag(tested) over (order by state,date),0) as Tested,
isnull(vaccinated1 - lag(vaccinated1) over (order by state,date),0) as Vaccinated1,
isnull(vaccinated2 - lag(vaccinated2) over (order by state,date),0) as Vaccinated2 from TimeSeries_Data where state = 'GA'
union all
select state, date,
isnull(confirmed - lag(confirmed) over (order by state, date),2) as Confirmed,
isnull(deceased - lag(deceased) over (order by state,date),0) as Deceaseds,
isnull(recovered -lag(recovered) over (order by state,date),0) as Recovered,
isnull(tested - lag(tested) over (order by state,date),0) as Tested,
isnull(vaccinated1 - lag(vaccinated1) over (order by state,date),0) as Vaccinated1,
isnull(vaccinated2 - lag(vaccinated2) over (order by state,date),0) as Vaccinated2 from TimeSeries_Data where state = 'Gj'
union all
select state, date,
isnull(confirmed - lag(confirmed) over (order by state, date),0) as Confirmed,
isnull(deceased - lag(deceased) over (order by state,date),0) as Deceaseds,
isnull(recovered -lag(recovered) over (order by state,date),0) as Recovered,
isnull(tested - lag(tested) over (order by state,date),0) as Tested,
isnull(vaccinated1 - lag(vaccinated1) over (order by state,date),0) as Vaccinated1,
isnull(vaccinated2 - lag(vaccinated2) over (order by state,date),0) as Vaccinated2 from TimeSeries_Data where state = 'HP'
union all
select state, date,
isnull(confirmed - lag(confirmed) over (order by state, date),14 ) as Confirmed,
isnull(deceased - lag(deceased) over (order by state,date),0) as Deceaseds,
isnull(recovered -lag(recovered) over (order by state,date),0) as Recovered,
isnull(tested - lag(tested) over (order by state,date),0) as Tested,
isnull(vaccinated1 - lag(vaccinated1) over (order by state,date),0) as Vaccinated1,
isnull(vaccinated2 - lag(vaccinated2) over (order by state,date),0) as Vaccinated2 from TimeSeries_Data where state = 'HR'
union all
select state, date,
isnull(confirmed - lag(confirmed) over (order by state, date),1) as Confirmed,
isnull(deceased - lag(deceased) over (order by state,date),0) as Deceaseds,
isnull(recovered -lag(recovered) over (order by state,date),0) as Recovered,
isnull(tested - lag(tested) over (order by state,date),0) as Tested,
isnull(vaccinated1 - lag(vaccinated1) over (order by state,date),0) as Vaccinated1,
isnull(vaccinated2 - lag(vaccinated2) over (order by state,date),0) as Vaccinated2 from TimeSeries_Data where state = 'JH'
union all
select state, date,
isnull(confirmed - lag(confirmed) over (order by state, date),1) as Confirmed,
isnull(deceased - lag(deceased) over (order by state,date),0) as Deceaseds,
isnull(recovered -lag(recovered) over (order by state,date),0) as Recovered,
isnull(tested - lag(tested) over (order by state,date),0) as Tested,
isnull(vaccinated1 - lag(vaccinated1) over (order by state,date),0) as Vaccinated1,
isnull(vaccinated2 - lag(vaccinated2) over (order by state,date),0) as Vaccinated2 from TimeSeries_Data where state = 'JK'
union all
select state, date,
isnull(confirmed - lag(confirmed) over (order by state, date),1) as Confirmed,
isnull(deceased - lag(deceased) over (order by state,date),0) as Deceaseds,
isnull(recovered -lag(recovered) over (order by state,date),0) as Recovered,
isnull(tested - lag(tested) over (order by state,date),0) as Tested,
isnull(vaccinated1 - lag(vaccinated1) over (order by state,date),0) as Vaccinated1,
isnull(vaccinated2 - lag(vaccinated2) over (order by state,date),0) as Vaccinated2 from TimeSeries_Data where state = 'KA'
union all
select state, date,
isnull(confirmed - lag(confirmed) over (order by state, date),1) as Confirmed,
isnull(deceased - lag(deceased) over (order by state,date),0) as Deceaseds,
isnull(recovered -lag(recovered) over (order by state,date),0) as Recovered,
isnull(tested - lag(tested) over (order by state,date),0) as Tested,
isnull(vaccinated1 - lag(vaccinated1) over (order by state,date),0) as Vaccinated1,
isnull(vaccinated2 - lag(vaccinated2) over (order by state,date),0) as Vaccinated2 from TimeSeries_Data where state = 'KL'
union all
select state, date,
isnull(confirmed - lag(confirmed) over (order by state, date),2) as Confirmed,
isnull(deceased - lag(deceased) over (order by state,date),0) as Deceaseds,
isnull(recovered -lag(recovered) over (order by state,date),0) as Recovered,
isnull(tested - lag(tested) over (order by state,date),0) as Tested,
isnull(vaccinated1 - lag(vaccinated1) over (order by state,date),0) as Vaccinated1,
isnull(vaccinated2 - lag(vaccinated2) over (order by state,date),0) as Vaccinated2 from TimeSeries_Data where state = 'LA'
union all
select state, date,
isnull(confirmed - lag(confirmed) over (order by state, date),0) as Confirmed,
isnull(deceased - lag(deceased) over (order by state,date),0) as Deceaseds,
isnull(recovered -lag(recovered) over (order by state,date),0) as Recovered,
isnull(tested - lag(tested) over (order by state,date),0) as Tested,
isnull(vaccinated1 - lag(vaccinated1) over (order by state,date),21) as Vaccinated1,
isnull(vaccinated2 - lag(vaccinated2) over (order by state,date),0) as Vaccinated2 from TimeSeries_Data where state = 'LD'
union all
select state, date,
isnull(confirmed - lag(confirmed) over (order by state, date),2) as Confirmed,
isnull(deceased - lag(deceased) over (order by state,date),0) as Deceaseds,
isnull(recovered -lag(recovered) over (order by state,date),0) as Recovered,
isnull(tested - lag(tested) over (order by state,date),0) as Tested,
isnull(vaccinated1 - lag(vaccinated1) over (order by state,date),0) as Vaccinated1,
isnull(vaccinated2 - lag(vaccinated2) over (order by state,date),0) as Vaccinated2 from TimeSeries_Data where state = 'MH'
union all
select state, date,
isnull(confirmed - lag(confirmed) over (order by state, date),1) as Confirmed,
isnull(deceased - lag(deceased) over (order by state,date),0) as Deceaseds,
isnull(recovered -lag(recovered) over (order by state,date),0) as Recovered,
isnull(tested - lag(tested) over (order by state,date),0) as Tested,
isnull(vaccinated1 - lag(vaccinated1) over (order by state,date),0) as Vaccinated1,
isnull(vaccinated2 - lag(vaccinated2) over (order by state,date),0) as Vaccinated2 from TimeSeries_Data where state = 'ML'
union all
select state, date,
isnull(confirmed - lag(confirmed) over (order by state, date),1) as Confirmed,
isnull(deceased - lag(deceased) over (order by state,date),0) as Deceaseds,
isnull(recovered -lag(recovered) over (order by state,date),0) as Recovered,
isnull(tested - lag(tested) over (order by state,date),0) as Tested,
isnull(vaccinated1 - lag(vaccinated1) over (order by state,date),0) as Vaccinated1,
isnull(vaccinated2 - lag(vaccinated2) over (order by state,date),0) as Vaccinated2 from TimeSeries_Data where state = 'MN'
union all
select state, date,
isnull(confirmed - lag(confirmed) over (order by state, date),4) as Confirmed,
isnull(deceased - lag(deceased) over (order by state,date),0) as Deceaseds,
isnull(recovered -lag(recovered) over (order by state,date),0) as Recovered,
isnull(tested - lag(tested) over (order by state,date),0) as Tested,
isnull(vaccinated1 - lag(vaccinated1) over (order by state,date),0) as Vaccinated1,
isnull(vaccinated2 - lag(vaccinated2) over (order by state,date),0) as Vaccinated2 from TimeSeries_Data where state = 'MP'
union all
select state, date,
isnull(confirmed - lag(confirmed) over (order by state, date),0) as Confirmed,
isnull(deceased - lag(deceased) over (order by state,date),0) as Deceaseds,
isnull(recovered -lag(recovered) over (order by state,date),0) as Recovered,
isnull(tested - lag(tested) over (order by state,date),0) as Tested,
isnull(vaccinated1 - lag(vaccinated1) over (order by state,date),0) as Vaccinated1,
isnull(vaccinated2 - lag(vaccinated2) over (order by state,date),0) as Vaccinated2 from TimeSeries_Data where state = 'MZ'
union all
select state, date,
isnull(confirmed - lag(confirmed) over (order by state, date),1) as Confirmed,
isnull(deceased - lag(deceased) over (order by state,date),0) as Deceaseds,
isnull(recovered -lag(recovered) over (order by state,date),0) as Recovered,
isnull(tested - lag(tested) over (order by state,date),0) as Tested,
isnull(vaccinated1 - lag(vaccinated1) over (order by state,date),0) as Vaccinated1,
isnull(vaccinated2 - lag(vaccinated2) over (order by state,date),0) as Vaccinated2 from TimeSeries_Data where state = 'NL'
union all
select state, date,
isnull(confirmed - lag(confirmed) over (order by state, date),1) as Confirmed,
isnull(deceased - lag(deceased) over (order by state,date),0) as Deceaseds,
isnull(recovered -lag(recovered) over (order by state,date),0) as Recovered,
isnull(tested - lag(tested) over (order by state,date),0) as Tested,
isnull(vaccinated1 - lag(vaccinated1) over (order by state,date),0) as Vaccinated1,
isnull(vaccinated2 - lag(vaccinated2) over (order by state,date),0) as Vaccinated2 from TimeSeries_Data where state = 'OR'
union all
select state, date,
isnull(confirmed - lag(confirmed) over (order by state, date),1) as Confirmed,
isnull(deceased - lag(deceased) over (order by state,date),0) as Deceaseds,
isnull(recovered -lag(recovered) over (order by state,date),0) as Recovered,
isnull(tested - lag(tested) over (order by state,date),0) as Tested,
isnull(vaccinated1 - lag(vaccinated1) over (order by state,date),0) as Vaccinated1,
isnull(vaccinated2 - lag(vaccinated2) over (order by state,date),0) as Vaccinated2 from TimeSeries_Data where state = 'PB'
union all
select state, date,
isnull(confirmed - lag(confirmed) over (order by state, date),1) as Confirmed,
isnull(deceased - lag(deceased) over (order by state,date),0) as Deceaseds,
isnull(recovered -lag(recovered) over (order by state,date),0) as Recovered,
isnull(tested - lag(tested) over (order by state,date),0) as Tested,
isnull(vaccinated1 - lag(vaccinated1) over (order by state,date),0) as Vaccinated1,
isnull(vaccinated2 - lag(vaccinated2) over (order by state,date),0) as Vaccinated2 from TimeSeries_Data where state = 'PY'
union all
select state, date,
isnull(confirmed - lag(confirmed) over (order by state, date),1) as Confirmed,
isnull(deceased - lag(deceased) over (order by state,date),0) as Deceaseds,
isnull(recovered -lag(recovered) over (order by state,date),0) as Recovered,
isnull(tested - lag(tested) over (order by state,date),0) as Tested,
isnull(vaccinated1 - lag(vaccinated1) over (order by state,date),0) as Vaccinated1,
isnull(vaccinated2 - lag(vaccinated2) over (order by state,date),0) as Vaccinated2 from TimeSeries_Data where state = 'RJ'
union all
select state, date,
isnull(confirmed - lag(confirmed) over (order by state, date),0) as Confirmed,
isnull(deceased - lag(deceased) over (order by state,date),0) as Deceaseds,
isnull(recovered -lag(recovered) over (order by state,date),0) as Recovered,
isnull(tested - lag(tested) over (order by state,date),0) as Tested,
isnull(vaccinated1 - lag(vaccinated1) over (order by state,date),0) as Vaccinated1,
isnull(vaccinated2 - lag(vaccinated2) over (order by state,date),0) as Vaccinated2 from TimeSeries_Data where state = 'SK'
union all
select state, date,
isnull(confirmed - lag(confirmed) over (order by state, date),1) as Confirmed,
isnull(deceased - lag(deceased) over (order by state,date),0) as Deceaseds,
isnull(recovered -lag(recovered) over (order by state,date),0) as Recovered,
isnull(tested - lag(tested) over (order by state,date),0) as Tested,
isnull(vaccinated1 - lag(vaccinated1) over (order by state,date),0) as Vaccinated1,
isnull(vaccinated2 - lag(vaccinated2) over (order by state,date),0) as Vaccinated2 from TimeSeries_Data where state = 'TG'
union all
select state, date,
isnull(confirmed - lag(confirmed) over (order by state, date),1) as Confirmed,
isnull(deceased - lag(deceased) over (order by state,date),0) as Deceaseds,
isnull(recovered -lag(recovered) over (order by state,date),0) as Recovered,
isnull(tested - lag(tested) over (order by state,date),0) as Tested,
isnull(vaccinated1 - lag(vaccinated1) over (order by state,date),0) as Vaccinated1,
isnull(vaccinated2 - lag(vaccinated2) over (order by state,date),0) as Vaccinated2 from TimeSeries_Data where state = 'TN'
union all
select state, date,
isnull(confirmed - lag(confirmed) over (order by state, date),1) as Confirmed,
isnull(deceased - lag(deceased) over (order by state,date),0) as Deceaseds,
isnull(recovered -lag(recovered) over (order by state,date),0) as Recovered,
isnull(tested - lag(tested) over (order by state,date),0) as Tested,
isnull(vaccinated1 - lag(vaccinated1) over (order by state,date),0) as Vaccinated1,
isnull(vaccinated2 - lag(vaccinated2) over (order by state,date),0) as Vaccinated2 from TimeSeries_Data where state = 'TR'
union all
select state, date,
isnull(confirmed - lag(confirmed) over (order by state, date),7) as Confirmed,
isnull(deceased - lag(deceased) over (order by state,date),0) as Deceaseds,
isnull(recovered -lag(recovered) over (order by state,date),0) as Recovered,
isnull(tested - lag(tested) over (order by state,date),0) as Tested,
isnull(vaccinated1 - lag(vaccinated1) over (order by state,date),0) as Vaccinated1,
isnull(vaccinated2 - lag(vaccinated2) over (order by state,date),0) as Vaccinated2 from TimeSeries_Data where state = 'UP'
union all
select state, date,
isnull(confirmed - lag(confirmed) over (order by state, date),1) as Confirmed,
isnull(deceased - lag(deceased) over (order by state,date),0) as Deceaseds,
isnull(recovered -lag(recovered) over (order by state,date),0) as Recovered,
isnull(tested - lag(tested) over (order by state,date),0) as Tested,
isnull(vaccinated1 - lag(vaccinated1) over (order by state,date),0) as Vaccinated1,
isnull(vaccinated2 - lag(vaccinated2) over (order by state,date),0) as Vaccinated2 from TimeSeries_Data where state = 'UT'
union all
select state, date,
isnull(confirmed - lag(confirmed) over (order by state, date),1) as Confirmed,
isnull(deceased - lag(deceased) over (order by state,date),0) as Deceaseds,
isnull(recovered -lag(recovered) over (order by state,date),0) as Recovered,
isnull(tested - lag(tested) over (order by state,date),0) as Tested,
isnull(vaccinated1 - lag(vaccinated1) over (order by state,date),0) as Vaccinated1,
isnull(vaccinated2 - lag(vaccinated2) over (order by state,date),0) as Vaccinated2 from TimeSeries_Data where state = 'WB'





select state,date from TimeSeries_Data ,