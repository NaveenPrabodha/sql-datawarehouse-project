/*
===============================================
-- Script to create 'DataWarehouse' database and
-- three schemas: bronze, silver, and gold.
-- Schemas are used to organize data in layers.
=============================================== 
*/

-- Switch to the 'master' database
USE master;

-- Create 'DataWarehouse' database if it doesn't already exist
IF NOT EXISTS (
    SELECT name FROM sys.databases WHERE name = N'DataWarehouse'
)
BEGIN
    CREATE DATABASE DataWarehouse;  -- Create the database
END;

GO  -- End of first batch

-- Switch context to the newly created or existing DataWarehouse database
USE DataWarehouse;
GO  -- End of second batch

-- Create schema 'bronze' for raw or ingested data
CREATE SCHEMA bronze;
GO  -- End of third batch

-- Create schema 'silver' for cleansed and transformed data
CREATE SCHEMA silver;
GO  -- End of fourth batch

-- Create schema 'gold' for curated, analytics-ready data
CREATE SCHEMA gold;
GO  -- End of fifth batch
