# Analysis Notebook Guide — Mamaearth Churn Predictor

## 1. Load
- Pull the RFM query results into pandas. Confirm row counts (one row per
  customer) match your SQL.

## 2. Clean
- [ ] Handle duplicate orders — document your dedup rule.
- [ ] Handle returns — excluded entirely, or netted from revenue? Document.
- [ ] Decide how one-time buyers are treated in your churn model, and say why.

## 3. Explore — and define churn
- [ ] Distribution of recency, frequency, monetary value separately.
- [ ] Distribution of inter-purchase gaps for repeat customers — find the
      elbow where "dormant" starts looking like "gone."
- [ ] State your churn definition explicitly in a markdown cell, with the
      chart that justifies it referenced directly.
- [ ] Note anything here that changes your model's feature list.

## 4. Feature engineering
- [ ] Build features from the RFM profile (and anything else your EDA
      justified).
- [ ] Justify each feature with a specific finding from Section 3.

## 5. Model
- [ ] Check class balance — what % of customers are "churned" under your
      definition?
- [ ] Train/test split, train a logistic regression.
- [ ] Report the confusion matrix, not just accuracy — explain why, given
      the class balance you found.
- [ ] Overfitting check: train vs. test performance.
- [ ] Interpret coefficients in plain English — which behaviours predict
      churn, and does it match your Section 3 intuition?

## 6. Honest limitations (Standout)
- [ ] Which customers does the model misclassify most, and what pattern do
      they share?
- [ ] What data would help close that gap?

## 7. Ethics note (required in the memo, worth thinking through here first)
- [ ] Where does a "personalised" retention offer stop being helpful and
      start exploiting behavioural data? Write your actual view — this is
      graded on honesty, not on reaching a particular conclusion.
