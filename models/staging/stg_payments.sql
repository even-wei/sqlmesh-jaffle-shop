MODEL (
  name jaffle_shop.stg_payments,
  kind FULL,
  grain payment_id,
);

SELECT
  id AS payment_id,
  order_id,
  payment_method,
  amount / 100 AS amount
FROM
    jaffle_shop.raw_payments

