--Insertion Customers23:
INSERT INTO Customers23 (customer_id, first_name, last_name, address, city, state, zip)        
VALUES
(1, 'John', 'Doe', '123 Elm St', 'Toronto', 'ON', 'M4B1B3'),
(2, 'Jane', 'Smith', '456 Maple Ave', 'Ottawa', 'ON', 'K1A0B1'),
(3, 'Michael', 'Johnson', '789 Oak Dr', 'Montreal', 'QC', 'H1A1A1'),
(4, 'Emily', 'Davis', '101 Pine Rd', 'Calgary', 'AB', 'T2A0A1'),
(5,'David', 'Wilson', '202 Birch’Blvd', 'Vancouver', 'BC', 'V5K0A1');

--Insertion Accounts23:
INSERT INTO Accounts23 (account_id, customer_id, account_type, balance)
VALUES
(1, 1, 'Savings', 1000.50),
(2, 2, 'Checking', 2500.75),
(3, 3, 'Savings', 1500.00),
(4, 4, 'Checking', 3000.25),
(5, 5, 'Savings', 500.00);

--Insertion Transactions23:
INSERT INTO Transactions23(transaction_id, account_id, transaction_date, transaction_amount, transaction_type)
 VALUES
(1, 1, '2024-01-01', 100.50, 'Deposit'),
(2, 2, '2024-01-02', 200.75, 'Withdrawal'),
(3, 3, '2024-01-03', 150.00, 'Deposit'),
(4, 4, '2024-01-04', 300.25, 'Withdrawal'),
(5, 5, '2024-01-05', 250.00, 'Deposit');

--Insertion Loans23:
INSERT INTO Loans23
(loan_id, customer_id, loan_amount, interest_rate, loan_term
)
VALUES
(1, 1, 10000.50, 5.5, 36),
(2, 2, 20000.75, 4.5, 48
),
(3, 3, 15000.00, 6.0, 60),
(4, 4, 30000.25, 3.5, 24),
(5, 5, 25000.00, 5.0, 36);

--Insertion Loan_Payment23:
INSERT INTO Loan_Payments23
(payment_id, loan_id, payment_date, payment_amount)
VALUES
(1, 1, '2024-01-01', 100.00),
(2, 2, '2024-01-02', 150.00),
(3, 3, '2024-01-03', 200.00),
(4, 4, '2024-01-04', 250.00),
(5, 5, '2024-01-05', 300.00);