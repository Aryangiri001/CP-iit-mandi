-- Mamaearth Churn Predictor — the questions your SQL must answer.
-- Write each query yourself. Comments describe the *question*, not the answer.

-- ============================================================
-- SOLID: joins + GROUP BY
-- ============================================================

-- Q1. Total orders and total revenue per customer.
-- TODO

-- Q2. First and last order date per customer.
-- TODO


-- ============================================================
-- STRONG: window functions + CTEs (the RFM profile)
-- ============================================================

-- Q3. Recency: days since each customer's last order, relative to your
--     chosen reference date.
-- TODO

-- Q4. Frequency: number of orders per customer over your chosen window
--     (lifetime, or trailing N months — decide and justify).
-- TODO

-- Q5. Monetary: total and/or average order value per customer.
-- TODO

-- Q6. Combine Q3–Q5 into a single RFM table using a CTE per component,
--     joined at the end.
-- TODO

-- Q7. Inter-purchase gap per customer (gap between consecutive orders,
--     using a window function like LAG). You'll need this distribution to
--     justify your churn threshold in the notebook.
-- TODO


-- ============================================================
-- STANDOUT: structure it so another analyst could extend it
-- ============================================================

-- Q8. Could you change the reference date or the frequency window via a
--     single parameter/variable, and have every downstream query update
--     correctly? If not, refactor until you can.
-- TODO
