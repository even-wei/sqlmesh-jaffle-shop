MODEL (
    name jaffle_shop.raw_payments,
    kind SEED (
        path '../jaffle-shop-data/raw_payments.csv'
    ),
    columns (
        id INTEGER,
        order_id INTEGER,
        payment_method TEXT,
        amount INTEGER,
    ),
    grain [id]
);

