WITH orders AS ( SELECT id AS order_id
                        , user_id as customer_id
                        , order_date
                        , status
                        
                    FROM jeffrey_shop_data.orders)


SELECT *
FROM orders