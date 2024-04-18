WITH source as (
    SELECT * from {{source('northwind', 'customer')}}
)

SELECT * FROM source