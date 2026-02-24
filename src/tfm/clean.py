# clean.py

# Purpose: Deterministic, repeatable data cleaning to produce data/interim/ or a clean DataFrame for feature engineering. 
# No target leakage. All transformations are pure and testable.

# Responsibilities
# Canonicalize types (dates, categoricals, numerics).
# Handle missing values (drop, impute, sentinel), outliers, duplicates.
# Normalize text (whitespace, case, punctuation, Unicode forms).
# Column renaming/standardization, structural fixes (pivot/unpivot, joins).
# Row/column filtering rules, business logic validation.

# Typical contents

# clean_<domain>() functions operating on DataFrames.
# Validators and assertive checks (e.g., uniqueness, ranges).
# Reference-data merges (e.g., country codes).
# Reproducible parameters/config for thresholds.