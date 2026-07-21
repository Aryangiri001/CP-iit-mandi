# Approach — Mamaearth Churn Predictor

A suggested working order with the questions you need to answer at each
step — not the answers themselves.

## Phase 1 — Get the data in and query it (SQL)

- Confirm the grain of your transactions table: one row per order, or per
  order line item? This changes every aggregate you write.
- Recency: "days since last order" as of what reference date — the dataset's
  max date, or today? Pick one and be consistent.
- Frequency: over what window — lifetime, or trailing N months? A customer
  who bought 10 times two years ago and nothing since looks very different
  from one buying steadily.
- Monetary: total spend, average order value, or both? Which one actually
  matters for a retention decision?
- Write the window-function query that computes recency/frequency/monetary
  per customer in one pass. What partition and order do you need?

## Phase 2 — Clean and explore, and define churn

- How do you tell a genuine duplicate order from two legitimate orders
  placed seconds apart? What's your rule?
- How do you handle returns — exclude the order entirely, or net the
  revenue? Either is defensible; document which and why.
- One-time buyers: are they "already churned," or a separate population you
  should exclude from a *repeat-customer* churn model? This is a real
  judgment call that shapes your whole analysis.
- The core question: at what recency gap does a repeat customer stop
  looking dormant and start looking gone? Plot the distribution of
  inter-purchase gaps for known repeat customers — where's the natural
  elbow? Your churn definition should come from this chart, not from a
  round number you picked first.

## Phase 3 — Model the churn

- Which RFM-derived features go into the model? Justify each with something
  you found in Phase 2.
- Check the class balance — what fraction of customers are churned under
  your definition? If churners are a minority, what does that mean for
  which metric you report?
- Confusion matrix: what does a missed churner (false negative) cost the
  business vs. wasting a retention offer on someone who wasn't leaving
  (false positive)?
- Interpret the coefficients: which behaviours predict leaving, and does
  that match your intuition from Phase 2? If not, why not?
- Overfitting check: train vs. test performance.

## Phase 4 — Make it decision-ready

- Segment customers by churn risk for the dashboard — what tiers make
  sense for a campaign team to act on (e.g. high/medium/low), and how many
  customers land in each?
- Memo: which segments should the growth team target first, and what
  should the campaign offer? Tie the offer to what Phase 3 told you about
  *why* those customers are leaving.
- The ethics paragraph: at what point does a "personalised win-back offer"
  stop helping the customer and start exploiting what you know about their
  behaviour? Write this honestly — it's part of the grade.

## Phase 5 — AI appendix, README, walkthrough

- Log prompts as you go. A good candidate for your "confidently wrong AI
  moment": an AI-suggested churn threshold or feature that sounded
  reasonable but didn't match what your own data showed.
