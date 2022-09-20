use Python_project
elect * from states_delta_df

select * from delta7_district_cleaned

select state, sum(population) as Population,sum(confirmed) as Confirmed,sum(deceased) as Deceased,sum(recovered) as Recovered,sum(tested) as Tested,sum(vaccinated1) as Vaccinated1,
sum(vaccinated2) as Vaccinated2 from delta7_district_cleaned group by state

--correlation with doeses and deceased
select state,sum(deceased) as Deceased,sum(vaccinated1 + vaccinated2) as 'Dual Doses' from delta7_district_cleaned group by state

--correlation between confirmed cases and deceased cases
select state,sum(confirmed) as Confirmed , sum(deceased) as Deceased from  delta7_district_cleaned group by state

--correlation between vaccinted 1 and deceased
select state,sum(vaccinated1) as Vaccinated,sum(deceased) as deceased from   delta7_district_cleaned group by state

select state,sum(tested) as Tested,sum(confirmed) as Confirmed   from   delta7_district_cleaned group by state


select state,sum(confirmed) as Confirmed,sum(recovered) as Recovered from delta7_district_cleaned group by state

-- delta 7 wrt vaccination
select state, sum(confirmed) as Confirmed, sum(vaccinated1 + Vaccinated2) as Fully_Vaccinated from delta7_district_cleaned group by state

select state, sum(confirmed) as Confirmed, sum(Vaccinated1) as Vaccinated from delta7_district_cleaned group by state

select state, sum(confirmed) as Confirmed, sum(Vaccinated2) as Vaccinated from delta7_district_cleaned group by state



