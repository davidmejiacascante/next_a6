# ingest.py

# Purpose: Acquire data from source systems and persist it to data/raw/ (and optionally data/external/). Zero transformation beyond minimal normalization (e.g., column name standardization, type coercion for dates if unavoidable for storage).
# Responsibilities

# Connect to sources (files, DBs, APIs, message queues).
# Snapshot raw inputs with immutable filenames (timestamped/partitioned).
# Basic schema presence checks (columns exist, row counts > 0).
# Metadata logging (source, version, extraction time, row counts, checksums).
# Idempotency and incremental pulls (e.g., since watermark).

# Typical contents

# Configuration loaders (env/pyproject/.env).
# Source clients (DB connectors, API wrappers).
# IO utilities (atomic write, hash/checksum).
# Minimal validation (required columns, simple constraints).