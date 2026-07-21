-- NoBroker Rent Radar — schema shell
-- Fill in column names/types once you've assembled and standardized the data.

CREATE TABLE locality_attributes (
    locality_name   -- PRIMARY KEY, TODO type — standardized name
    zone             -- TODO type
    metro_access     -- TODO type
    tech_park_proximity -- TODO type
);

CREATE TABLE listings (
    listing_id      -- PRIMARY KEY, TODO type
    locality_name   -- FOREIGN KEY -> locality_attributes, TODO type
    bhk              -- TODO type
    sqft             -- TODO type
    floor            -- TODO type
    total_floors     -- TODO type
    furnishing       -- TODO type
    rent             -- TODO type — numeric, after cleaning "25k"-style values
);

-- Sanity checks to run once loaded (write these yourself):
-- 1. Every locality_name in listings has a match in locality_attributes
--    (or you've decided how to handle the ones that don't).
-- 2. No duplicate listing_id.
-- 3. rent and sqft are both numeric and within a plausible range.
