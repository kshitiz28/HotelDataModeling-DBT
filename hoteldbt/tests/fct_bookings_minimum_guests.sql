select
    *
from
    {{ ref('fct_bookings') }}
where NO_GUESTS < 1
Limit 10