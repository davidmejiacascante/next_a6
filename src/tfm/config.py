from pathlib import Path

#config.py esta en src/tfm/config.py suba 2 niveles a la raiz
BASE_DIR = Path(__file__).resolve().parents[2]

RAW_DIR = BASE_DIR /"data" / "raw"
INTERIM_DIR = BASE_DIR /"data" / "interim"
PROCESSED_DIR = BASE_DIR /"data" / "processed"