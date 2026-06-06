# consumidor.gov.br Analytics Engineering Project

## Overview

This project demonstrates an end-to-end Analytics Engineering workflow using consumidor.gov.br complaint data.

The solution was built using a modern Lakehouse architecture with Databricks, Delta Lake and dbt, transforming raw complaint data into analytical data models ready for business intelligence consumption.

## Objectives

* Build a Lakehouse architecture using Databricks
* Implement a Bronze → Staging → Gold data flow
* Apply dimensional modeling concepts
* Use dbt for data transformation and testing
* Create documented and reproducible analytics pipelines
* Prepare curated datasets for Power BI consumption

## Architecture

```text
CSV Source
    ↓
Databricks Bronze Layer
    ↓
dbt Staging Layer
    ↓
Gold Layer (Dimensional Models)
    ↓
Power BI
```

## Technology Stack

* Databricks
* Delta Lake
* Unity Catalog
* dbt
* SQL
* Python
* Git
* GitHub
* Power BI

## Data Model

### Source

* raw_consumidor_gov

### Staging

* stg_consumidor_gov

### Dimensions

* dim_empresa
* dim_problema

### Facts

* fact_reclamacoes

## dbt Features Implemented

### Sources

Source definitions were implemented to establish lineage from the raw layer.

### Models

* Staging models
* Dimensional models
* Fact models

### Testing

Data quality tests were implemented for critical fields, including:

* Not Null validation on dimensions
* Not Null validation on fact tables

### Documentation

dbt documentation and lineage graph generation were implemented.

## Analytics Engineering Workflow

```text
Source
    ↓
stg_consumidor_gov
    ↓
 ┌───────────────┬───────────────┐
 ↓               ↓               ↓
dim_empresa  dim_problema  fact_reclamacoes
```

## Repository Structure

```text
models/
├── staging/
│   ├── sources.yml
│   └── stg_consumidor_gov.sql
│
└── marts/
    ├── dim_empresa.sql
    ├── dim_problema.sql
    ├── fact_reclamacoes.sql
    └── schema.yml
```

## Future Improvements

* Power BI dashboard
* Additional dbt tests
* Incremental models
* CI/CD pipeline
* Advanced dimensional modeling

## Author

Fernando Ferret
