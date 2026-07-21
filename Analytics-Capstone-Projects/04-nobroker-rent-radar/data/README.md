# Data — NoBroker Rent Radar

## Sample data (for pipeline testing only)

`sample_data/` has synthetic `locality_attributes.csv` (15 Bengaluru
localities) and `listings.csv` (~800 listings) matching
`sql/schema_template.sql`, with the exact messiness the handbook warns
about built in: rent stored as `"25000"`, `"25k"`, `"₹25,000"`, and
`"25000/-"` inconsistently, missing square footage, duplicate listings,
and a few typo outliers.

**This is not real-world data and does not satisfy the capstone's data
requirement.** Use it to build and test your join → cleaning → pricing
model pipeline end to end, then replace it with a real sourced dataset
before your final submission.

## What to source

1. **A public rental-listings dataset for one city** (Bengaluru is the
   handbook's example, but any single city with a decent public listings
   dataset works). Search for "house rent" / "rental listings" datasets —
   Kaggle has several for Indian cities.
2. **A locality-attributes table you build yourself** — zone, metro
   access, tech-park proximity, or similar — from public sources (open
   city zone maps, metro station lists, known tech-park locations). This
   second table is part of the assignment: the handbook explicitly asks
   you to enrich the listings data, not just clean it.

## Expected shape (adapt to what you actually find)

**listings** — one row per rental listing. Look for / derive: listing id,
locality name, BHK/flat type, square footage, floor, total floors,
furnishing status, rent.

**locality_attributes** — one row per locality. Look for / derive:
locality name (must match/standardize against listings), zone (e.g.
central/east/north/south/west), metro access (yes/no or distance), tech
park proximity (yes/no or distance).

## Before you load anything, answer these

- Do locality names in the listings file match the names you'll use in
  your locality-attributes table exactly? If not, you need a mapping step
  before the join will work.
- What rent format(s) does the raw file actually use — is it consistently
  numeric, or a mix of "25000", "25k", "₹25,000"? Check before you write
  cleaning code.
- Is square footage present for most rows, or will imputation be a real
  part of your cleaning story?

Do not commit large raw data files to git — note the source/link here
instead.
