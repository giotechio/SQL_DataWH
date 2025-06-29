/*
===================
Create Database and Schemas
===================
Script Purpose:
    This script creates a new database named "DataWH" after checking if it already exists.
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
    within the databse: rawLayer, cleanLayer and BusinessLayer.

!!  Warning !! :
    Running this code will drop the entire 'DataWH' database if it exists.
    All data in the database will be permanently deleted. Proceed with caution
    and ensure you have proper backups before running this script
*/

USE master;
GO

-- Drop and recreate the 'DataWH' database
IF EXISTS ( SELECT 1 FROM sys.databases WHERE name='DataWH')
BEGIN
  ALTER DATABASE DataWH SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWH;
END;
GO

-- Create the 'DataWH' Databse
CREATE DATABASE DataWH;
GO

USE DataWH;
GO

-- Create Schemas
CREATE SCHEMA rawLayer;
GO 

CREATE SCHEMA cleanLayer;
GO 

CREATE SCHEMA BusinessLayer;
GO 
