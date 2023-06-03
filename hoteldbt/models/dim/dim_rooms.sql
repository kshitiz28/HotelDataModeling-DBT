with src_rooms as (
    select * from {{ ref('src_rooms') }}
)
select 
    * 
from 
    src_rooms