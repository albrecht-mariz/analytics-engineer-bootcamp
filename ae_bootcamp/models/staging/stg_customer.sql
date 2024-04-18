WITH source as (
    SELECT * from {{source('northwind', 'customer')}}
)

SELECT 
    *,
    current_timestamp() as ingestion_timestamp 
FROM source