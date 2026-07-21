# Analysis Notebook Guide — NoBroker Rent Radar

## 1. Load
- Pull listings and locality-attributes into pandas. Confirm the join key
  matches cleanly (check for unmatched localities).

## 2. Clean
- [ ] Normalize rent formats ("25k" vs "25000" vs others) — document the rule.
- [ ] Handle missing square footage — document impute/drop/flag decision.
- [ ] Handle duplicate listings.
- [ ] Identify and handle typo outliers vs. genuine high-end listings —
      document how you told them apart.

## 3. Explore
- [ ] Overall rent distribution (histogram/KDE).
- [ ] Rent by locality (boxplot or similar) — where's the spread widest?
- [ ] Rent vs. square footage, floor, furnishing — relationships and outliers.
- [ ] For each chart, write the one sentence it proves.
- [ ] Note anything here that changes your feature list.

## 4. Feature engineering
- [ ] Build rent-per-sqft, furnishing encoded, locality tier, floor band
      (or whatever your EDA justified).
- [ ] Watch for circularity — don't let a feature be a disguised version of
      your target.

## 5. Model
- [ ] Train/test split, train linear regression.
- [ ] Report error in rupees (not just R²).
- [ ] Overfitting check: train vs. test error.
- [ ] Interpret coefficients in plain English — what does each feature add
      or subtract from predicted rent?

## 6. Honest limitations (Standout)
- [ ] Which localities or flat types does the model price worst? Plot
      predicted vs. actual and look for the biggest misses.
- [ ] What feature or data source, if you had it, would likely fix that?
