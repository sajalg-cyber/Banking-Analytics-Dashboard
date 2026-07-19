
-- Example: Generate 10,000 synthetic transactions with data issues
;WITH NumberedRows AS (
    SELECT 
        ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS rn
    FROM
        sys.all_objects a
        CROSS JOIN sys.all_columns c
)
INSERT INTO Transactions (
    TransactionID, AccountID, TransactionDate, Type, Amount, Description, Currency
)
SELECT
    100000 + rn AS TransactionID,
    -- Some non-matching AccountIDs for referential issues
    CASE WHEN rn % 20 = 0 THEN 9999 ELSE 101 + (rn % 100) END AS AccountID,
    -- Mixed date formats
    CASE 
        WHEN rn % 3 = 0 THEN FORMAT(GETDATE() - (rn % 365), 'yyyy/MM/dd')
        ELSE CONVERT(VARCHAR(10), GETDATE() - (rn % 365), 105)
    END AS TransactionDate,
    -- Inconsistent Type capitalization
    CASE WHEN rn % 2 = 0 THEN 'Credit' ELSE 'DEBIT' END AS Type,
    -- Amount with negatives and outliers
    CASE 
        WHEN rn % 1000 = 0 THEN -99999.99       -- negative outlier
        WHEN rn % 250 = 0 THEN 1000000.99       -- positive outlier
        ELSE (ABS(CHECKSUM(NEWID())) % 5000) *
             CASE WHEN rn % 2 = 0 THEN 1 ELSE -1 END 
    END AS Amount,
    -- NULLs for descriptions, inconsistent case
    CASE 
        WHEN rn % 50 = 0 THEN NULL
        ELSE CASE WHEN rn % 2 = 0 THEN 'payment' ELSE 'Salary Credit' END
    END AS Description,
    -- Mixed currency cases
    CASE 
        WHEN rn % 3 = 0 THEN 'usd'
        WHEN rn % 5 = 0 THEN 'INR'
        ELSE 'USD'
    END AS Currency
FROM NumberedRows
WHERE rn <= 10000;


select * from Transactions