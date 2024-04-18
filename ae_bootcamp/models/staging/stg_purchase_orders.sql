WITH source as (
    SELECT * from {{source('northwind', 'purchase_orders')}}
)

SELECT * FROM source