{{ config(
    materialized='view'
) }}

with orders as (
    select
        order_id,
        customer_id,
        order_date,
        total_amount,
        status
    from {{ source('jaffle_shop', 'orders') }}
)

select
    order_id,
    customer_id,
    order_date,
    total_amount,
    status
from orders