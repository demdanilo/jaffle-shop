{{ config(
    materialized='view'
) }}

with stores as (
    select
        store_id,
        store_name,
        store_location,
        created_at
    from {{ source('jaffle_shop', 'stores') }}
)

select
    store_id,
    store_name,
    store_location,
    created_at
from stores