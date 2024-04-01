-- This table has basic information about orders, as well as some derived facts based on payments
MODEL (
  name jaffle_shop.orders,
  kind FULL,
  grain order_id,
);

WITH orders AS (
  SELECT * FROM jaffle_shop.stg_orders
),

payments AS (
  SElECT * FROM jaffle_shop.stg_payments
),

order_payments AS (
  SELECT
    order_id,
    SUM(amount) AS total_amount
  FROM
    payments
  GROUP BY
    order_id
)

SELECT
  orders.order_id,
  orders.customer_id,
  orders.order_date,
  orders.status,
  order_payments.total_amount AS amount
FROM
  orders
LEFT JOIN order_payments
  ON orders.order_id = order_payments.order_id

