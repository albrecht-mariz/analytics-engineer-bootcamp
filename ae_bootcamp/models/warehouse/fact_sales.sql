{{ config(
    partition_by={
        "field": "order_date",
        "data_type": "date"
    }
)}}

WITH source as (
    SELECT
        od.order_id,
        od.product_id,
        o.customer_id,
        o.employee_id,
        o.shipper_id,
        od.quantity,
        od.unit_price,
        od.discount,
        od.status_id,
        od.date_allocated,
        od.purchase_order_id,
        od.inventory_id,
        DATE(o.order_date) as order_date,
        o.shipped_date,
        o.paid_date,
        current_timestamp() as insertion_timestamp

        from {{ref('stg_orders')}} as o

        left join {{ref('stg_order_details')}} as od
        on od.order_id = o.id 
        
        where od.order_id is not null
),

unique_source as (
    SELECT 
    *,
    row_number() over(partition by customer_id, employee_id, order_id, product_id, shipper_id, purchase_order_id, order_date) as row_number
    FROM source
)
SELECT 
    *
    except
            (row_number),
FROM unique_source
WHERE row_number = 1