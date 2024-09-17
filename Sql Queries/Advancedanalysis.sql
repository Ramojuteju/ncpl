--6. Advanced Analysis
-- Step 6.1: Create a view of active loans with payments greater than $1000:
Syntax:
Abhishek:

CREATE VIEW ActiveLoans1 AS
SELECT l.loan_id, l.customer_id, l.loan_amount, l.interest_rate, l.loan_term, lp.payment_id, lp.payment_date, lp.payment_amount
FROM loans AS l
JOIN loan_payments AS lp
	ON l.loan_id = lp.loan_id
WHERE lp.payment_amount > 100;

SELECT * FROM ActiveLoans1;

-- Step 6.2: Create an index on `transaction_date` in the `transactions` table for performance optimization:
Syntax:
CREATE INDEX idx_transaction_date
ON Transactions23 (transaction_date); 


SELECT * 
FROM sys.indexes
WHERE object_id = OBJECT_ID('Transactions23')
AND name = 'idx_transaction_date'; 
