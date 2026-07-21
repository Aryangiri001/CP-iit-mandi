# Data — Mamaearth Churn Predictor

## Sample data (for pipeline testing only)

`sample_data/` has synthetic `customers.csv` and `transactions.csv`
matching `sql/schema_template.sql` — a mix of one-time buyers, steady
repeat customers, and customers who bought regularly then went quiet
(the churn signal), plus deliberate messiness (duplicate transaction
rows, a few missing amounts).

**This is not real-world data and does not satisfy the capstone's data
requirement.** Use it to build and test your RFM → cleaning → churn-model
pipeline end to end, then replace it with a real sourced dataset before
your final submission.

## What to source

A D2C / e-commerce customer transaction dataset — either an actual
Mamaearth-style dataset if you can find one, or any public D2C/online-retail
transaction dataset (customer id, order id, order date, amount, product
category) that lets you build a real purchase history per customer. Public
"online retail" transaction datasets are a reasonable substitute if a
Mamaearth-specific one isn't available — the analysis technique is what's
being graded, not the brand name on the file.

## Expected shape (adapt to what you actually find)

**customers** — one row per customer. Look for / derive: customer id,
signup date if available.

**transactions** (or **orders**) — one row per order (or order line).
Look for / derive: order id, customer id, order date, amount, quantity,
product category, return flag if available.

## Before you load anything, answer these

- Is this line-item grain or order grain? You need order grain (or to
  roll line items up to it) for RFM.
- What's the date range covered? Your recency reference date should make
  sense relative to it (usually the max date in the data, not today's
  date, since the data itself has a "cutoff").
- Are there customers with only one transaction? Decide early how they'll
  be treated in your churn definition (see APPROACH.md Phase 2).

Do not commit large raw data files to git — note the source/link here
instead.
