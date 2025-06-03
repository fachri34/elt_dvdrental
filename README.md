# Project Overview

This project focuses on building an ELT pipeline to process and model data from a DVD rental database for analytical purposes. It leverages **Apache Airflow** to orchestrate workflows and **DBT** to transform data into a clean, structured star schema for reporting and business intelligence.

## Project Structure

The project consists of two main components:

1. **etl_init**
   - Initializes the staging PostgreSQL database.
   - Creates raw tables and prepares the schema.
   - Sets up data types and indexing for optimized query performance.

2. **etl_pipeline**
   - Extracts data from various sources such as PostgreSQL
   - Loads raw data into the staging area.
   - Performs transformation using DBT to create dimensional and fact tables based on a star schema.
   - Includes data cleaning, mapping, and validation processes.

## Technologies Used

- **Apache Airflow**: Manages workflow orchestration for the ELT process.
- **Python**: Used for scripting, data extraction, and integration.
- **DBT (Data Build Tool)**: Used to model and transform data into analytical tables.
- **PostgreSQL**: Acts as the staging and data warehouse database.
- **Minio**: Provides object storage functionality (S3-compatible).
- **Google Sheets API**: Enables extraction of data from spreadsheets.
- **Requests library**: Used for API-based data extraction.
- **Pandas**: Handles in-memory data manipulation and preparation.

## Getting Started

To run the project locally:

1. **Install Dependencies**
   - Ensure Python, Apache Airflow, PostgreSQL, and other required packages are installed.
   - Use `pip install -r requirements.txt` to install Python libraries.

2. **Configure Airflow**
   - Set up Airflow connections for PostgreSQL, Minio, and Google Sheets via the Airflow UI or environment variables.

3. **Initialize the Database**
   - Trigger the `etl_init` DAG to create the necessary schema and tables in the database.

4. **Run the Pipeline**
   - Trigger the `etl_pipeline` DAG to start extracting, transforming, and loading the data.
   - DBT will automatically execute models to generate dimension and fact tables.

## Contributing

We welcome contributions! To contribute:

1. Fork this repository.
2. Create a new branch for your changes.
3. Commit your changes with clear and descriptive messages.
4. Push the branch and create a pull request.

## License

This project is licensed under the **Apache License 2.0** and is open for use and modification.

---

*Built with Apache Airflow, DBT, and passion for clean data pipelines.*
