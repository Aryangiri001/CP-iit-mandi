# Project 2 — Mamaearth: The D2C Churn Predictor

**Best for:** consumer, D2C, and growth analytics roles

## The situation

Mamaearth's growth team knows that keeping a customer costs far less than
acquiring one. What they do not know is which customers are about to
quietly stop buying. Your job is to find the signals of churn in
transaction history and build a model that flags at-risk customers while
there is still time to win them back.

**Decision owner:** the growth team, deciding who to target with retention
campaigns and what to offer them.

## Scope bounds (respect these — depth beats sprawl)

- One brand's dataset
- One churn definition (yours — and you must defend it)
- One model

Resist adding models. Add care to the churn definition instead — everything
downstream depends on it.

## The pipeline (see [APPROACH.md](APPROACH.md) for the how)

1. Load the customer transaction dataset into a database. Use SQL
   aggregations and window functions to compute each customer's RFM
   profile: recency, frequency, monetary value.
2. Clean in pandas — duplicate orders, returns, one-time buyers. Use
   descriptive stats to find the purchase-cycle gap where "dormant" becomes
   "gone." That threshold is your churn definition.
3. Engineer features from the RFM profile, train a logistic regression
   classifying likely-to-churn vs. not. Evaluate with care — churners are
   likely a minority.
4. Build a dashboard segmenting customers by churn risk. Write the memo:
   which segments to target, what the campaign should offer, plus one
   honest paragraph on the ethics of retention targeting.

## What you'll be able to say when you're done

> "I defined churn from real purchase data, built a model that flags
> customers likely to leave, and turned it into a retention plan a growth
> team could run, with clear ethical limits."

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
