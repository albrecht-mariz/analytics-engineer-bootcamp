WITH source as (
    SELECT * from {{source('northwind', 'strings')}}
)

SELECT * FROM source