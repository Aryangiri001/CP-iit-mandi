-- DeHaat Mandi Price Watch — schema shell
-- Fill in column names/types once you've pulled the Agmarknet data.

CREATE TABLE mandis (
    mandi_id        -- PRIMARY KEY, TODO type
    mandi_name       -- TODO type
    district          -- TODO type
    state             -- TODO type
);

CREATE TABLE daily_prices (
    mandi_id        -- FOREIGN KEY -> mandis, TODO type
    price_date       -- TODO type
    commodity         -- TODO type
    arrivals          -- TODO type (quantity, per quintal or as reported)
    min_price         -- TODO type
    max_price         -- TODO type
    modal_price       -- TODO type
    -- Composite key likely: (mandi_id, price_date, commodity)
);

-- Sanity checks to run once loaded (write these yourself):
-- 1. Row counts roughly match expected days x mandis (minus real gaps).
-- 2. No duplicate (mandi_id, price_date, commodity) rows — investigate any found.
-- 3. Prices and arrivals are within a plausible range for this commodity.
