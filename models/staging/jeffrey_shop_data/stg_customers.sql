WITH customers AS (SELECT ID AS customer_id
                          , first_name
                          , last_name
                          
                    FROM {{ source('jeffrey_shop_data', 'customers') }} )


SELECT * FROM customers