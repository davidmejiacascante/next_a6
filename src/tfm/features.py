# features.py

# Purpose: Deterministic transformation from clean tables to model-ready features and target(s). All leakage prevention here (train/test split before any target-informed transforms).

# Responsibilities
# Column derivations (lags, rolling windows, ratios, bins, time features).
# Encoding (one-hot, target-safe encodings with CV), scaling (fit only on train).
# Train/validation/test splits, time-based splits, group-aware splits.
# Feature selection (filter, wrapper, embedded)—document criteria.
# Persist feature matrices to data/processed/ or return X, y.

# Typical contents

# Stateless feature functions (pure transforms with parameters).
# Sklearn Pipelines/ColumnTransformers defining transformations.
# Split utilities honoring temporal or group constraints.
# Serialization of fit objects (scalers/encoders) to models/artifacts/.