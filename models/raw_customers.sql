MODEL (
    name jaffle_shop.raw_customers,
    kind SEED (
        path '../jaffle-shop-data/raw_customers.csv'
    ),
    columns (
        id INTEGER,
        first_name TEXT,
        last_name TEXT,
    ),
    grain [id]
);

