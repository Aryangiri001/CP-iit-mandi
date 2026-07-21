# Project 3 — CRED: The UPI Growth Story

**Best for:** fintech, payments, and strategy analytics roles

## The situation

CRED's strategy team is asking the question everyone in Indian fintech
argues about: is UPI's growth broadening across apps and banks, or
concentrating into a duopoly? NPCI publishes the monthly numbers; almost
nobody actually works with them. Your job is to assemble the public record
and answer with evidence.

**Decision owner:** CRED's strategy team, deciding what a challenger app's
position in this market implies for strategy.

## Scope bounds (respect these — depth beats sprawl)

- 24 to 36 months of data
- Top apps plus a long-tail bucket (don't try to model every small player individually)
- One model

The insight lives in the shares and the concentration, not in forecasting
precision. Don't over-invest in the projection at the expense of the
concentration analysis.

## The pipeline (see [APPROACH.md](APPROACH.md) for the how)

1. Collect NPCI's monthly UPI statistics (volumes, values, app-wise and
   bank-wise splits) across 24+ months and load into a database. Use
   window functions for market share over time, month-on-month growth,
   rankings; CTEs for the concentration analysis.
2. Clean in pandas — the monthly files will not all look the same; fix
   naming/format changes and note what you did. Let statistics show growth
   trends, seasonality, and the concentration curve.
3. Train a linear regression to model transaction-volume growth and
   project next quarter. Report your error and name the events that could
   break the projection.
4. Build a dashboard tracking volumes, shares, concentration. Write the
   memo answering the strategy question directly: broadening or
   concentrating, and what it means for a challenger like CRED.

## What you'll be able to say when you're done

> "I put together two years of India's public UPI data, measured whether
> the market is concentrating, and projected where volumes are heading,
> with the limits of my projection stated clearly."

## Folder map

| Path | Purpose |
|---|---|
| `data/` | where to source NPCI data, expected tables/fields |
| `sql/` | schema shell + the analytical questions your SQL must answer |
| `notebooks/` | cleaning, EDA, and modelling checkpoints |
| `dashboard/` | who the dashboard is for and what it must answer |
| `memo/` | one-page memo template |
| `ai_appendix/` | prompt log + judgment note template |

Self-rate against [../RUBRIC.md](../RUBRIC.md) before you submit, and use
[CHECKLIST.md](CHECKLIST.md) for the project-specific version of that table.

**Final hand-in:** a Drive folder + Zoom video link + report PDF — see
[../SUBMISSION.md](../SUBMISSION.md) for the exact format.
