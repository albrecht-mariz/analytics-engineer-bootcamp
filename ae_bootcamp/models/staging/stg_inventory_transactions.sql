WITH source as (
    SELECT * from {{source('northwind', 'inventory_transactions')}}
)

SELECT * FROM source