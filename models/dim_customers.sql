WITH 

-- CTE 1

customers AS (
    SELECT *
    FROM {{ ref('stg_customers') }}
),

-- CTE 2

orders AS (
    SELECT *
    FROM {{ ref('stg_orders') }}
),

-- CTE 3

customer_orders AS (
    SELECT customer_id
           , min(order_date) AS first_order_date
           , max(order_date) AS most_recent_order_date
           , count(order_id) AS number_of_orders
    FROM orders
    GROUP BY 1
),

-- CTE 4

final as (

    select
        customers.customer_id,
        customers.first_name,
        customers.last_name,
        customer_orders.first_order_date,
        customer_orders.most_recent_order_date,
        coalesce(customer_orders.number_of_orders, 0) as number_of_orders

    from customers

    left join customer_orders using (customer_id)

)

SELECT * FROM final