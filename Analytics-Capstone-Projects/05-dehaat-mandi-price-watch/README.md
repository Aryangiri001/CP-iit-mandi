# Project 5 — DeHaat: The Mandi Price Watch

**Best for:** agri-tech, supply-chain, and commodities analytics roles

## The situation

DeHaat's advisory team supports farmer producer organisations whose
members ask the same two questions every season: when should we sell, and
in which market? Agmarknet publishes daily arrivals and prices for every
major mandi, and almost no analyst has ever touched it. Your job is to turn
that public record into a sell-timing recommendation DeHaat's field agents
can carry to farmers.

**Decision owner:** DeHaat's advisory team, deciding what selling-window
and market guidance to give farmers this season.

## Scope bounds (respect these — depth beats sprawl)

- One crop
- One state's markets
- Two to three years of data

The recommendation matters more than the model's sophistication.

## The pipeline (see [APPROACH.md](APPROACH.md) for the how)

1. Pull daily arrivals and prices for one commodity across 5-10 mandis
   over two to three years, load into a database. Use window functions for
   rolling average prices and year-on-year comparisons; CTEs to build the
   seasonal pattern per market.
2. Clean in pandas — gaps, unit inconsistencies, duplicate reporting days;
   reconcile and keep the log. Let statistics reveal the seasonal price
   curve, the arrivals-vs-price relationship, and how markets differ.
3. Train a linear regression relating price to arrivals, season, and
   market. Interpret the coefficients, report error honestly, name what
   the model can't see (weather shocks, policy, MSP announcements).
4. Build a dashboard of seasonal patterns and market comparisons. Write
   the memo: selling windows and markets the data supports, uncertainty
   stated plainly.

## What you'll be able to say when you're done

> "I turned India's public mandi price records into a clear
> recommendation on when farmers should sell, using a model I can explain
> line by line, with its limits stated up front."

## Folder map

| Path | Purpose |
|---|---|
| `data/` | where to source Agmarknet data, expected fields |
| `sql/` | schema shell + the analytical questions your SQL must answer |
| `notebooks/` | cleaning, EDA, and modelling checkpoints |
| `dashboard/` | who the dashboard is for and what it must answer |
| `memo/` | one-page memo template |
| `ai_appendix/` | prompt log + judgment note template |

Self-rate against [../RUBRIC.md](../RUBRIC.md) before you submit, and use
[CHECKLIST.md](CHECKLIST.md) for the project-specific version of that table.

**Final hand-in:** a Drive folder + Zoom video link + report PDF — see
[../SUBMISSION.md](../SUBMISSION.md) for the exact format.
