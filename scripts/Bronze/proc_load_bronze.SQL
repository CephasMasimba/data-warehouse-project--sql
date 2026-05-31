Stored Procedure : Load Bronze Layer(Source - > Bronze)
Sript Purpose : This stored procedure, loads data into the 'bronze' schema from the external CSV files.
It perfoms the following actions :
-Truncate the bronze tables before loading data
-Uses the 'BULK INSERT' command to load data from CSV Files to bronze tables
Prepared by : Cephas Masimba


CREATE OR ALTER PROCEDURE bronze.load_bronze AS
BEGIN

TRUNCATE TABLE bronze.crm_cust_info;
BULK INSERT bronze.crm_cust_info
FROM 'C:\Users\cepha\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\cust_info.CSV'
WITH (
      FIRSTROW = 2,
      FIELDTERMINATOR = ',',
      TABLOCK
      );

      
TRUNCATE TABLE bronze.crm_prd_info;
BULK INSERT bronze.crm_prd_info
FROM 'C:\Users\cepha\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\prd_info.CSV'
WITH (
      FIRSTROW = 2,
      FIELDTERMINATOR = ',',
      TABLOCK
      );

TRUNCATE TABLE bronze.crm_sales_info;
BULK INSERT bronze.crm_sales_info
FROM 'C:\Users\cepha\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\sales_details.CSV'
WITH (
      FIRSTROW = 2,
      FIELDTERMINATOR = ',',
      TABLOCK
      );



TRUNCATE TABLE bronze.erp_loc_a101;
BULK INSERT bronze.erp_loc_a101
FROM 'C:\Users\cepha\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\loc_a101.CSV'
WITH (
      FIRSTROW = 2,
      FIELDTERMINATOR = ',',
      TABLOCK
      );


TRUNCATE TABLE bronze.erp_loc_az12;
BULK INSERT bronze.erp_loc_az12
FROM 'C:\Users\cepha\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\cust_az12.CSV '
WITH (
      FIRSTROW = 2,
      FIELDTERMINATOR = ',',
      TABLOCK
      );


TRUNCATE TABLE bronze.erp_px_cat_g1v2;
BULK INSERT bronze.erp_px_cat_g1v2
FROM 'C:\Users\cepha\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\px_cat_g1v2.CSV'
WITH (
      FIRSTROW = 2,
      FIELDTERMINATOR = ',',
      TABLOCK
      );
      END







