-- CRED UPI Growth Story — the questions your SQL must answer.
-- Write each query yourself. Comments describe the *question*, not the answer.

-- ============================================================
-- SOLID: joins + GROUP BY
-- ============================================================

-- Q1. Total UPI volume and value by month, across all apps.
-- TODO

-- Q2. Top N apps by total volume over the full window.
-- TODO


-- ============================================================
-- STRONG: window functions + CTEs
-- ============================================================

-- Q3. Each app's market share (by volume, and separately by value) per
--     month, using a window function to divide by the monthly total.
-- TODO

-- Q4. Month-on-month growth rate per app.
-- TODO

-- Q5. Rank apps by market share within each month.
-- TODO

-- Q6. Concentration measure per month (e.g. top-3 combined share, or a
--     formal index) using a CTE for the per-app shares, then aggregating.
-- TODO


-- ============================================================
-- STANDOUT: structure it so another analyst could extend it
-- ============================================================

-- Q7. Could this script take a 25th month of new data and produce updated
--     shares/rankings/concentration without any manual edits beyond
--     loading the new rows? If not, refactor until it can.
-- TODO
