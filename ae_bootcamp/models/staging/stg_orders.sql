WITH source as (
    SELECT * from {{source('northwind', 'orders')}}
)

SELECT * FROM source