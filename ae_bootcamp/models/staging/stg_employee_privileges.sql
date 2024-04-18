WITH source as (
    SELECT * from {{source('northwind', 'employee_privileges')}}
)

SELECT * FROM source