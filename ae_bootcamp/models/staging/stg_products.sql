WITH source as (
    SELECT * from {{source('northwind', 'products')}}
)

SELECT * FROM source