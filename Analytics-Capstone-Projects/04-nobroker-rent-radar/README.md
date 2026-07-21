# Project 4 — NoBroker: The Rent Radar

**Best for:** consumer-tech, marketplace, and real-estate analytics roles

## The situation

NoBroker's pricing team wants to answer the question every tenant in
Bengaluru asks: what should this flat actually cost? Listings are noisy;
the same 2BHK is priced wildly differently across localities, floors, and
furnishing levels. You are building the fair-rent model, and the data
assembly is part of the job.

**Decision owner:** NoBroker's pricing team, deciding what "fair rent"
guidance to show tenants and where listings look mispriced.

## Scope bounds (respect these — depth beats sprawl)

- One city
- One model

Do not add more cities. Add more care to your features instead.

## The pipeline (see [APPROACH.md](APPROACH.md) for the how)

1. Start from a public rental-listings dataset for one city, then enrich it
   with a second table of locality attributes (zone, metro access,
   tech-park proximity) from public sources. Load both, join them. Query
   first: median rent by locality with rankings, price-per-sq-ft
   comparisons using window functions.
2. Clean in pandas — duplicates, "25k" vs "25000" formatting, missing
   square footage, typo outliers. Document every cleaning decision. Use
   Seaborn to show how rent distributes across the city.
3. Feature-engineer (rent per sq ft, furnishing encoded, locality tier,
   floor band) and train a linear regression to predict rent. Interpret
   it, report error honestly in rupees, show where it breaks down.
4. Build a dashboard answering "what should this flat cost?" Write the
   memo: what drives rent, where listings look mispriced, what data would
   improve the model.

## What you'll be able to say when you're done

> "I collected and cleaned real rental data for a full city, built a
> pricing model I can explain, and I know exactly what a balcony in
> Indiranagar is worth, and where my model stops working well."

## Folder map

| Path | Purpose |
|---|---|
| `data/` | where to source listings + locality data, expected fields |
| `sql/` | schema shell + the analytical questions your SQL must answer |
| `notebooks/` | cleaning, EDA, and modelling checkpoints |
| `dashboard/` | who the dashboard is for and what it must answer |
| `memo/` | one-page memo template |
| `ai_appendix/` | prompt log + judgment note template |

Self-rate against [../RUBRIC.md](../RUBRIC.md) before you submit, and use
[CHECKLIST.md](CHECKLIST.md) for the project-specific version of that table.

**Final hand-in:** a Drive folder + Zoom video link + report PDF — see
[../SUBMISSION.md](../SUBMISSION.md) for the exact format.
