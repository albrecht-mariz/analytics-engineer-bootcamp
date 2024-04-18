WITH source as (
    SELECT * from {{source('northwind', 'privileges')}}
)

SELECT * FROM source