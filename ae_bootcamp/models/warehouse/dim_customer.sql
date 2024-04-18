WITH source AS (

SELECT
    id                             AS customer_id,
    company,
    last_name,
    first_name,
    email_address,
    job_title,
    business_phone,
    home_phone,
    mobile_phone,
    fax_number,
    address,
    city,
    state_province,
    zip_postal_code,
    country_region,
    web_page,
    notes,
    attachments,
    current_timestamp()            AS insertion_timestamp
    FROM {{ref('stg_customer')}}
),
unique_source AS (
    SELECT 
        *,
        row_number() over(partition by customer_id) as row_number
    FROM source
)
SELECT 
    *
    except
            (row_number),
FROM unique_source
WHERE row_number = 1