with energy as (select * from {{ ref("stg_energy") }}),

regions as (select * from {{ ref("dim_regions") }}),

per_country as (
        select
            regions.continent,
            regions.country,
            sum(energy.fossil_electricity) as electricity_total_country

        from energy
        left join regions on (energy.country = regions.country)
        group by 1, 2
    ),

per_continent as (
        select
            regions.continent,
            sum(energy.fossil_electricity) as electricity_total_continent
        from energy
        left join regions on (energy.country = regions.country)
        group by 1
)

select
    per_country.continent,
    per_country.country,
    (
        case
            when per_continent.electricity_total_continent <> 0
            then round(per_country.electricity_total_country / per_continent.electricity_total_continent, 0.3)
        end
    ) as Electricity_Percentage_Per_Continent
  from per_country
  INNER JOIN per_continent on (per_country.continent is not distinct from per_continent.continent)
