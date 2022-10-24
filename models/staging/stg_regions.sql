with source as (

    select * from {{ source('DBT_DEMO', 'RAW_REGIONS') }}

),

renamed as (

    select
        "Entity" as country,
		"ISO Code" as iso_code,
		"Continent" as continent

    from source

)

select * from renamed