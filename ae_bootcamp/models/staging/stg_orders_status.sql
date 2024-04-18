WITH source as (
    SELECT * from {{source('northwind', 'orders_status')}}
)

SELECT * FROM source