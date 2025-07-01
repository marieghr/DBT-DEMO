with source as (
    select * from {{ source('my_dbt_db', 'raw_orders') }}
),

renamed as (

    select
        id as order_id
        store_id as store_id,
        customer as customer_id
        order_at as order_date
    from source

)
select * from renamed