WITH source as (
    SELECT * from {{source('northwind', 'purchase_order_details')}}
)

SELECT * FROM source