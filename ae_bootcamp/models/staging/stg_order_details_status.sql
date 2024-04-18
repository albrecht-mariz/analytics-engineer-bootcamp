WITH source as (
    SELECT * from {{source('northwind', 'order_details_status')}}
)

SELECT * FROM source