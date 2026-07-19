
INSERT INTO Customers (CustomerID, Name, Gender, DateOfBirth, Address, Email, Phone, AccountID) VALUES
(1, 'Ajay Sharma', 'M', '1980-11-04', '123 Main St', NULL, '9891000001', 101),
(2, 'priya singh', NULL, '21-07-1975', '22B Park Road', 'priya@sample.com', '9891000002', 102),
(3, 'Sarah Khan', 'F', '1989/02/20', '', 'sarahkhan@email.com', '9891000003', 103),
(4, 'Mark Lee', 'M', '1995-05-14', '456 North Rd', 'markl@email.com', '9891000004', 104),
(5, 'NAdea KUmar', 'F', '04-12-1982', NULL, NULL, '9891000005', 105);

-- Accounts (outlier balances, inconsistent type case, mixed date formats, invalid CustomerID)
INSERT INTO Accounts (AccountID, CustomerID, Type, OpenDate, Balance) VALUES
(101, 1, 'SAVINGS',    '03/14/2013',      10000.00),
(102, 2, 'current',    '2011-06-20',    -157874.40),
(103, 3, 'Savings',    '2019/11/02',      0.00),
(104, 4, 'CURRENT',    '21-07-2018',        50.00),
(105, 99, 'Savings',   '07-05-2016',       14.75);    
-- CustomerID 99 doesn't exist

