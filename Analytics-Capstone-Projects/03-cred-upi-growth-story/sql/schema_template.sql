-- CRED UPI Growth Story — schema shell
-- Fill in column names/types once you've assembled the NPCI data.
--
-- Note on the raw source vs. this schema: NPCI's monthly files (and
-- sample_data/npci_monthly_raw.csv) are flat — one row per (month, app),
-- with app_name as free text, including renames/inconsistencies across
-- months (e.g. "Google Pay" vs "GPay"). This schema is the TARGET you load
-- into, not the raw shape. Reconciling the raw app_name text into one
-- canonical apps table (deduping renames into a single app_id) is part of
-- the SQL/cleaning work — see APPROACH.md Phase 1.

CREATE TABLE apps (
    app_id          -- PRIMARY KEY, TODO type
    app_name        -- TODO type — canonical name after reconciling renames
);

CREATE TABLE monthly_app_stats (
    month           -- TODO type (first-of-month date recommended)
    app_id          -- FOREIGN KEY -> apps, TODO type
    txn_volume      -- TODO type
    txn_value       DECIMAL(18, 2)
);

-- Optional, if pursuing the bank-wise cut:
-- CREATE TABLE monthly_bank_stats ( ... );

-- Sanity checks to run once loaded (write these yourself):
-- 1. Every month in your target 24-36 month window is present.
-- 2. No app appears twice under different names for the same month
--    (check for near-duplicate app_name strings).
-- 3. Volume and value are both populated for every (month, app) row you expect.
