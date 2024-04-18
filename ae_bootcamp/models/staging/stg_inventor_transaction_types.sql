WITH source as (
    SELECT * from {{source('northwind', 'inventor_transaction_types')}}
)

SELECT * FROM source