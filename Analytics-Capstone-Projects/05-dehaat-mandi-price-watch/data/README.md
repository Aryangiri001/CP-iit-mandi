# Data — DeHaat Mandi Price Watch

## Sample data (for pipeline testing only)

`sample_data/` has synthetic `mandis.csv` (8 Maharashtra mandis) and
`daily_prices.csv` (~6,200 rows, Jan 2024–Jun 2026, commodity: Onion)
matching `sql/schema_template.sql`. It includes a seasonal price cycle,
two simulated shock events (unseasonal price spikes), non-uniform
reporting (mandis don't report every day), and a small number of
duplicate reporting-day rows.

**This is not real-world data and does not satisfy the capstone's data
requirement.** Use it to build and test your SQL → cleaning → seasonal
pricing-model pipeline end to end, then replace it with real Agmarknet
data before your final submission.

## What to source

Agmarknet (the Government of India's agricultural marketing portal)
publishes **daily arrivals and prices** (min/max/modal) for commodities
across mandis nationwide. Pull data for:
- **one commodity** (e.g. a widely-traded one with good data coverage)
- **5 to 10 mandis within one state**
- **2 to 3 years**

## Expected shape (adapt to what you actually find)

**mandis** — one row per market. Look for / derive: mandi id/name, state,
district.

**daily_prices** — one row per (mandi, date) at minimum, possibly per
(mandi, commodity, date) if you pull more than one commodity for
comparison. Look for / derive: mandi id, date, commodity, arrivals
(quantity), min price, max price, modal price — all typically per quintal.

## Before you load anything, answer these

- Which price field will you treat as "the price" for your analysis — modal,
  or an average of min/max? Decide once and use it consistently.
- Are units (quintal vs. other) consistent across the mandis and years you
  pulled? Check a few rows by hand before trusting the whole file.
- Does every mandi report every day, or will you have real gaps to handle?
  Get a sense of this before writing your cleaning logic.

Note the exact source pages/date ranges here as you collect data, and do
not commit large raw files to git.
