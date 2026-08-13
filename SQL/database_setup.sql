CREATE DATABASE bank_loan_analysis;
USE bank_loan_analysis;
CREATE TABLE loan_data (
    Customer_ID VARCHAR(20),
    Age INT,
    Gender VARCHAR(10),
    City VARCHAR(50),
    Employment_Type VARCHAR(50),
    Annual_Income DECIMAL(15,2),
    Loan_Amount DECIMAL(15,2),
    Loan_Purpose VARCHAR(50),
    Credit_Score INT,
    Loan_Tenure_Years INT,
    EMI_Amount DECIMAL(15,2),
    Payment_History VARCHAR(20),
    Loan_Status VARCHAR(20),
    DTI_Ratio DECIMAL(10,4),
    LTI_Ratio DECIMAL(10,4),
    Credit_Tier VARCHAR(20)
);

SELECT COUNT(*) AS total_records
FROM loan_data;

SELECT *
FROM loan_data
LIMIT 10;
