-- Blinkit SLA Diagnostic — schema shell
-- Fill in column names/types once you've looked at the real dataset.
-- Keep the three-table split (orders / stores / delivery_partners) unless
-- your data genuinely doesn't support it.

CREATE TABLE stores (
    store_id        -- PRIMARY KEY, TODO type
    city             -- TODO type
    -- TODO: locality / zone columns if available
);

CREATE TABLE delivery_partners (
    partner_id      -- PRIMARY KEY, TODO type
    -- TODO: any partner attributes your dataset provides
);

CREATE TABLE orders (
    order_id        -- PRIMARY KEY, TODO type
    store_id        -- FOREIGN KEY -> stores, TODO type
    partner_id      -- FOREIGN KEY -> delivery_partners, TODO type
    category        -- TODO type
    order_time      -- TODO type
    promised_time   -- TODO type, or derive a fixed SLA in your queries
    delivered_time  -- TODO type
    delivery_distance_km  -- TODO numeric type; use directly to derive distance bands efficiently
);

-- Sanity checks to run once loaded (write these yourself):
-- 1. Row counts match the source file.
-- 2. No duplicate order_id.
-- 3. delivered_time is (almost always) after order_time — investigate rows where it isn't.
