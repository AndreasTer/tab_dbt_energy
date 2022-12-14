
with source as (

    select * from {{ source('DBT_DEMO', 'RAW_CO2_COSTS') }}

),

renamed as (

    select
		"jurisdiction",
		"year",
		"ipcc_code",
		"Product",
		"tax",
		"ets",
		"tax_id",
		"tax_rate_excl_ex_clcu",
		"tax_ex_rate",
		"tax_rate_incl_ex_clcu",
		"tax_curr_code",
		"ets_id",
		"ets_price",
		"ets_curr_code",
		"ets_2_id",
		"ets_2_price",
		"ets_2_curr_code",
		"File Paths"
    from source

)

select * from renamed