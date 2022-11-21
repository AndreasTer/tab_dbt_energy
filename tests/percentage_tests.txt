select
    continent,
    sum(Electricity_Percentage_Per_Continent) as continent_total
from {{ ref('energy_ds') }}
group by 1
having not(continent_total > 0.99)
