{{ config(
    materialized='view'
) }}

with supplies as (
    select
        supply_id,
        supply_name,
        supply_category,
        supply_cost,
        supply_quantity,
        created_at
    from {{ source('jaffle_shop', 'supplies') }}
)

select
    supply_id,
    supply_name,
    supply_category,
    supply_cost,
    supply_quantity,
    created_at
from supplies