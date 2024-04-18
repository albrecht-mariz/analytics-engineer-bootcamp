WITH source as (
    SELECT * from {{source('northwind', 'order_status')}}
)

SELECT * FROM source