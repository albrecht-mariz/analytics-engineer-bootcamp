WITH source as (
    SELECT * from {{source('northwind', 'suppliers')}}
)

SELECT * FROM source