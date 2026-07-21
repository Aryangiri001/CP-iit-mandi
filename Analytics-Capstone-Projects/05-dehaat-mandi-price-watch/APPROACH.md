# Approach — DeHaat Mandi Price Watch

A suggested working order with the questions you need to answer at each
step — not the answers themselves.

## Phase 1 — Assemble the data and query it (SQL)

- Confirm the grain: one row per (mandi, commodity, date)? Agmarknet
  sometimes reports min/max/modal price per day per market — which of
  those will you use as "the price," and why?
- Pick your commodity and 5-10 mandis within one state before writing any
  query — the scope bound exists so you go deep, not wide.
- Rolling average price: what window length makes sense agriculturally —
  7-day? 30-day? Tie it to something real (e.g. a typical harvest-to-sale
  cycle) rather than picking arbitrarily.
- Year-on-year comparison: same calendar period across years — how do you
  handle a mandi with a data gap in one of the years you're comparing?
- CTE for the seasonal pattern: what's the natural grouping — month, or
  week-of-year? Which resolution actually helps a farmer decide *when* to
  sell?

## Phase 2 — Clean and explore

- Government data has gaps and duplicate reporting days — what's your rule
  for a market that reports twice for one date (average them? take the
  latest? investigate why?) and for genuinely missing days (interpolate?
  leave as gaps in the trend?)?
- Unit inconsistencies: is price always quoted per quintal, or does it
  vary by commodity/source? Check before you compare markets.
- Keep a running log of every reconciliation decision — this is explicitly
  graded (see the rubric's "data-quality note").
- Plot the seasonal price curve per market — where are the highs and lows
  across the year, and do they line up across markets or diverge?
- Explore arrivals vs. price — does more arrival volume visibly depress
  price in this data? At what point does that relationship become useful
  for the recommendation?

## Phase 3 — Model the price

- What predicts price in your regression — arrivals, season (month or a
  seasonal index), market (as a categorical/dummy)? Justify each with
  something from Phase 2.
- Interpret the arrivals coefficient in farmer-relevant terms: roughly how
  much does a given increase in arrivals depress price? Interpret the
  seasonal coefficients: which months genuinely pay more, holding market
  and arrivals constant?
- Report error honestly, and in a way a field agent could sanity-check
  against their own knowledge of typical price swings.
- Name what the model cannot see — weather shocks, policy changes, MSP
  announcements — and why those matter for how confidently a field agent
  should act on your recommendation.

## Phase 4 — Make it decision-ready

- Dashboard: seasonal patterns and market comparisons — designed so a
  field agent could point to it in front of a farmer and say "here's when
  and where."
- Memo: name the specific selling windows and markets the data supports,
  and state the uncertainty plainly rather than overselling confidence —
  a farmer's income depends on this, so the honesty matters more here than
  in most projects.

## Phase 5 — AI appendix, README, walkthrough

- A good "confidently wrong" candidate: an AI-suggested way to handle
  duplicate reporting days or gaps that silently distorted the seasonal
  curve for one market.
