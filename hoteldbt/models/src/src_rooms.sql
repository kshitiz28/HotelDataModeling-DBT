WITH raw_rooms AS (
    SELECT
        *
    FROM
        {{ source('hoteldbt', 'rooms') }}
)
SELECT
    *
FROM
    raw_rooms