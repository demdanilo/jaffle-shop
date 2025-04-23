{{ config(
    materialized='view'
) }}

with products as (

    select
        product_id,
        product_name,
        category,
        price,
        created_at
    from
        {{ source('jaffle_shop', 'products') }}

)

select
    *
from
    products