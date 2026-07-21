# Analysis Notebook Guide — Blinkit SLA Diagnostic

Use this as your notebook's section outline. Each section lists what must be
true when you're done with it, not the code to get there.

## 1. Load
- Pull the SQL query results (or the raw tables) into pandas.
- Confirm row counts match what you saw in SQL.

## 2. Clean
- [ ] Handle missing timestamps — decide and document: drop, impute, or flag?
- [ ] Handle impossible values — negative delivery minutes, zero-minute
      deliveries, absurd outliers. What's your cutoff and why?
- [ ] Handle duplicates, if any.
- [ ] Write one sentence per decision in a markdown cell as you make it —
      do not batch this at the end, you will forget your reasoning.

## 3. Explore
- [ ] Distribution of delivery time (histogram/KDE) — shape, skew, outliers.
- [ ] Delivery time by hour of day.
- [ ] Delivery time by store cluster / store.
- [ ] Delivery time by category.
- [ ] For each chart, write the one sentence it proves. If a chart doesn't
      have a one-sentence takeaway, cut it or fix it.
- [ ] Note anything here that changes your model's feature list.

## 4. Feature engineering
- [ ] Build order hour, store (or store cluster), category, distance band
      (or whatever your EDA justified) as model features.
- [ ] Justify each feature with a specific chart or stat from Section 3 —
      "included because Section 3.3 showed X" is the standard to hit.

## 5. Model
- [ ] Train/test split — before touching the model, decide your split
      strategy (random? time-based, given this is one month of ops data?).
- [ ] Train a logistic regression classifying at-risk vs. on-time.
- [ ] Report accuracy AND the confusion matrix. Explain why accuracy alone
      is misleading here.
- [ ] Overfitting check: compare train vs. test performance.
- [ ] Interpret the coefficients in plain English — which factors push an
      order toward "at risk," and by roughly how much?

## 6. Honest limitations (Standout)
- [ ] Where does the model get it wrong — a specific hour, store, or
      category it consistently misses?
- [ ] What data, if you had it, would likely fix that blind spot?
