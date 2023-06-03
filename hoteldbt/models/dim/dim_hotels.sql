with src_hotels as (
    select * from {{ ref('src_hotels') }}
)
select
    {{ dbt_utils.generate_surrogate_key(['PROPERTY_ID', 'PROPERTY_NAME', 'CATEGORY', 'CITY']) }} AS hotel_id,
    * 
from 
    src_hotels