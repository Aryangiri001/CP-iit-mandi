# Project 1 — Blinkit: The Quick-Commerce SLA Diagnostic

**Best for:** operations, e-commerce, and quick-commerce analyst roles

## The situation

Blinkit's operations director has a problem: the share of orders delivered
within the promised 10 minutes is slipping in Mumbai and Bengaluru, and
nobody can say exactly why. Is it certain hours? Certain dark stores?
Certain product categories? Your job is to find the bottlenecks, prove them
with data, and predict which orders are at risk of running late, so the ops
team can fix the causes, not just the symptoms.

**Decision owner:** the ops director, deciding what to fix first for the
next ops review.

## Scope bounds (respect these — depth beats sprawl)

- Two cities only (Mumbai and Bengaluru)
- One month of data
- One model

A sharp answer about Mumbai's evening collapse is worth more than a shallow
tour of everything. Do not expand scope even if the data supports it.

## The pipeline (see [APPROACH.md](APPROACH.md) for the how)

1. Load the delivery dataset into a database as separate tables (orders,
   stores, delivery partners). Query it — on-time rates by city/hour,
   store-level rankings, an hourly compliance trend.
2. Clean and explore in pandas — missing timestamps, impossible values
   (e.g. negative delivery minutes), then the shape of delivery times by
   hour, store cluster, category.
3. Engineer features and train a logistic regression that flags at-risk
   orders. Evaluate honestly — accuracy alone misleads when most orders are
   on time.
4. Build a Tableau dashboard for the ops review. Write the one-page memo:
   top three bottlenecks, evidence, prioritised fixes.

## What you'll be able to say when you're done

> "I found out why a quick-commerce company was missing its 10-minute
> delivery promise, built a model that flags orders likely to run late, and
> turned it into a plan the ops team could act on right away."

## Folder map

| Path | Purpose |
|---|---|
| `data/` | where to source the dataset, expected tables/fields |
| `sql/` | schema shell + the analytical questions your SQL must answer |
| `notebooks/` | cleaning, EDA, and modelling checkpoints |
| `dashboard/` | who the dashboard is for and what it must answer |
| `memo/` | one-page memo template |
| `ai_appendix/` | prompt log + judgment note template |

Self-rate against [../RUBRIC.md](../RUBRIC.md) before you submit, and use
[CHECKLIST.md](CHECKLIST.md) for the project-specific version of that table.

**Final hand-in:** a Drive folder + Zoom video link + report PDF — see
[../SUBMISSION.md](../SUBMISSION.md) for the exact format.
