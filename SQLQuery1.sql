
Create database Power_BI2

use Power_BI2

-- Drop tables if they exist (order due to FK dependencies)
IF OBJECT_ID('Transactions', 'U') IS NOT NULL DROP TABLE Transactions;
IF OBJECT_ID('Accounts', 'U') IS NOT NULL DROP TABLE Accounts;
IF OBJECT_ID('Customers', 'U') IS NOT NULL DROP TABLE Customers;

-- Customers Table
CREATE TABLE Customers (
    CustomerID     INT PRIMARY KEY,
    Name           NVARCHAR(100),
    Gender         VARCHAR(10) NULL,
    DateOfBirth    VARCHAR(20),          -- to allow mixed formats
    Address        NVARCHAR(200) NULL,
    Email          NVARCHAR(100) NULL,
    Phone          VARCHAR(20),
    AccountID      INT                   -- Not a true FK: dirty data test
);

-- Accounts Table
CREATE TABLE Accounts (
    AccountID   INT PRIMARY KEY,
    CustomerID  INT,                     -- Not a strict FK: allow mismatches
    Type        NVARCHAR(20),
    OpenDate    VARCHAR(20),             -- for mixed formats
    Balance     DECIMAL(18,2)
);

-- Transactions Table
CREATE TABLE Transactions (
    TransactionID    INT,
    AccountID        INT,                -- Can be mismatched for demo
    TransactionDate  VARCHAR(20),        -- Allow mixed formats
    Type             VARCHAR(20),
    Amount           DECIMAL(18,2),
    Description      NVARCHAR(200) NULL,
    Currency         VARCHAR(10),

    -- Not enforcing PK to allow duplicates
);

-- Optionally, create a unique index on TransactionID + AccountID if desired (not included here to allow duplicates)


-----------------------------------------------
