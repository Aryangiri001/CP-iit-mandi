# Approach — CRED UPI Growth Story

A suggested working order with the questions you need to answer at each
step — not the answers themselves.

## Phase 1 — Assemble the data and query it (SQL)

- NPCI publishes monthly, app-wise. Before loading anything: what's your
  target grain — one row per (month, app)? Per (month, app, bank)? Decide,
  because your whole schema follows from it.
- What counts as "an app" consistently across 24-36 months? Apps get
  renamed, merged, or newly listed — how will you reconcile that so a
  trend line for "PhonePe" doesn't silently break because a name changed?
- Market share: share of what — volume (transaction count) or value
  (₹ amount)? These can tell different stories. Which does the strategy
  question actually need, or do you need both?
- Write the window-function query for market share over time (partition by
  month, or by app — think about which direction the window needs to run).
- Concentration: what's your chosen concentration measure (e.g. top-N
  share, or a formal index)? Decide before you write the CTE that builds
  it, and be ready to explain why you picked it.

## Phase 2 — Clean and explore

- The monthly files won't match format-for-format. What specifically
  differs — column names, app-name spelling, units (are values sometimes
  in crores, sometimes in absolute rupees)? List every fix you make.
- Plot the raw growth trend first, unadjusted. Does it look plausible, or
  does a formatting bug show up as an impossible jump between two months?
- Look for seasonality — do festive months spike? Is that a data artifact
  or real behavior?
- Plot your concentration measure over the full window. Does the story look
  different in month 1 vs. month 24? That trend, not a single snapshot, is
  your finding.

## Phase 3 — Model the trajectory

- What's actually being regressed — total volume against time? Be explicit
  about the unit and time granularity (monthly is natural here).
- Report your error in a way a non-technical strategy reader understands —
  not just a bare R² or RMSE number.
- Name specific real-world events from the last 24-36 months (pricing
  changes, new entrant launches, regulatory caps on market share) that
  could break your projection. This is where the grade actually lives —
  a linear trend without named risks is not enough.

## Phase 4 — Make it decision-ready

- Dashboard: what would CRED's strategy team actually want to check every
  month — volumes, shares, concentration trend? Design around that.
- Memo: answer the question directly. Broadening or concentrating? What's
  the evidence? What does that imply for a challenger app's strategy
  specifically (not payments in general)?

## Phase 5 — AI appendix, README, walkthrough

- A good "confidently wrong" candidate here: an AI-suggested way to merge
  or dedupe app names across months that silently combined two different
  entities, or a plausible-sounding concentration formula it applied
  incorrectly.
