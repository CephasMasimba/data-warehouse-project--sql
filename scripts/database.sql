
---Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
Begin
    Alter DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    Drop  DATABASE DataWarehouse;
    END; 
    GO

---create DATABASE the 'DataWarehouse' database

CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

Create Schema bronze;
GO

Create Schema silver;
GO

Create Schema gold;
