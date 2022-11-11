with energy as (select * from {{ ref("stg_energy") }})

select
    country,
    fossil_elec_per_capita,
    fossil_electricity,
    fossil_share_elec,
    renewables_elec_per_capita,
    renewables_electricity,
    renewables_share_elec
from energy

where year = '2020-01-01'