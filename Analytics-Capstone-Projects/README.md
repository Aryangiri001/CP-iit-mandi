# The Analytics Capstone — Working Repo

IIT Mandi | AI-Powered Coding and Analytics Programme

This folder is a **scaffold**, not a solution. It gives every student the same
starting structure so effort goes into the analysis, not into figuring out
where to put files. Nothing in here answers the business question for you —
every TODO is a decision you have to make and defend.

## Pick one project

| Folder | Company | Domain |
|---|---|---|
| [01-blinkit-quick-commerce-sla](01-blinkit-quick-commerce-sla/) | Blinkit | Ops / quick-commerce |
| [02-mamaearth-churn-predictor](02-mamaearth-churn-predictor/) | Mamaearth | D2C / growth |
| [03-cred-upi-growth-story](03-cred-upi-growth-story/) | CRED | Fintech / strategy |
| [04-nobroker-rent-radar](04-nobroker-rent-radar/) | NoBroker | Marketplace / real estate |
| [05-dehaat-mandi-price-watch](05-dehaat-mandi-price-watch/) | DeHaat | Agri-tech / supply chain |

Pick the one closest to the industry you want to work in. Depth on one beats
a shallow tour of several — see `PUTTING IT ON YOUR RESUME` in the handbook.

You may also bring your own project if it passes the seven checks in the
handbook (named decision owner, real data assembly, SQL doing genuine work
with 2+ tables and a window function, stats before modelling, exactly one
model evaluated honestly, full deliverable set, completable solo in ~40
hours).

## What's inside every project folder

```
<project>/
  README.md              <- the brief: situation, question, decision owner, scope
  APPROACH.md             <- how to work through it, phase by phase (questions, not answers)
  CHECKLIST.md            <- Solid / Strong / Standout self-rating, specific to this project
  data/README.md          <- what data to source, what tables/fields to expect
  sql/schema_template.sql <- table shells to fill in
  sql/queries_todo.sql    <- the analytical questions your SQL must answer
  notebooks/ANALYSIS_GUIDE.md <- cleaning, EDA, and modelling checkpoints
  dashboard/DASHBOARD_BRIEF.md <- who it's for and what it must answer
  memo/decision_memo_template.md <- one-page memo skeleton
  ai_appendix/ai_workflow_appendix_template.md <- prompt log + judgment note template
```

Work in this order: get every folder to a rough, complete "Solid" pass first
(see `RUBRIC.md`), then come back and lift the weakest parts toward Strong
and Standout. A finished Solid project beats an unfinished Standout one.

## The three levels, in one line each

- **Solid (3-star):** the whole pipeline exists and runs — GROUP BY-level SQL,
  basic cleaning, one model on a train/test split, a published dashboard, a
  one-page memo.
- **Strong (4-star):** the same pipeline done with real technique — window
  functions and CTEs, documented cleaning reasoning, a properly evaluated
  model (confusion matrix / error in real units, overfitting check), a
  dashboard built around the decision owner's questions.
- **Standout (5-star):** depth of judgment, not more tooling — a data-quality
  note, findings that visibly shaped your features, an honest failure
  analysis of the model, a memo with trade-offs stated, a README that reads
  like an analyst presenting.

Full table: [RUBRIC.md](RUBRIC.md).

## What NOT to submit

Titanic, Iris, MNIST, Boston Housing, Netflix/IMDb exploration, mall-customer
segmentation. These signal tutorial completion, not analytical ability — pick
one of the five projects above instead, or a self-proposed one of equal
weight.

## How to actually hand this in

The deliverables above are what you *build*. How you *submit* them — a
Drive folder, a Zoom video link, and a report PDF — is a separate step with
its own rules. See [SUBMISSION.md](SUBMISSION.md) before your deadline, not
the night before.
