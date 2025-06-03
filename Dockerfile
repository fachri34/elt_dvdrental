FROM apache/airflow:2.10.2

COPY requirements.txt /requirements.txt

# Install system Python dependencies
RUN pip install --no-cache-dir --upgrade pip setuptools wheel && \
    pip install --no-cache-dir -r /requirements.txt

# Install Astronomer Cosmos and required dbt packages
RUN pip install --no-deps 'astronomer-cosmos[dbt.all]' && \
    pip install \
        dbt-bigquery \
        dbt-postgres \             
        google-cloud-bigquery-storage \
        pandas==2.2.2

# Install dbt environment in a virtualenv (if needed by your system)
COPY dbt-requirements.txt ./
RUN python -m virtualenv dbt_venv && \
    . dbt_venv/bin/activate && \
    pip install --no-cache-dir -r dbt-requirements.txt && \
    deactivate
