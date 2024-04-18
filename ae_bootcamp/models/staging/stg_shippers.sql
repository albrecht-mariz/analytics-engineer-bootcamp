WITH source as (
    SELECT * from {{source('northwind', 'shippers')}}
)

SELECT * FROM source