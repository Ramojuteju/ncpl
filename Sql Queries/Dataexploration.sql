-- Step 4.1: Write query to retrieve all customer information:
Syntax:
SELECT * FROM Customers23;

-- Step 4.2: Query accounts for a specific customer:
Syntax: 
SELECT *
FROM Accounts23 A
JOIN Customers23 C ON A.customer_id = C.customer_id
WHERE C.customer_id = 3;

SELECT * FROM Accounts23
WHERE customer_id = (SELECT customer_id FROM Customers23 WHERE first_name = 'John');

Select * from Accounts23 where customer_id=1;

-- Step 4.3: Find the customer name and account balance for each account
Syntax:
SELECT 
    first_name , last_name, balance
FROM 
    Accounts23 as A 
JOIN 
    Customers23 as C 
ON 
    A.customer_id = C.customer_id;

 -- Step 4.4: Analyze customer loan balances:
Syntax:
SELECT l.loan_id, (loan_amount - payment_amount) as loan_balance from Loans23 as l

join Loan_Payments23 as lp on l.loan_id = lp.loan_id ;

 -- Step 4.5: List all customers who have made a transaction in the 2024-03 (2024-01-09)
Syntax:
SELECT C.customer_id, C.first_name, C.last_name FROM Customers23 as C 
JOIN Accounts23 as A ON C.customer_id = A.customer_id 
JOIN Transactions23 as T ON A.account_id = T.account_id 
WHERE 
    T.transaction_date <= '2024-01-09';