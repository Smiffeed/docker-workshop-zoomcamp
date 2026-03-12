import pandas as pd
from sqlalchemy import create_engine

# 1. Load the Parquet file
# df = pd.read_parquet('/workspaces/docker-workshop-zoomcamp/module_1/Homework/green_tripdata_2025-11.parquet')
df = pd.read_csv('/workspaces/docker-workshop-zoomcamp/module_1/Homework/taxi_zone_lookup.csv')

# 2. Connect to PostgreSQL
# Format: postgresql://username:password@localhost:5432/database_name
engine = create_engine('postgresql://root:root@localhost:5432/postgres')

# 3. Upload to a new or existing table
df.to_sql('taxi_zone_lookup', engine, if_exists='replace', index=False)