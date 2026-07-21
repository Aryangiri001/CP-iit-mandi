# Self-Rating Checklist — Blinkit SLA Diagnostic

Rate each row honestly before submitting. Push your last hours toward the
lowest-rated rows.

| Part | Solid ✅ when... | Strong ✅ when... | Standout ✅ when... |
|---|---|---|---|
| SQL | orders/stores/delivery-partners tables exist; GROUP BY on-time rate by city/hour runs cleanly | store rankings use window functions; hourly trend is built with a CTE | another analyst could read your SQL and extend it to a third city without asking you anything |
| Cleaning | missing timestamps and impossible values (negative/absurd delivery minutes) are handled, not ignored | every drop/fix decision has a written reason in the notebook | a short data-quality note lists what was wrong, what you did, what's still imperfect |
| Exploration | delivery-time distribution and summary stats are shown | delivery time is broken down by hour, store cluster, category with outliers noted; each chart makes one point | a specific EDA finding visibly changed which features you engineered or how you framed the question |
| Model | one logistic regression on a train/test split, error/accuracy reported | confusion matrix shown; coefficients explained in plain language; overfitting explicitly checked | you explain where the model fails (which hour/store/category) and what data would fix it |
| Dashboard | published, shows compliance trend + bottleneck ranking + at-risk pattern | built around the ops director's actual review questions | the ops director could answer "what should I fix first" from the dashboard alone, no memo needed |
| Memo | findings on one page | top-3 bottlenecks named with a specific recommendation and evidence | bottlenecks are prioritised, trade-offs of fixing each are stated, no follow-up questions needed |
| AI appendix | prompt log kept throughout | one confidently-wrong AI moment documented with how you caught it | a judgment note on where you trusted AI vs. verified it yourself |
| README + walkthrough | clear README; 3-min walkthrough recorded | leads with business impact: question → answer → so-what | walkthrough sounds like an analyst presenting — confident, upfront about limits |

## Solid baseline sanity check (all required)

- [ ] Two cities, one month, one model — scope respected
- [ ] Repo + non-technical README
- [ ] SQL script + notebook, cleaning documented
- [ ] Published dashboard
- [ ] One-page memo
- [ ] AI Workflow Appendix
- [ ] Limitations section
- [ ] 3-minute walkthrough recorded
