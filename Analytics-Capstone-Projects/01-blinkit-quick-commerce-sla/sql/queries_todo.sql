-- Blinkit SLA Diagnostic — the questions your SQL must answer.
-- Write each query yourself. Comments describe the *question*, not the answer.

-- ============================================================
-- SOLID: joins + GROUP BY
-- ============================================================

-- Q1. On-time rate by city and hour.
--     Decide first: what makes an order "on time"? Write that logic once,
--     consistently, and reuse it in every query below.
-- TODO

-- Q2. Overall on-time rate for the month, and how it differs Mumbai vs Bengaluru.
-- TODO


-- ============================================================
-- STRONG: window functions + CTEs
-- ============================================================

-- Q3. Rank stores within each city by on-time rate.
--     Think about whether you should filter out low-volume stores before
--     ranking — a store with 3 orders and 1 late order is not "worst."
-- TODO

-- Q4. Hourly compliance trend across the month, built with a CTE.
--     Structure: one CTE for the hourly rollup, one for whatever trend
--     calculation you build on top of it (e.g. rolling average, day-over-day change).
-- TODO

-- Q5. Category-level and distance-band on-time rates, ranked.
-- TODO


-- ============================================================
-- STANDOUT: structure it so another analyst could extend it
-- ============================================================

-- Q6. Could you add a third city to this script by changing only the WHERE
--     clause / a parameter, and nothing else? If not, refactor until you can.
-- TODO
