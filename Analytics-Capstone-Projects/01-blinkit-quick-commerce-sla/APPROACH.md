# Approach — Blinkit SLA Diagnostic

This is a suggested working order with the questions you need to answer at
each step. It will not hand you the answers — that's the part that makes
this your project.

## Phase 1 — Get the data in and query it (SQL)

- What is the grain of the `orders` table — one row per order? Confirm
  before you write a single aggregate query, or your GROUP BYs will silently
  lie to you.
- What columns tell you an order was late vs. on time? Is "on time"
  defined by a promised-time field, or do you have to derive a 10-minute
  cutoff yourself from order and delivery timestamps? Decide and write it
  down — this definition drives everything downstream.
- Write the GROUP BY query for on-time rate by city and hour before you
  touch window functions. Get the simple version working first.
- For store-level rankings: what window function ranks stores by on-time
  rate within each city? Would you rank raw counts or rates — and why does
  that choice matter when store order volumes differ wildly?
- For the hourly compliance trend CTE: what's the natural building block —
  an hourly rollup you then trend over the month? Sketch the CTE chain on
  paper before writing SQL.
- Read your own SQL back after a day away. Would a stranger understand the
  grain, the joins, and the definitions without asking you?

## Phase 2 — Clean and explore (pandas)

- What counts as an "impossible value" here beyond negative delivery
  minutes? Zero-minute deliveries? Deliveries longer than, say, 3 hours?
  Where's your cutoff, and can you defend it?
- For missing timestamps: are they missing at random, or concentrated in
  one store/hour/category? That pattern is itself a finding — don't just
  drop and move on.
- What does the distribution of delivery time actually look like — normal,
  right-skewed, bimodal? That shape should change how you describe "late."
- Slice delivery time by hour, store cluster, and category separately
  before combining them. Which single slice shows the sharpest effect?

## Phase 3 — Model the risk

- What features can you build from what Phase 2 found (order hour, store,
  category, distance band)? Only include a feature if your EDA gave you a
  reason to.
- Logistic regression needs a class balance check first — what fraction of
  orders are actually late? If it's a small minority, plain accuracy will
  flatter you. What's the right metric here instead?
- After you get a confusion matrix: what does a false negative cost the ops
  team vs. a false positive? That's a business judgment, not a math one —
  make it explicit in your writeup.
- Overfitting check: how different is train accuracy/AUC from test? What
  would you do if they diverged a lot?

## Phase 4 — Make it decision-ready

- Before opening Tableau, write down the three questions the ops director
  would actually ask in a review. Design the dashboard to answer those,
  not to show off every chart you made.
- Memo: what are your top three bottlenecks, in priority order? What
  evidence (which chart, which number) backs each one? What would you tell
  the ops director to do Monday morning?

## Phase 5 — AI appendix, README, walkthrough

- Keep the prompt log as you go, not reconstructed at the end — you will
  forget the wrong turns otherwise.
- Find the one moment the AI was confidently wrong (a SQL query that ran
  but answered the wrong question is a classic). What told you it was
  wrong, and how did you catch it?
