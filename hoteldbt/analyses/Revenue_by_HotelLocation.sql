with dimhotel as (
    select * from {{ ref('dim_hotels') }}
),
factbooking as (
    select * from {{ ref('fct_bookings') }}
)
select 
    dh.city,
    fb.property_id,
    sum(fb.revenue_realized) as Revenue
from 
    factbooking fb inner join dimhotel dh
on 
    fb.property_id=dh.property_id
group by 
    dh.city,fb.PROPERTY_NAME;