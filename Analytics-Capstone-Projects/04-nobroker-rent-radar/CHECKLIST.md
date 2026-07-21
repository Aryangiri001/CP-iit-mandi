# Self-Rating Checklist — NoBroker Rent Radar

| Part | Solid ✅ when... | Strong ✅ when... | Standout ✅ when... |
|---|---|---|---|
| SQL | listings + locality tables joined; median rent by locality via GROUP BY | price-per-sqft comparisons and locality rankings via window functions | another analyst could add a second city's listings table and rerun with minimal changes |
| Cleaning | duplicates, "25k"/"25000" formats, missing sq ft, typo outliers handled | every cleaning decision (normalization rule, imputation choice, outlier rule) documented with reasoning | a data-quality note: what was wrong with the listings, what you did, what's still imperfect |
| Exploration | rent distribution and summary stats shown | rent vs. locality/floor/furnishing relationships and outliers explored; each chart makes one point | findings that visibly shaped which features you engineered |
| Model | one linear regression predicting rent, train/test split, error reported | error reported in rupees; coefficients interpreted in plain words; overfitting check | honest failure analysis — which localities/flat types the model prices badly, and why |
| Dashboard | published, shows locality rankings and price-per-sqft | built around "what should this flat cost", predicted-vs-actual shown | a pricing analyst could answer "is this listing fairly priced" at a glance |
| Memo | findings on one page | specific recommendation on what drives rent, with evidence | mispriced listings/localities called out, what data would improve the model, no follow-up needed |
| AI appendix | prompt log kept throughout | one confidently-wrong AI moment documented | judgment note on where you trusted AI vs. verified independently |
| README + walkthrough | clear README; 3-min walkthrough recorded | leads with business impact: question → answer → so-what | walkthrough sounds like an analyst presenting, honest about limits |

## Solid baseline sanity check (all required)

- [ ] One city, one model — scope respected
- [ ] Locality-attributes table built/enriched, not just the raw listings file
- [ ] Repo + non-technical README
- [ ] SQL script + notebook, cleaning documented
- [ ] Published dashboard
- [ ] One-page memo
- [ ] AI Workflow Appendix
- [ ] Limitations section
- [ ] 3-minute walkthrough recorded
