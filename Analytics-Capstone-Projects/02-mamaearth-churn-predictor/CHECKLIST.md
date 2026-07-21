# Self-Rating Checklist — Mamaearth Churn Predictor

| Part | Solid ✅ when... | Strong ✅ when... | Standout ✅ when... |
|---|---|---|---|
| SQL | RFM profile computed with SQL aggregations; script runs cleanly | recency/frequency/monetary built with window functions, not just GROUP BY | another analyst could swap in a new brand's transaction table and rerun it |
| Cleaning | duplicates, returns, one-time buyers handled | every decision (dedup rule, returns treatment, one-time-buyer treatment) documented with reasoning | a data-quality note on what was messy and what remains imperfect |
| Exploration | purchase-cycle distributions and RFM summary stats shown | the recency-gap distribution is explored to justify the churn threshold; each chart makes one point | your churn definition visibly comes from the EDA, not from an arbitrary round number |
| Model | one logistic regression on churn, train/test split, error reported | confusion matrix; overfitting check; coefficients explained in plain words | honest failure analysis — which customer types the model misreads, and what data would help |
| Dashboard | published, segments customers by churn risk | built around what a campaign manager actually needs to act (which segment, how many, why) | growth team could pick a campaign target list from the dashboard alone |
| Memo | findings on one page | specific segment recommendation with evidence, plus the ethics paragraph | prioritised segments, trade-offs of each campaign stated, actionable without follow-up |
| AI appendix | prompt log kept throughout | one confidently-wrong AI moment documented | judgment note on where you trusted AI vs. verified independently |
| README + walkthrough | clear README; 3-min walkthrough recorded | leads with business impact: question → answer → so-what | walkthrough sounds like an analyst presenting, honest about limits |

## Solid baseline sanity check (all required)

- [ ] One brand, one churn definition, one model — scope respected
- [ ] Churn definition explicitly defended, not just assumed
- [ ] Repo + non-technical README
- [ ] SQL script + notebook, cleaning documented
- [ ] Published dashboard
- [ ] One-page memo (including the ethics paragraph)
- [ ] AI Workflow Appendix
- [ ] Limitations section
- [ ] 3-minute walkthrough recorded
