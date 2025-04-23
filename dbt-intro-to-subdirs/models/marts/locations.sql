with

locations as (

    select * from {{ ref('stg_stores') }}

)

select * from locations
