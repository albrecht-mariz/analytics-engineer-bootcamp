WITH source as (
    SELECT * from {{source('northwind', 'invoices')}}
)

SELECT * FROM source