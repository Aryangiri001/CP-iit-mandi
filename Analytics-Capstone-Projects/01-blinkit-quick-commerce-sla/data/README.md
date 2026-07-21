# Data — Blinkit SLA Diagnostic

## Sample data (for pipeline testing only)

`sample_data/` has synthetic `stores.csv`, `delivery_partners.csv`, and
`orders.csv` matching the schema in `sql/schema_template.sql`, deliberately
messy (missing `delivered_time`, some negative delivery minutes, a handful
of duplicate rows, one outlier cluster) so you can build and test your full
SQL → cleaning → model pipeline immediately, without waiting to source real
data.

**This is not real-world data and does not satisfy the capstone's data
requirement** ("the data needs real assembly or cleaning; not a
model-ready file" — see the handbook's seven checks). Use it to get your
pipeline running end to end, then swap in a real sourced dataset before
your final submission. Don't build your actual findings/memo on this data.

## What to source

A quick-commerce delivery dataset covering **Mumbai and Bengaluru, one
month**. Public quick-commerce / last-mile delivery datasets (e.g. on
Kaggle) are a reasonable starting point — search for delivery-time or
last-mile logistics data and check it has, at minimum, order-level
timestamps and a store identifier. If the dataset you find doesn't naturally
split into orders/stores/delivery-partners, you're allowed to construct the
extra tables yourself from the columns available (that's part of the SQL
grade — see the handbook: "two or more related tables").

## Expected shape (adapt to what you actually find)

**orders** — one row per order. Look for / derive: order id, store id,
city, order placed time, promised delivery time (or a fixed 10-minute SLA
you apply yourself), actual delivered time, product category, delivery
partner id.

**stores** — one row per dark store. Look for / derive: store id, city,
locality/zone.

**delivery_partners** — one row per partner. Look for / derive: partner id,
vehicle type if available.

## Before you load anything, answer these

- Does "on time" already exist as a flag/column, or do you have to compute
  it from timestamps against a 10-minute promise?
- What's the primary key of each table? What foreign keys join them?
- Is there an obvious unit or timezone inconsistency across timestamp
  columns you'll need to fix before any query is trustworthy?

Do not put raw data files in git if they're large — note the source/link
here instead and keep the data out of version control, or use Git LFS if
your program requires the file to be present.
