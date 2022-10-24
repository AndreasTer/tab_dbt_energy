
with source as (

    select * from {{ source('DBT_DEMO', 'RAW_CO2') }}

),

renamed as (

    select		
 		"country" as country,
		"year" as year,
		"iso_code" as iso_code,
		"population" as population,
		"gdp" as gdp,
		"cement_co2" as cement_co2,
		"cement_co2_per_capita" as cement_co2_per_capita,
		"co2" as co2,
		"co2_growth_abs" as co2_growth_abs,
		"co2_growth_prct" as co2_growth_prct,
		"co2_per_capita" as co2_per_capita,
		"co2_per_gdp" as co2_per_gdp,
		"co2_per_unit_energy" as co2_per_unit_energy,
		"coal_co2" as coal_co2,
		"coal_co2_per_capita" as coal_co2_per_capita,
		"consumption_co2" as consumption_co2,
		"consumption_co2_per_capita" as consumption_co2_per_capita,
		"consumption_co2_per_gdp" as consumption_co2_per_gdp,
		"cumulative_cement_co2" as cumulative_cement_co2,
		"cumulative_co2" as cumulative_co2,
		"cumulative_coal_co2" as cumulative_coal_co2,
		"cumulative_flaring_co2" as cumulative_flaring_co2,
		"cumulative_gas_co2" as cumulative_gas_co2,
		"cumulative_oil_co2" as cumulative_oil_co2,
		"cumulative_other_co2" as cumulative_other_co2,
		"energy_per_capita" as energy_per_capita,
		"energy_per_gdp" as energy_per_gdp,
		"flaring_co2" as flaring_co2,
		"flaring_co2_per_capita" as flaring_co2_per_capita,
		"gas_co2" as gas_co2,
		"gas_co2_per_capita" as gas_co2_per_capita,
		"ghg_excluding_lucf_per_capita" as ghg_excluding_lucf_per_capita,
		"ghg_per_capita" as ghg_per_capita,
		"methane" as methane,
		"methane_per_capita" as methane_per_capita,
		"nitrous_oxide" as nitrous_oxide,
		"nitrous_oxide_per_capita" as nitrous_oxide_per_capita,
		"oil_co2" as oil_co2,
		"oil_co2_per_capita" as oil_co2_per_capita,
		"other_co2_per_capita" as other_co2_per_capita,
		"other_industry_co2" as other_industry_co2,
		"primary_energy_consumption" as primary_energy_consumption,
		"share_global_cement_co2" as share_global_cement_co2,
		"share_global_co2" as share_global_co2,
		"share_global_coal_co2" as share_global_coal_co2,
		"share_global_cumulative_cement_co2" as share_global_cumulative_cement_co2,
		"share_global_cumulative_co2" as share_global_cumulative_co2,
		"share_global_cumulative_coal_co2" as share_global_cumulative_coal_co2,
		"share_global_cumulative_flaring_co2" as share_global_cumulative_flaring_co2,
		"share_global_cumulative_gas_co2" as share_global_cumulative_gas_co2,
		"share_global_cumulative_oil_co2" as share_global_cumulative_oil_co2,
		"share_global_cumulative_other_co2" as share_global_cumulative_other_co2,
		"share_global_flaring_co2" as share_global_flaring_co2,
		"share_global_gas_co2" as share_global_gas_co2,
		"share_global_oil_co2" as share_global_oil_co2,
		"share_global_other_co2" as share_global_other_co2,
		"total_ghg" as total_ghg,
		"total_ghg_excluding_lucf" as total_ghg_excluding_lucf,
		"trade_co2" as trade_co2,
		"trade_co2_share" as trade_co2_share

    from source

)

select * from renamed
