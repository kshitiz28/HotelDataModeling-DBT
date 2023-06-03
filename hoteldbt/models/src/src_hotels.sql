WITH raw_hotels AS (
    SELECT
        *
    FROM
        {{ source('hoteldbt', 'hotels') }}
)
SELECT
    *
FROM
    raw_hotels