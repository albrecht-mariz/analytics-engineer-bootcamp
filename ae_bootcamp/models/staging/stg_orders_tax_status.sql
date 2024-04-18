WITH source as (
    SELECT * from {{source('northwind', 'orders_tax_status')}}
)

SELECT * FROM source