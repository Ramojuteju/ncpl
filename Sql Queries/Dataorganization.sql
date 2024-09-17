—Step 2.1: Create tables for the provided feeds:
— Customer Feed:

CREATE TABLE Customers23 (
           customer_id INT PRIMARY KEY,
           first_name VARCHAR(50),
           last_name VARCHAR(50),
           address VARCHAR(100),
           city VARCHAR(50),
           state VARCHAR(50),
           zip VARCHAR(20)
);

— Account Feed:
CREATE TABLE Accounts23 (            account_id INT PRIMARY KEY,            customer_id INT,            account_type VARCHAR(50),            balance DECIMAL(10, 2),            FOREIGN KEY (customer_id) REFERENCES Customers23(customer_id)        );

— Transaction Feed:
CREATE TABLE Transactions23 (            transaction_id INT PRIMARY KEY,            account_id INT,            transaction_date DATE,            transaction_amount DECIMAL(10, 2),            transaction_type VARCHAR(50),            FOREIGN KEY (account_id) REFERENCES Accounts23(account_id)        );

 — Loan Feed:
CREATE TABLE Loans23 (            loan_id INT PRIMARY KEY,            customer_id INT,            loan_amount DECIMAL(10, 2),            interest_rate DECIMAL(5, 2),            loan_term INT,            FOREIGN KEY (customer_id) REFERENCES Customers23(customer_id)        );

— Loan Payment Feed:
CREATE TABLE Loan_Payments23 (            payment_id INT PRIMARY KEY,            loan_id INT,            payment_date DATE,            payment_amount DECIMAL(10, 2),            FOREIGN KEY (loan_id) REFERENCES Loans23(loan_id)        );
