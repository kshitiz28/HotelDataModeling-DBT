{% {% snapshot scd_raw_bookings %}

{{
   config(
       target_schema='dev',
       unique_key='BOOKING_ID',
       strategy='timestamp',
       updated_at='updated_at',
       invalidate_hard_deletes=True
   )
}}

select * from {{ source('hoteldbt', 'bookings') }}

{% endsnapshot %}%}