with energy as (
    select * from {{ ref('stg_energy') }}

),

co2 as (
    select * from {{ ref('stg_co2') }}
)

select
        a.country as country,
        a.year as year,
        max(a.population) as population,
        max(a.gdp) as gdp,
        max(a.energy_per_capita) as energy_per_capita,
        max(a.energy_per_gdp) as energy_per_gdp,
        max(a.electricity_demand) as electricity_demand,
        max(a.electricity_generation) as electricity_generation,
        max(a.per_capita_electricity) as per_capita_electricity,
        max(a.primary_energy_consumption) as primary_energy_consumption,
        max(a.carbon_intensity_elec) as carbon_intensity_elec,
        max(a.fossil_elec_per_capita) as fossil_elec_per_capita,
        max(a.fossil_electricity) as fossil_electricity,
        max(a.fossil_energy_per_capita) as fossil_energy_per_capita,
        max(a.fossil_fuel_consumption) as fossil_fuel_consumption,
        max(a.renewables_consumption) as renewables_consumption,
        max(a.renewables_elec_per_capita) as renewables_elec_per_capita,
        max(a.renewables_electricity) as renewables_electricity,
        max(a.renewables_energy_per_capita) as renewables_energy_per_capita,
        max(b.co2) as co2,
        max(b.co2_per_gdp) as co2_per_gdp,
        max(b.co2_per_capita) as co2_per_capita,
        max(b.total_ghg) as total_ghg
 
from energy as a
left join co2 as b on a.country = b.country AND a.year = b.year
group by 1,2