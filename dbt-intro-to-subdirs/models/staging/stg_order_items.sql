{{ config(
    materialized='view'
) }}

with order_items as (

    select
        order_item_id,
        order_id,
        product_id,
        quantity,
        price,
        created_at
    from
        {{ source('jaffle_shop', 'order_items') }}

)

select
    order_item_id,
    order_id,
    product_id,
    quantity,
    price,
    created_at
from
    order_items