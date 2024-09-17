--5. Aggregation and Insights
-- Step 5.1: Calculate the total balance across all accounts for each customer:
Syntax:
Select customer_id, Sum(Balance) as Total_balance from Accounts23 group by customer_id;


-- Step 5.2: Calculate the average loan amount for each loan term:
Syntax:
Select Avg(loan_amount), loan_term from Loans23 group by loan_term;


-- Step 5.3: Find the total loan amount and interest across all loans:
Syntax:
Select Sum(loan_amount) as Total_loan_amount, Sum(Interest_Rate) as Total_interest_rate from Loans23;

-- Step 5.4: Find the most frequent transaction type
Syntax:
Select TOP 1 transaction_type, Count(transaction_type) as Frequency from Transactions23 group by transaction_type order by Frequency Desc;

-- Step 5.5: Analyze transactions by account and transaction type:
Syntax:
Select account_id, 
       transaction_type,
       Count(*) as transaction_count,
       Sum(transaction_amount) as Total_amount
FROM Transactions23
Group by account_id, transaction_type
Order by account_id, transaction_type;