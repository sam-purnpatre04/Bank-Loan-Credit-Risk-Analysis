USE bank_loan_analysis;

SELECT COUNT(*) AS total_customers
FROM loan_data;

##the overall loan status distribution##
SELECT
    Loan_Status,
    COUNT(*) AS total_customers
FROM loan_data
GROUP BY Loan_Status
ORDER BY total_customers DESC;

##loan status percentages##
SELECT
    Loan_Status,
    COUNT(*) AS total_customers,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM loan_data),
        2
    ) AS percentage
FROM loan_data
GROUP BY Loan_Status
ORDER BY percentage DESC;

## How much money has been requested across all loans #
SELECT
    SUM(Loan_Amount) AS total_loan_amount
FROM loan_data;

## Average loan amount ##
SELECT
    ROUND(AVG(Loan_Amount), 2) AS average_loan_amount
FROM loan_data;

## Average credit score ##
SELECT
    ROUND(AVG(Credit_Score), 2) AS average_credit_score
FROM loan_data;

#  Average income ##
SELECT
    ROUND(AVG(Annual_Income), 2) AS average_annual_income
FROM loan_data;

--  LOAN APPLICATIONS BY LOAN PURPOSE --

SELECT
    Loan_Purpose,
    COUNT(*) AS total_applications
FROM loan_data
GROUP BY Loan_Purpose
ORDER BY total_applications DESC;


--  LOAN AMOUNT BY LOAN PURPOSE --

SELECT
    Loan_Purpose,
    COUNT(*) AS total_loans,
    SUM(Loan_Amount) AS total_loan_amount,
    ROUND(AVG(Loan_Amount), 2) AS average_loan_amount
FROM loan_data
GROUP BY Loan_Purpose
ORDER BY total_loan_amount DESC;


-- 10. CUSTOMERS BY EMPLOYMENT TYPE

SELECT
    Employment_Type,
    COUNT(*) AS total_customers
FROM loan_data
GROUP BY Employment_Type
ORDER BY total_customers DESC;


-- 11. LOAN EXPOSURE BY EMPLOYMENT TYPE


SELECT
    Employment_Type,
    COUNT(*) AS total_customers,
    SUM(Loan_Amount) AS total_loan_amount,
    ROUND(AVG(Loan_Amount), 2) AS average_loan_amount,
    ROUND(AVG(Annual_Income), 2) AS average_income
FROM loan_data
GROUP BY Employment_Type
ORDER BY total_loan_amount DESC;


-- 12. CITY-WISE LOAN ANALYSIS


SELECT
    City,
    COUNT(*) AS total_customers,
    SUM(Loan_Amount) AS total_loan_amount,
    ROUND(AVG(Loan_Amount), 2) AS average_loan_amount
FROM loan_data
GROUP BY City
ORDER BY total_loan_amount DESC;


-- 13. GENDER-WISE LOAN ANALYSIS

SELECT
    Gender,
    COUNT(*) AS total_customers,
    SUM(Loan_Amount) AS total_loan_amount,
    ROUND(AVG(Loan_Amount), 2) AS average_loan_amount
FROM loan_data
GROUP BY Gender
ORDER BY total_loan_amount DESC;


-- 14. CREDIT TIER DISTRIBUTION

SELECT
    Credit_Tier,
    COUNT(*) AS total_customers
FROM loan_data
GROUP BY Credit_Tier
ORDER BY total_customers DESC;


-- 15. CREDIT TIER VS LOAN STATUS


SELECT
    Credit_Tier,
    Loan_Status,
    COUNT(*) AS total_customers
FROM loan_data
GROUP BY Credit_Tier, Loan_Status
ORDER BY Credit_Tier, total_customers DESC;


-- 16. PAYMENT HISTORY VS LOAN STATUS


SELECT
    Payment_History,
    Loan_Status,
    COUNT(*) AS total_customers
FROM loan_data
GROUP BY Payment_History, Loan_Status
ORDER BY Payment_History, total_customers DESC;


-- 17. DEFAULT RATE BY CREDIT TIER

SELECT
    Credit_Tier,
    COUNT(*) AS total_customers,
    SUM(CASE
        WHEN Loan_Status = 'Defaulted' THEN 1
        ELSE 0
    END) AS defaulted_customers,
    ROUND(
        SUM(CASE
            WHEN Loan_Status = 'Defaulted' THEN 1
            ELSE 0
        END) * 100.0 / COUNT(*),
        2
    ) AS default_rate
FROM loan_data
GROUP BY Credit_Tier
ORDER BY default_rate DESC;

-- ============================================
-- 18. DEFAULT RATE BY PAYMENT HISTORY
-- ============================================

SELECT
    Payment_History,
    COUNT(*) AS total_customers,
    SUM(CASE
        WHEN Loan_Status = 'Defaulted' THEN 1
        ELSE 0
    END) AS defaulted_customers,
    ROUND(
        SUM(CASE
            WHEN Loan_Status = 'Defaulted' THEN 1
            ELSE 0
        END) * 100.0 / COUNT(*),
        2
    ) AS default_rate
FROM loan_data
GROUP BY Payment_History
ORDER BY default_rate DESC;


-- 19. DEFAULT RATE BY EMPLOYMENT TYPE

SELECT
    Employment_Type,
    COUNT(*) AS total_customers,
    SUM(CASE
        WHEN Loan_Status = 'Defaulted' THEN 1
        ELSE 0
    END) AS defaulted_customers,
    ROUND(
        SUM(CASE
            WHEN Loan_Status = 'Defaulted' THEN 1
            ELSE 0
        END) * 100.0 / COUNT(*),
        2
    ) AS default_rate
FROM loan_data
GROUP BY Employment_Type
ORDER BY default_rate DESC;

-- 20. DEFAULT RATE BY LOAN PURPOSE

SELECT
    Loan_Purpose,
    COUNT(*) AS total_loans,
    SUM(CASE
        WHEN Loan_Status = 'Defaulted' THEN 1
        ELSE 0
    END) AS defaulted_loans,
    ROUND(
        SUM(CASE
            WHEN Loan_Status = 'Defaulted' THEN 1
            ELSE 0
        END) * 100.0 / COUNT(*),
        2
    ) AS default_rate
FROM loan_data
GROUP BY Loan_Purpose
ORDER BY default_rate DESC;
