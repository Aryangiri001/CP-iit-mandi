# Self-Rating Checklist — DeHaat Mandi Price Watch

| Part | Solid ✅ when... | Strong ✅ when... | Standout ✅ when... |
|---|---|---|---|
| SQL | daily arrivals/prices loaded for 5-10 mandis; GROUP BY answering basic price questions | rolling averages and YoY comparisons via window functions; seasonal pattern built with CTEs | another analyst could add an 11th mandi or a second commodity with minimal changes |
| Cleaning | gaps, unit inconsistencies, duplicate reporting days handled | every reconciliation decision documented with reasoning | a data-quality note: what Agmarknet's data got wrong/inconsistent, what remains imperfect |
| Exploration | seasonal price curve and summary stats shown | arrivals-vs-price relationship and market differences explored; each chart makes one point | findings that visibly shaped the model's features (e.g. how you encoded season) |
| Model | one linear regression on price, train/test split, error reported | coefficients interpreted in plain, farmer-relevant terms; overfitting check | what the model can't see (weather, policy, MSP) is named specifically, with reasoning |
| Dashboard | published, shows seasonal patterns and market comparisons | built around the advisory team's actual field questions (when, where) | a field agent could answer "when and where should this farmer sell" at a glance |
| Memo | findings on one page | specific selling windows/markets recommended, with evidence | uncertainty stated plainly, prioritised, actionable without follow-up questions |
| AI appendix | prompt log kept throughout | one confidently-wrong AI moment documented | judgment note on where you trusted AI vs. verified independently |
| README + walkthrough | clear README; 3-min walkthrough recorded | leads with business impact: question → answer → so-what | walkthrough sounds like an analyst presenting, honest about limits |

## Solid baseline sanity check (all required)

- [ ] One crop, one state, 2-3 years, 5-10 mandis — scope respected
- [ ] Repo + non-technical README
- [ ] SQL script + notebook, cleaning documented
- [ ] Published dashboard
- [ ] One-page memo
- [ ] AI Workflow Appendix
- [ ] Limitations section
- [ ] 3-minute walkthrough recorded
