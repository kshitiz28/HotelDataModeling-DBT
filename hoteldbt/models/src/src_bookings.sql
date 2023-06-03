WITH raw_bookings AS (
    SELECT
        *
    FROM
        {{ source('hoteldbt', 'bookings') }}
)
SELECT
    *
FROM
    raw_bookings