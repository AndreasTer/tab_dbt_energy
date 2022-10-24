with regions as (
    select * from {{ ref('stg_regions') }}
)

select *
from regions