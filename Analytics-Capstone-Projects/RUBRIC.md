# Capstone Rubric — Solid / Strong / Standout

Use this to self-rate before submitting. Every level is a *complete* project —
the difference is depth, judgment, and polish, never whether a part exists.
Give your last hours to your biggest gap, not to the part you enjoy most.

| Part | Solid (3-star) | Strong (4-star) | Standout (5-star) |
|---|---|---|---|
| **The SQL** | Joins and GROUP BY answering the first questions; script runs cleanly | Window functions and CTEs doing real analytical work | Structured so another analyst could extend it |
| **The cleaning** | Missing values, duplicates, and impossible values handled | Every cleaning decision documented, with reasoning | A data-quality note: what was wrong, what you did, what remains imperfect |
| **The exploration** | Distributions and summary statistics establish the problem's shape | Relationships and outliers explored; each chart makes one point | Findings that visibly shaped the features or the question |
| **The model** | One model on a proper train/test split, with error reported | Confusion matrix or error in real units; overfitting check; coefficients in plain words | Honest failure analysis: where it breaks, why, and what data would fix it |
| **The dashboard** | Published, showing the key findings | Built around the decision owner's questions, in their language | Answers the project's question at a glance |
| **The memo** | Findings summarised on one page | A specific recommendation, with evidence | Prioritised, trade-offs stated, actionable without follow-up questions |
| **The AI appendix** | The prompt log kept throughout | Plus one confidently-wrong AI moment you caught | A short note showing your judgment: where you trusted AI, where you did not |
| **The README and walkthrough** | A clear README; the 3-minute walkthrough recorded | Business impact first: question, answer, so-what | Sounds like an analyst presenting: confident, honest about limits |

## The Solid baseline (all 7 required, every project)

1. GitHub repo + README for a non-technical reader (question, data, approach, findings, limitations)
2. SQL script + analysis notebook, cleaning decisions documented
3. A published dashboard (Tableau Public or equivalent)
4. A one-page decision memo
5. An AI Workflow Appendix (prompts, contribution, one wrong moment, how you caught it)
6. An honest limitations section
7. A 3-minute recorded walkthrough, in your own voice

## Build order

Get a rough, complete pass of the whole pipeline by the halfway point of your
~40 hours: simple queries, quick cleaning, a first model, an ugly dashboard, a
draft memo. Then spend the rest lifting the weakest parts toward Strong and
Standout. The worst case at any point should be "a finished Solid project."
