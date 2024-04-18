WITH source as (
    SELECT * from {{source('northwind', 'purchase_order_status')}}
)

SELECT * FROM source