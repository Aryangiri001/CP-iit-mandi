# Analysis Notebook Guide — DeHaat Mandi Price Watch

## 1. Load
- Pull the daily-price query results into pandas. Confirm the date range
  and mandi count match what you sourced.

## 2. Clean
- [ ] Handle gaps in daily reporting — document your approach (interpolate,
      leave as gaps, etc.) and why.
- [ ] Handle duplicate reporting days per mandi — document your rule.
- [ ] Fix unit inconsistencies, if any — document.
- [ ] Keep a running reconciliation log as you go.

## 3. Explore
- [ ] Seasonal price curve per mandi (price by month or week-of-year).
- [ ] Arrivals vs. price relationship — scatter or similar.
- [ ] How markets differ from each other — same commodity, different price
      levels or seasonal timing?
- [ ] For each chart, write the one sentence it proves.

## 4. Feature engineering
- [ ] Build season (month or a seasonal index), market (categorical), and
      arrivals as model features.
- [ ] Justify each with a specific Section 3 finding.

## 5. Model
- [ ] Train/test split, train linear regression relating price to arrivals,
      season, market.
- [ ] Report error honestly, in terms a field agent could sanity-check.
- [ ] Overfitting check: train vs. test error.
- [ ] Interpret coefficients in plain, farmer-relevant language — how much
      does a surge in arrivals depress price? Which months pay more?

## 6. Honest limitations (Standout)
- [ ] Name what the model cannot see — weather shocks, policy changes, MSP
      announcements — and explain the mechanism by which each would break
      the recommendation.
