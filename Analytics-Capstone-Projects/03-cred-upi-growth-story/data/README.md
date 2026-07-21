# Data — CRED UPI Growth Story

## Sample data (for pipeline testing only)

`sample_data/npci_monthly_raw.csv` has 30 synthetic months (Jan 2024–Jun
2026) across 10 apps, with a deliberate concentration trend (PhonePe +
Google Pay's combined share grows over time), festive-month seasonality,
and realistic messiness (a "GPay"/"Google Pay" naming inconsistency in a
couple of months, Freecharge missing from a few months, one duplicated
month-app row).

This file is deliberately **flat** — one row per (month, app), app name as
free text — because that's the shape NPCI's actual monthly releases come
in. It is *not* the same shape as `sql/schema_template.sql`, which splits
this into an `apps` dimension table and a `monthly_app_stats` fact table.
Turning the raw flat file into that two-table schema — which means
deciding what counts as "one app" across months where it was reported
under two different names — is itself part of the SQL/assembly work (see
`APPROACH.md` Phase 1). Don't expect a ready-made `app_id`; you build it.

**This is not real-world data and does not satisfy the capstone's data
requirement.** Use it to build and test your SQL → cleaning → trend-model
pipeline end to end, then replace it with real NPCI data before your final
submission.

## What to source

NPCI (National Payments Corporation of India) publishes monthly UPI
statistics publicly — product-wise (app-wise) and bank-wise transaction
volumes and values. Collect **at least 24 months, ideally 24-36**, of these
monthly releases.

## Expected shape (adapt to what you actually find)

Because NPCI publishes per-month files/pages rather than one clean
historical table, you will likely need to:

**monthly_app_stats** — one row per (month, app). Look for / derive: month,
app name, transaction volume (count), transaction value (₹).

**monthly_bank_stats** (if pursuing the bank-wise cut too) — one row per
(month, bank/PSP).

## Before you load anything, answer these

- Are you collecting volume, value, or both for every month? Missing one
  for some months will break your trend later — check completeness first.
- Do app names stay consistent across the full window, or will you need a
  mapping table to reconcile renames/mergers?
- What's your "long tail" bucket rule — apps below what share get grouped
  together, and does that threshold stay consistent across all months?

Note the exact source pages/links here as you collect data, since NPCI's
site structure changes and you'll want to be able to explain your
provenance in the README.
