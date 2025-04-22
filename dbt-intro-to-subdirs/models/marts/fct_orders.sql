with orders as  (
    select * from {{ ref ('stg_orders' )}}
),

 final as (

    select
        orders.order_id,
        orders.customer_id,
        orders.order_date

    from orders
)

select * from final
