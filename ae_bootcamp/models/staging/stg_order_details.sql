WITH source as (
    SELECT * from {{source('northwind', 'order_details')}}
)

SELECT * FROM source