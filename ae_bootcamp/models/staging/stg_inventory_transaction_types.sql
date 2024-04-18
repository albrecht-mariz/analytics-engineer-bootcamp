WITH source as (
    SELECT * from {{source('northwind', 'inventory_transaction_types')}}
)

SELECT * FROM source