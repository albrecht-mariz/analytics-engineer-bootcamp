WITH source as (
    SELECT

        CAST(supplier_ids AS integer) AS supplier_id,
        id,
        product_code,
        product_name,
        description,
        --company,
        standard_cost,
        list_price,
        reorder_level,
        target_level,
        quantity_per_unit,
        discontinued,
        minimum_reorder_quantity,
        category,
        attachments

    FROM {{source('northwind', 'products')}}

    WHERE supplier_ids NOT LIKE "%;%"
)

SELECT * FROM source