-- Mamaearth Churn Predictor — schema shell
-- Fill in column names/types once you've looked at the real dataset.

CREATE TABLE customers (
    customer_id     -- PRIMARY KEY, TODO type
    -- TODO: signup_date or other customer attributes if available
);

CREATE TABLE transactions (
    order_id        -- PRIMARY KEY, TODO type
    customer_id     -- FOREIGN KEY -> customers, TODO type
    order_date      -- TODO type
    amount           -- TODO type
    category         -- TODO type, if available
    is_return        -- TODO type, if available
);

-- Sanity checks to run once loaded (write these yourself):
-- 1. Row counts match the source file.
-- 2. No duplicate order_id.
-- 3. Every customer_id in transactions exists in customers.
-- 4. Date range covered — what's the min/max order_date?
