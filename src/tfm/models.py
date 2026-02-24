# models.py
# Purpose: Model training, evaluation, selection, and persistence. Reproducible, configurable training runs that consume outputs from features.py.
# Responsibilities

# Define estimators and search spaces.
# Cross-validation strategy, metrics, and model selection.
# Training, evaluation, and error analysis.
# Persistence of trained pipeline, metrics, and artifacts to models/ and reports/.
# Inference utilities: load_model(), predict().

# Typical contents

# Sklearn pipelines that include the preprocessor and estimator.
# Hyperparameter search (GridSearchCV/RandomizedSearchCV/Bayes).
# Metric computation (regression/classification).
# Model versioning and serialization (joblib, pickle, or MLflow).
# Reproducibility (random seeds, pinned data snapshot paths).