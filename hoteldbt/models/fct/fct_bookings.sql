{{
  config(
    materialized = 'incremental',
    on_schema_change='fail'
    )
}}

with src_bookings as (
    select * from {{ ref('src_bookings') }}
)
select 
    * 
from 
    src_bookings

{% if is_incremental() %}
 AND BOOKING_DATE > (select max(BOOKING_DATE) from {{ this }})
{% endif %}
