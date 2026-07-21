# Analysis Notebook Guide — CRED UPI Growth Story

## 1. Load
- Pull the monthly app-stats query results into pandas. Confirm every
  month in your target window is present.

## 2. Clean
- [ ] Reconcile app-name inconsistencies across months — document every
      merge/rename decision.
- [ ] Fix unit inconsistencies (e.g. crores vs. absolute values) — document.
- [ ] Handle any missing months or apps — document how and why.

## 3. Explore
- [ ] Overall volume and value trend across the full window.
- [ ] Market share trend for the top apps, over time.
- [ ] Seasonality — do festive months spike? Show it.
- [ ] The concentration curve over time — is it rising or falling?
- [ ] For each chart, write the one sentence it proves.

## 4. Feature engineering (for the projection model)
- [ ] Decide your time feature (month index, or actual date) and target
      (total volume, or value — pick based on what the strategy question needs).
- [ ] Note any structural breaks in the trend you should be aware of before modelling.

## 5. Model
- [ ] Train/test split appropriate for time series (usually: train on
      earlier months, test on latest — not a random split).
- [ ] Train linear regression, project next quarter.
- [ ] Report error in units a strategy reader understands.
- [ ] Overfitting/fit check — how well does it track recent months, not
      just the long-run trend?
- [ ] Interpret the trend coefficient in plain English.

## 6. Honest limitations (Standout)
- [ ] Name specific events (pricing changes, new entrants, regulation)
      that could break this projection, and explain the mechanism.
