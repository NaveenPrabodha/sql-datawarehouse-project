USE master;

IF NOT EXISTS (
    SELECT name FROM sys.databases WHERE name = N'DataWarehouse'
)
BEGIN
    CREATE DATABASE DataWarehouse;
END;

GO

USE DataWarehouse;
GO

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
