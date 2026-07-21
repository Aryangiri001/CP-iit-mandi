# Dashboard Brief — Blinkit SLA Diagnostic

**Audience:** the ops director, in a regular ops review meeting. They are
not a data person — design for someone scanning the dashboard in under a
minute before a meeting.

## Must answer, at a glance
1. Is on-time compliance trending up or down, and where (city/hour)?
2. Which stores are the worst bottlenecks — and are they worst because of
   volume, or genuinely worse performance?
3. What kind of order is most at risk of running late right now (hour,
   category, distance band)?

## Suggested components (adapt, don't just copy)
- Compliance trend line (hourly or daily) — Mumbai vs. Bengaluru.
- Store-level ranking (from your SQL window function work).
- At-risk pattern view — however you choose to visualise which
  hour/category/distance-band combinations carry the most risk.

## Before you build
- Sketch it on paper first. What's the one thing someone should notice in
  the first three seconds of looking at it?
- Every chart should trace back to a specific finding from your notebook —
  don't add a chart just because the data supports it.

## Publish
- Tableau Public (or equivalent free/public tool). Link it in your README.
