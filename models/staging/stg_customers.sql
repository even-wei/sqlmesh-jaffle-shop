MODEL (
  name jaffle_shop.stg_customers,
  kind FULL,
  grain customer_id,
);

SELECT
  id AS customer_id,
  first_name,
	last_name
FROM
    jaffle_shop.raw_customers

