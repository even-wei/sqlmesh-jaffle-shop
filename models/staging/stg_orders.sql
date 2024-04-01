MODEL (
  name jaffle_shop.stg_orders,
  kind FULL,
  grain order_id,
);

SELECT
  id AS order_id,
  user_id AS customer_id,
  order_date,
  status
FROM
    jaffle_shop.raw_orders

