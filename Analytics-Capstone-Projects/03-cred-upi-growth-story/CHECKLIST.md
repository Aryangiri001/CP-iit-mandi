# Self-Rating Checklist — CRED UPI Growth Story

| Part | Solid ✅ when... | Strong ✅ when... | Standout ✅ when... |
|---|---|---|---|
| SQL | monthly UPI data loaded, GROUP BY answering basic volume/value questions | market share, MoM growth, rankings via window functions; concentration built with CTEs | another analyst could plug in a 25th month of new data and rerun cleanly |
| Cleaning | naming/format inconsistencies across monthly files fixed | every fix (renames, unit mismatches, format changes) documented with reasoning | a data-quality note on what NPCI's files got wrong/inconsistent, and what remains imperfect |
| Exploration | growth trends and summary stats shown | seasonality and the concentration curve explored; each chart makes one point | findings that visibly shaped which apps you grouped vs. bucketed into "long tail" |
| Model | one linear regression on volume growth, error reported | error explained in real-world terms; overfitting/fit check done; coefficients explained | named, specific real-world events that could break the projection, with reasoning |
| Dashboard | published, shows volumes/shares/concentration over time | built around the strategy team's actual monthly questions | answers "broadening or concentrating" at a glance |
| Memo | findings on one page | direct answer to the strategy question with evidence | trade-offs / strategic implications for a challenger stated, no follow-up needed |
| AI appendix | prompt log kept throughout | one confidently-wrong AI moment documented | judgment note on where you trusted AI vs. verified independently |
| README + walkthrough | clear README; 3-min walkthrough recorded | leads with business impact: question → answer → so-what | walkthrough sounds like an analyst presenting, honest about limits |

## Solid baseline sanity check (all required)

- [ ] 24-36 months, top apps + long-tail bucket, one model — scope respected
- [ ] Repo + non-technical README
- [ ] SQL script + notebook, cleaning documented
- [ ] Published dashboard
- [ ] One-page memo
- [ ] AI Workflow Appendix
- [ ] Limitations section
- [ ] 3-minute walkthrough recorded
