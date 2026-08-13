-- ============================================
-- BANK LOAN & CREDIT RISK ANALYSIS
-- BUSINESS INSIGHTS
-- ============================================

-- Business Insight 1:
-- Customers with missed payment history have
-- a very high default rate.

SELECT
    Payment_History,
    COUNT(*) AS total_customers,
    SUM(
        CASE
            WHEN Loan_Status = 'Defaulted' THEN 1
            ELSE 0
        END
    ) AS defaulted_customers,
    ROUND(
        SUM(
            CASE
                WHEN Loan_Status = 'Defaulted' THEN 1
                ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS default_rate
FROM loan_data
GROUP BY Payment_History
ORDER BY default_rate DESC;


-- Business Insight 2:
-- Customers in the Poor credit tier have
-- the highest default rate.

SELECT
    Credit_Tier,
    COUNT(*) AS total_customers,
    SUM(
        CASE
            WHEN Loan_Status = 'Defaulted' THEN 1
            ELSE 0
        END
    ) AS defaulted_customers,
    ROUND(
        SUM(
            CASE
                WHEN Loan_Status = 'Defaulted' THEN 1
                ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS default_rate
FROM loan_data
GROUP BY Credit_Tier
ORDER BY default_rate DESC;