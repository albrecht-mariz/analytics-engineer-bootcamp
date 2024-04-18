WITH source as (
    SELECT * from {{source('northwind', 'employees')}}
)

SELECT * FROM source