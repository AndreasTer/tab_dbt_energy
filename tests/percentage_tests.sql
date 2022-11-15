/*
select
    continent,
    sum(Electricity_Percentage_Per_Continent) as continent_total
from {{ ref('energy_gov') }}
group by 1
having not(continent_total > 0.99)
*/