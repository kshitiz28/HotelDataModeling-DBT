with src_hotels as (
    select * from {{ ref('src_hotels') }}
)
select 
    * 
from 
    src_hotels