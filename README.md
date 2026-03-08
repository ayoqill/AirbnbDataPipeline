# AirbnbDataPipeline
End-to-End Data Engineering Project

---
📋 Overview

This project implements a complete end-to-end data engineering pipeline for Airbnb data using modern data engineering tools. The solution demonstrates best practices in data warehousing, transformation, and analytics using Snowflake and dbt (Data Build Tool).

The pipeline processes Airbnb listings, bookings, and hosts data through a medallion architecture (Bronze → Silver → Gold), implementing incremental loading, slowly changing dimensions (SCD Type 2), and creating analytics-ready datasets.

---
🏗️ Architecture
Data Flow

Source Data (CSV) → Snowflake (Staging) → Bronze Layer → Silver Layer → Gold Layer
　　　　　　　　　　　　　　　　　　　　　　　　　↓　　　　　　↓　　　　　↓
　　　　　　　　　　　　　　　　　　　　　　  
                                        Raw Tables　 Cleaned Data　 Analytics

---
Technology Stack

Cloud Data Warehouse: Snowflake

Transformation Layer: dbt (Data Build Tool)

Data Source: Local CSV Files

Version Control: Git

---
Key dbt Features

Incremental models

Snapshots (SCD Type 2)

Custom macros

Jinja templating

Testing and documentation

---
📊 Data Model

Medallion Architecture

🥉 Bronze Layer (Raw Data)

Raw data ingested from staging with minimal transformations:

bronze_bookings – Raw booking transactions

bronze_hosts – Raw host information

bronze_listings – Raw property listings

🥈 Silver Layer (Cleaned Data)

Cleaned and standardized data:

silver_bookings – Validated booking records

silver_hosts – Enhanced host profiles with quality metrics

silver_listings – Standardized listing information with price categorization

🥇 Gold Layer (Analytics-Ready)

Business-ready datasets optimized for analytics:

obt (One Big Table) – Denormalized fact table joining bookings, listings, and hosts

fact – Fact table for dimensional modeling

---

<img width="1905" height="927" alt="dbt graph real" src="https://github.com/user-attachments/assets/8fa6598f-4cc0-4612-887b-2613b25bf7ab" />

<img width="1901" height="888" alt="snowflake" src="https://github.com/user-attachments/assets/15a1f5d6-cd87-46a1-a362-845a922cb90a" />

<img width="1872" height="893" alt="snowflake2" src="https://github.com/user-attachments/assets/f0752642-4cab-4030-b584-09301de1e809" />


---
Snapshots (SCD Type 2) --> SOOON

Slowly Changing Dimensions to track historical changes:

dim_bookings – Historical booking changes

dim_hosts – Historical host profile changes

dim_listings – Historical listing changes
