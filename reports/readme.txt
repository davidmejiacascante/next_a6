reports/ Directory
Purpose: Final, human‑readable outputs of the analysis or modeling process.
Contents usually include:
1. Metrics and evaluation artifacts
Examples:

run_20250115_metrics.json
model_performance.csv
error_analysis.parquet

These contain:

RMSE, MAE, R²
classification metrics (precision, recall, F1, ROC AUC)
per‑segment errors
confidence intervals
validation and test set results

2. Final reports / summaries
Examples:

summary.md
model_report.pdf
data_quality_report.html
eda_overview.html

These contain:

EDA conclusions
data quality findings
modeling rationale
feature importance commentary
recommendations

3. Tables for stakeholders
Examples:

top_predictive_features.csv
forecast_vs_actual.xlsx
business_kpis.csv

These are often exported from notebooks.
4. Serialized evaluation artifacts
Useful for reproducibility and auditing:

residual distributions
confusion matrices
calibration results

Examples:

confusion_matrix.npy
residuals.parquet
calibration_curve.json


reports/figures/ Directory
Purpose: All static or generated visual artifacts from EDA, modeling, or reporting.
Contains visualizations such as:
1. Exploratory Data Analysis plots
Examples:

missingness_heatmap.png
sales_distribution.png
correlation_matrix.png
time_series_trend.png

2. Feature analysis figures
Examples:

feature_importance_rf.png
partial_dependence_sales.png
shap_summary.png
shap_dependence_store_id.png

3. Model evaluation plots
Examples:

residual_plot.png
prediction_vs_actual.png
roc_curve.png
pr_curve.png
learning_curve.png

4. Domain‑specific plots
Examples:

sales_by_region.png
weekly_seasonality.png
demand_forecast_horizon.png

5. Figures used in final reports
Final PDFs, HTML summaries, or PowerPoints typically embed these.