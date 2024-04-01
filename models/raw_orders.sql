MODEL (
    name jaffle_shop.raw_orders,
    kind SEED (
        path '../jaffle-shop-data/raw_orders.csv'
    ),
    columns (
        id INTEGER,
        user_id INTEGER,
        order_date TIMESTAMP,
        status TEXT,
    ),
    grain [id]
);

