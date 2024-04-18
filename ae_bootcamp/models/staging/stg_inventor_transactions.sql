WITH source as (
    SELECT * from {{source('northwind', 'inventor_transactions')}}
)

SELECT * FROM source