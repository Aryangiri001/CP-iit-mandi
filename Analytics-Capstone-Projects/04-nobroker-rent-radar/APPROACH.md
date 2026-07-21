# Approach — NoBroker Rent Radar

A suggested working order with the questions you need to answer at each
step — not the answers themselves.

## Phase 1 — Assemble the data and query it (SQL)

- Your listings table and your locality-attributes table need a common
  key. Does the listings dataset already have a clean locality field, or
  will you need to standardise locality names yourself before you can join
  (e.g. "Indira Nagar" vs "Indiranagar")? Do this before you write a
  single join.
- Median rent by locality: why median and not mean, given what you already
  expect about outliers in this kind of data?
- Price-per-square-foot: this is a derived value — does it belong in the
  base table, or should it be computed in the query itself? Either is
  defensible; be consistent.
- Write the window-function query for locality rankings by price-per-sqft.

## Phase 2 — Clean and explore

- Rents entered as "25k" and "25000" — what's your normalization rule, and
  does it generalize to other formats you might find (₹25,000, 25000/-,
  etc.)?
- Missing square footage: impute, drop, or flag? What would you impute
  from — locality average? Flat-type average?
- Typo outliers vs. real penthouses — how do you tell them apart? A rent
  of ₹5 lakh could be a typo or a real luxury listing. What check
  distinguishes them (e.g. cross-check against square footage or locality
  norms)?
- Document every one of these decisions in the notebook as you make them.
- Use Seaborn to show the rent distribution overall, and by locality —
  where's the spread widest?

## Phase 3 — Model the price

- This is the feature-engineering showcase. From raw columns, what
  predictive features can you build — rent per sq ft (careful: don't use
  this as both a feature and something derived from your target in a
  circular way), furnishing level encoded, locality tier, floor band?
- Which features actually explain price, and by how much, once you fit the
  model? Interpret the coefficients in terms a non-technical pricing
  analyst would understand (e.g. "furnished adds about ₹X over unfurnished,
  holding locality and size constant").
- Report error in rupees, not just R² — what does the price team need to
  see is the model 500 rupees off or 15,000 rupees off?
- Where does it break down — specific localities or flat types with
  unusually large errors? What's your best explanation why (e.g. is the
  model missing a feature those cases specifically need, like a premium
  amenity)?

## Phase 4 — Make it decision-ready

- Dashboard: "what should this flat cost?" — design so a pricing analyst
  can input/select a locality and flat type and get an answer, or at least
  browse to one quickly.
- Memo: what drives rent in this city? Where do current listings look
  mispriced (over- or under-priced relative to your model)? What data
  would make the model better?

## Phase 5 — AI appendix, README, walkthrough

- A good "confidently wrong" candidate: an AI-suggested cleaning rule for
  the "25k" vs "25000" formatting that silently mishandled an edge case
  (e.g. "2.5L" or a typo with extra digits).
