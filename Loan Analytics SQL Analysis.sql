USE loan_analytics;

SELECT COUNT(*) AS total_rows
FROM excel_cleaned_data_1;


CREATE DATABASE loan_analytics;

USE loan_analytics;

USE loan_analytics;

SELECT COUNT(*) AS total_rows
FROM excel_cleaned_data;

SELECT COUNT(*) AS invalid_age
FROM excel_cleaned_data
WHERE Age < 18 OR Age > 100;

SHOW TABLES;

SELECT COUNT(*) AS invalid_age
FROM `excel cleaned data`
WHERE Age < 18 OR Age > 100;

SHOW COLUMNS FROM `excel cleaned data`;

SELECT COUNT(*) AS invalid_age
FROM `excel cleaned data`
WHERE `Cleaned Age` < 18 OR `Cleaned Age` > 100;

SELECT COUNT(*) AS missing_age
FROM `excel cleaned data`
WHERE `Cleaned Age` IS NULL;

SELECT COUNT(*) AS invalid_dependents
FROM `excel cleaned data`
WHERE `Cleaned Dependents` < 0;

SHOW COLUMNS FROM `excel cleaned data`;

SELECT COUNT(*) AS invalid_dependents
FROM `excel cleaned data`
WHERE Dependents < 0; 

SELECT COUNT(*) AS missing_dependents
FROM `excel cleaned data`
WHERE Dependents IS NULL;

SELECT DISTINCT `Cleaned Occupation Type`
FROM `excel cleaned data`; 

SELECT COUNT(*) AS missing_occupation
FROM `excel cleaned data`
WHERE `Cleaned Occupation Type` IS NULL
   OR TRIM(`Cleaned Occupation Type`) = '';
   
   SHOW COLUMNS FROM `excel cleaned data`;
   
   -- 1. AGE CLEANING
UPDATE `excel cleaned data`
SET `Cleaned Age` = 38
WHERE `Cleaned Age` IS NULL
   OR `Cleaned Age` < 18
   OR `Cleaned Age` > 100;
   
   SET SQL_SAFE_UPDATES = 0;
   
   UPDATE `excel cleaned data` 
SET 
    `Cleaned Age` = 38
WHERE
    `Cleaned Age` IS NULL
        OR `Cleaned Age` < 18
        OR `Cleaned Age` > 100;
        
        
        UPDATE `excel cleaned data`
SET `Cleaned Occupation Type` = 'N/A'
WHERE TRIM(`Cleaned Occupation Type`) = 'Na';

UPDATE `excel cleaned data`
SET `Cleaned Occupation Type` = 'Unknown'
WHERE `Cleaned Occupation Type` IS NULL
   OR TRIM(`Cleaned Occupation Type`) = '';
   
   UPDATE `excel cleaned data`
SET `Cleaned Occupation Type` = 'N/A'
WHERE TRIM(`Cleaned Occupation Type`) = 'Na';

UPDATE `excel cleaned data`
SET `Cleaned Occupation Type` = 'Unknown'
WHERE `Cleaned Occupation Type` IS NULL
   OR TRIM(`Cleaned Occupation Type`) = '';
   
   UPDATE `excel cleaned data`
SET `Cleaned Residential Status` = 'Unknown'
WHERE `Cleaned Residential Status` IS NULL
   OR TRIM(`Cleaned Residential Status`) = '';
   
   UPDATE `excel cleaned data`
SET `Cleaned Residential Status` = 'Unknown'
WHERE `Cleaned Residential Status` IS NULL
   OR TRIM(`Cleaned Residential Status`) = '';
   
   
   UPDATE `excel cleaned data`
SET Monthly_Expenses = 2743
WHERE Monthly_Expenses IS NULL
   OR Monthly_Expenses < 0;
   
   UPDATE `excel cleaned data`
SET Monthly_Expenses = 2743
WHERE Monthly_Expenses IS NULL
   OR Monthly_Expenses < 0;
   
   UPDATE `excel cleaned data`
SET `Cleaned Total Existing Loan Amount` = 24967
WHERE `Cleaned Total Existing Loan Amount` IS NULL;


UPDATE `excel cleaned data`
SET Total_Existing_Loan_Amount = 24967
WHERE Total_Existing_Loan_Amount IS NULL;

UPDATE `excel cleaned data`
SET Outstanding_Debt = 14969
WHERE Outstanding_Debt IS NULL;



UPDATE `excel cleaned data`
SET `Cleaned Loan History` = 'Yes'
WHERE UPPER(TRIM(`Cleaned Loan History`)) IN ('Y','YES');

UPDATE `excel cleaned data`
SET `Cleaned Loan History` = 'No'
WHERE UPPER(TRIM(`Cleaned Loan History`)) IN ('N','NO');

UPDATE `excel cleaned data`
SET `Cleaned Loan Amount Requested` = 21036
WHERE `Cleaned Loan Amount Requested` IS NULL
   OR `Cleaned Loan Amount Requested` <= 0;
   
   
   UPDATE `excel cleaned data`
SET `Cleaned Loan Amount Requested` = 21036
WHERE `Cleaned Loan Amount Requested` IS NULL
   OR `Cleaned Loan Amount Requested` <= 0;
   
   UPDATE `excel cleaned data`
SET `Cleaned Interest Rate` = 9.24
WHERE `Cleaned Interest Rate` IS NULL
   OR `Cleaned Interest Rate` <= 0; 
   
   SHOW COLUMNS FROM `excel cleaned data`;
   
   
   UPDATE `excel cleaned data`
SET `Cleaned Loan Amount Requested` = 21036
WHERE `Cleaned Loan Amount Requested` IS NULL
   OR `Cleaned Loan Amount Requested` <= 0;
   
   
   UPDATE `excel cleaned data`
SET Loan_Term = 126
WHERE Loan_Term IS NULL
   OR Loan_Term <= 0;
   
   UPDATE `excel cleaned data`
SET `Cleaned Interest Rate` = 9.24
WHERE `Cleaned Interest Rate` IS NULL
   OR `Cleaned Interest Rate` <= 0;
   
   UPDATE `excel cleaned data`
SET `Cleaned Co-Applicant` = 'No'
WHERE `Cleaned Co-Applicant` IS NULL
   OR TRIM(`Cleaned Co-Applicant`) = '';
   
   
   UPDATE `excel cleaned data`
SET `Cleaned Co-Applicant` = 'No'
WHERE `Cleaned Co-Applicant` IS NULL
   OR TRIM(`Cleaned Co-Applicant`) = '';


SHOW COLUMNS FROM `excel cleaned data`;

UPDATE `excel cleaned data`
SET Transaction_Frequency = 20
WHERE Transaction_Frequency IS NULL;

UPDATE `excel cleaned data`
SET Default_Risk = 0.51
WHERE Default_Risk IS NULL;

UPDATE `excel cleaned data`
SET `Cleaned Loan Approval Status` = 'Yes'
WHERE UPPER(TRIM(`Cleaned Loan Approval Status`))
IN ('Y','YES','APPROVED','1');

UPDATE `excel cleaned data`
SET `Cleaned Loan Approval Status` = 'No'
WHERE UPPER(TRIM(`Cleaned Loan Approval Status`))
IN ('N','NO','REJECTED','0');


SELECT Applicant_ID, COUNT(*) AS duplicate_count
FROM `excel cleaned data`
GROUP BY Applicant_ID
HAVING COUNT(*) > 1;


SELECT `ï»¿Applicant_ID`, COUNT(*) AS duplicate_count
FROM `excel cleaned data`
GROUP BY `ï»¿Applicant_ID`
HAVING COUNT(*) > 1;


SELECT
SUM(`Cleaned Age` IS NULL) AS missing_age,
SUM(Dependents IS NULL) AS missing_dependents,
SUM(`Cleaned Occupation Type` IS NULL) AS missing_occupation,
SUM(`Cleaned Residential Status` IS NULL) AS missing_residential,
SUM(`Cleaned Annual Income` IS NULL) AS missing_income,
SUM(Monthly_Expenses IS NULL) AS missing_expenses,
SUM(`Cleaned Total Existing Loan Amount` IS NULL) AS missing_loan_amount,
SUM(Outstanding_Debt IS NULL) AS missing_debt,
SUM(`Cleaned Loan History` IS NULL) AS missing_history,
SUM(`Cleaned Loan Amount Requested` IS NULL) AS missing_requested_amount,
SUM(`Cleaned Interest Rate` IS NULL) AS missing_interest,
SUM(`Cleaned Co-Applicant` IS NULL) AS missing_coapplicant,
SUM(Bank_Account_History IS NULL) AS missing_bank_history,
SUM(Transaction_Frequency IS NULL) AS missing_frequency,
SUM(Default_Risk IS NULL) AS missing_risk,
SUM(`Cleaned Loan Approval Status` IS NULL) AS missing_approval
FROM `excel cleaned data`;

SHOW COLUMNS FROM `excel cleaned data`;


SELECT
SUM(`Cleaned Age` IS NULL) AS missing_age,
SUM(Dependents IS NULL) AS missing_dependents,
SUM(`Cleaned Occupation Type` IS NULL) AS missing_occupation,
SUM(`Cleaned Residential Status` IS NULL) AS missing_residential,
SUM(`Cleaned Annual Income` IS NULL) AS missing_income,
SUM(Monthly_Expenses IS NULL) AS missing_expenses,
SUM(Total_Existing_Loan_Amount IS NULL) AS missing_loan_amount,
SUM(Outstanding_Debt IS NULL) AS missing_debt,
SUM(`Cleaned Loan History` IS NULL) AS missing_history,
SUM(`Cleaned Loan Amount Requested` IS NULL) AS missing_requested_amount,
SUM(`Cleaned Interest Rate` IS NULL) AS missing_interest,
SUM(`Cleaned Co-Applicant` IS NULL) AS missing_coapplicant,
SUM(Bank_Account_History IS NULL) AS missing_bank_history,
SUM(Transaction_Frequency IS NULL) AS missing_frequency,
SUM(Default_Risk IS NULL) AS missing_risk,
SUM(`Cleaned Loan Approval Status` IS NULL) AS missing_approval
FROM `excel cleaned data`;

SHOW COLUMNS FROM `excel cleaned data`;

SELECT
COUNT(*) AS total_rows,
COUNT(`Cleaned Age`) AS age_filled,
COUNT(Dependents) AS dependents_filled,
COUNT(`Cleaned Occupation Type`) AS occupation_filled,
COUNT(`Cleaned Residential Status`) AS residential_filled,
COUNT(`Cleaned Annual Income`) AS income_filled,
COUNT(Monthly_Expenses) AS expenses_filled,
COUNT(`Cleaned Credit Score`) AS credit_filled,
COUNT(Total_Existing_Loan_Amount) AS loan_amount_filled,
COUNT(Outstanding_Debt) AS debt_filled,
COUNT(`Cleaned Loan History`) AS history_filled,
COUNT(`Cleaned Loan Amount Requested`) AS requested_filled,
COUNT(`Cleaned Interest Rate`) AS interest_filled,
COUNT(`Cleaned Co-Applicant`) AS coapplicant_filled,
COUNT(Bank_Account_History) AS bank_history_filled,
COUNT(Transaction_Frequency) AS frequency_filled,
COUNT(Default_Risk) AS risk_filled,
COUNT(`Cleaned Loan Approval Status`) AS approval_filled
FROM `excel cleaned data`;

SELECT COUNT(*) AS final_cleaned_rows
FROM `excel cleaned data`;

SELECT COUNT(*) AS missing_loan_amount
FROM `excel cleaned data`
WHERE Total_Existing_Loan_Amount IS NULL;


SELECT COUNT(*) AS missing_interest_rate
FROM `excel cleaned data`
WHERE Interest_Rate IS NULL;

SELECT COUNT(*) AS missing_interest_rate
FROM `excel cleaned data`
WHERE `Cleaned Interest Rate` IS NULL;

SHOW COLUMNS FROM `excel cleaned data`
LIKE '%Interest%';


SELECT COUNT(*) AS missing_loan_history
FROM `excel cleaned data`
WHERE `Cleaned Loan History` IS NULL;

SELECT COUNT(*) AS missing_loan_amount_requested
FROM `excel cleaned data`
WHERE `Cleaned Loan Amount Requested` IS NULL;

SELECT COUNT(*) AS missing_loan_term
FROM `excel cleaned data`
WHERE Loan_Term IS NULL;


SELECT COUNT(*) AS missing_loan_term
FROM `excel cleaned data`
WHERE Loan_Term IS NULL;

SELECT COUNT(*) AS missing_outstanding_debt
FROM `excel cleaned data`
WHERE Outstanding_Debt IS NULL;

SELECT COUNT(*) AS missing_coapplicant
FROM `excel cleaned data`
WHERE `Cleaned Co-Applicant` IS NULL;

SELECT COUNT(*) AS missing_bank_history
FROM `excel cleaned data`
WHERE Bank_Account_History IS NULL;

SELECT COUNT(*) AS missing_transaction_frequency
FROM `excel cleaned data`
WHERE Transaction_Frequency IS NULL;

SELECT COUNT(*) AS missing_default_risk
FROM `excel cleaned data`
WHERE Default_Risk IS NULL;

SELECT COUNT(*) AS missing_approval_status
FROM `excel cleaned data`
WHERE `Cleaned Loan Approval Status` IS NULL;

SELECT COUNT(*) AS final_cleaned_rows
FROM `excel cleaned data`;




USE loan_analytics;

USE loan_analytics;

SELECT COUNT(*) AS total_loan_applications
FROM `excel cleaned data`;

USE loan_analytics;

SELECT COUNT(*) AS total_loan_applications
FROM `excel cleaned data`;

-- Query 2: Distinct Occupation Types

SELECT DISTINCT `Cleaned Occupation Type`
FROM `excel cleaned data`
ORDER BY `Cleaned Occupation Type`;

SELECT COUNT(*) AS total_approved_applications
FROM `excel cleaned data`
WHERE `Cleaned Loan Approval Status` = 'Yes';

SELECT COUNT(*) AS total_rejected_applications
FROM `excel cleaned data`
WHERE `Cleaned Loan Approval Status` = 'No';

SELECT 
    `Cleaned Loan Approval Status`,
    COUNT(*) AS application_count
FROM `excel cleaned data`
GROUP BY `Cleaned Loan Approval Status`
ORDER BY application_count DESC;

SELECT 
    AVG(`Cleaned Annual Income`) AS average_annual_income
FROM `excel cleaned data`;

SELECT 
    AVG(`Cleaned Loan Amount Requested`) AS average_loan_amount_requested
FROM `excel cleaned data`;

SELECT 
    AVG(Outstanding_Debt) AS average_outstanding_debt
FROM `excel cleaned data`;

SELECT 
    `Cleaned Gender`,
    COUNT(*) AS application_count
FROM `excel cleaned data`
GROUP BY `Cleaned Gender`
ORDER BY application_count DESC;

SHOW COLUMNS FROM `excel cleaned data`;

-- Query 9: Applications by Gender

SELECT 
    Gender,
    COUNT(*) AS application_count
FROM `excel cleaned data`
GROUP BY Gender
ORDER BY application_count DESC;

SELECT 
    `Cleaned Education`,
    COUNT(*) AS application_count
FROM `excel cleaned data`
GROUP BY `Cleaned Education`
ORDER BY application_count DESC;


SELECT 
    `Cleaned Employment Status`,
    COUNT(*) AS application_count
FROM `excel cleaned data`
GROUP BY `Cleaned Employment Status`
ORDER BY application_count DESC;


-- Query 12: Applications by Loan History

SELECT 
    `Cleaned Loan History`,
    COUNT(*) AS application_count
FROM `excel cleaned data`
GROUP BY `Cleaned Loan History`
ORDER BY application_count DESC;

SELECT 
    `Cleaned Residential Status`,
    COUNT(*) AS application_count
FROM `excel cleaned data`
GROUP BY `Cleaned Residential Status`
ORDER BY application_count DESC;

SELECT 
    `Cleaned Occupation Type`,
    COUNT(*) AS application_count
FROM `excel cleaned data`
GROUP BY `Cleaned Occupation Type`
ORDER BY application_count DESC;


SELECT 
    `Cleaned Co-Applicant`,
    COUNT(*) AS application_count
FROM `excel cleaned data`
GROUP BY `Cleaned Co-Applicant`
ORDER BY application_count DESC;

SELECT 
    Loan_Term,
    COUNT(*) AS application_count
FROM `excel cleaned data`
GROUP BY Loan_Term
ORDER BY application_count DESC;

SELECT 
    Dependents,
    COUNT(*) AS application_count
FROM `excel cleaned data`
GROUP BY Dependents
ORDER BY Dependents;

-- Query 18: Applications by Outstanding Debt Category

SELECT
    CASE
        WHEN Outstanding_Debt < 10000 THEN 'Low Debt'
        WHEN Outstanding_Debt < 20000 THEN 'Medium Debt'
        ELSE 'High Debt'
    END AS debt_category,
    COUNT(*) AS application_count
FROM `excel cleaned data`
GROUP BY debt_category
ORDER BY application_count DESC;

SELECT 
    AVG(`Cleaned Age`) AS average_applicant_age
FROM `excel cleaned data`;

SELECT 
    AVG(Monthly_Expenses) AS average_monthly_expenses
FROM `excel cleaned data`;

SELECT 
    AVG(Total_Existing_Loan_Amount) AS average_existing_loan_amount
FROM `excel cleaned data`;

SELECT 
    AVG(Outstanding_Debt) AS average_outstanding_debt
FROM `excel cleaned data`;

SELECT 
    AVG(`Cleaned Loan Amount Requested`) AS average_loan_amount_requested
FROM `excel cleaned data`;

SELECT 
    AVG(Transaction_Frequency) AS average_transaction_frequency
FROM `excel cleaned data`;

SELECT 
    AVG(Default_Risk) AS average_default_risk
FROM `excel cleaned data`;

SELECT
    Gender,
    `Cleaned Loan Approval Status`,
    COUNT(*) AS application_count
FROM `excel cleaned data`
GROUP BY Gender, `Cleaned Loan Approval Status`
ORDER BY Gender, application_count DESC;

SELECT
    `Cleaned Education`,
    `Cleaned Loan Approval Status`,
    COUNT(*) AS application_count
FROM `excel cleaned data`
GROUP BY `Cleaned Education`, `Cleaned Loan Approval Status`
ORDER BY `Cleaned Education`, application_count DESC;

SELECT
    `Cleaned Employment Status`,
    `Cleaned Loan Approval Status`,
    COUNT(*) AS application_count
FROM `excel cleaned data`
GROUP BY `Cleaned Employment Status`, `Cleaned Loan Approval Status`
ORDER BY `Cleaned Employment Status`, application_count DESC;

-- Query 29: Loan Approval by Occupation Type

SELECT
    `Cleaned Occupation Type`,
    `Cleaned Loan Approval Status`,
    COUNT(*) AS application_count
FROM `excel cleaned data`
GROUP BY `Cleaned Occupation Type`, `Cleaned Loan Approval Status`
ORDER BY `Cleaned Occupation Type`, application_count DESC;

-- Query 30: Loan Approval by Loan History

SELECT
    `Cleaned Loan History`,
    `Cleaned Loan Approval Status`,
    COUNT(*) AS application_count
FROM `excel cleaned data`
GROUP BY `Cleaned Loan History`, `Cleaned Loan Approval Status`
ORDER BY `Cleaned Loan History`, application_count DESC;

-- Query 31: High Income Applicants

SELECT
    `Cleaned Annual Income`,
    `Cleaned Loan Amount Requested`,
    `Cleaned Loan Approval Status`
FROM `excel cleaned data`
WHERE `Cleaned Annual Income` > 100000
ORDER BY `Cleaned Annual Income` DESC;

-- Query 32: High Loan Amount Requests

SELECT
    `Cleaned Annual Income`,
    `Cleaned Loan Amount Requested`,
    `Cleaned Loan Approval Status`
FROM `excel cleaned data`
WHERE `Cleaned Loan Amount Requested` > 30000
ORDER BY `Cleaned Loan Amount Requested` DESC;

-- Query 33: Occupation Types with More Than 5000 Applications

SELECT
    `Cleaned Occupation Type`,
    COUNT(*) AS application_count
FROM `excel cleaned data`
GROUP BY `Cleaned Occupation Type`
HAVING COUNT(*) > 5000
ORDER BY application_count DESC;

-- Query 34: Risk Category using CASE

SELECT
    CASE
        WHEN Default_Risk < 0.30 THEN 'Low Risk'
        WHEN Default_Risk < 0.70 THEN 'Medium Risk'
        ELSE 'High Risk'
    END AS risk_category,
    COUNT(*) AS application_count
FROM `excel cleaned data`
GROUP BY risk_category
ORDER BY application_count DESC;

-- Query 35: Approval Category using CASE

SELECT
    CASE
        WHEN `Cleaned Loan Approval Status` = 'Yes' THEN 'Approved'
        WHEN `Cleaned Loan Approval Status` = 'No' THEN 'Rejected'
        ELSE 'Unknown'
    END AS approval_category,
    COUNT(*) AS application_count
FROM `excel cleaned data`
GROUP BY approval_category
ORDER BY application_count DESC;

-- Query 36: Applicants with Above-Average Annual Income

SELECT
    `Cleaned Annual Income`,
    `Cleaned Loan Amount Requested`,
    `Cleaned Loan Approval Status`
FROM `excel cleaned data`
WHERE `Cleaned Annual Income` >
      (SELECT AVG(`Cleaned Annual Income`)
       FROM `excel cleaned data`)
ORDER BY `Cleaned Annual Income` DESC;

-- Query 37: Approval Summary using CTE

WITH approval_summary AS (
    SELECT
        `Cleaned Loan Approval Status` AS approval_status,
        COUNT(*) AS application_count
    FROM `excel cleaned data`
    GROUP BY `Cleaned Loan Approval Status`
)
SELECT *
FROM approval_summary
ORDER BY application_count DESC;

-- Query 38: Rank Occupation Types by Application Count

SELECT
    `Cleaned Occupation Type`,
    COUNT(*) AS application_count,
    RANK() OVER (ORDER BY COUNT(*) DESC) AS occupation_rank
FROM `excel cleaned data`
GROUP BY `Cleaned Occupation Type`
ORDER BY occupation_rank;

-- Query 39: Approval Rate by Education

SELECT
    `Cleaned Education`,
    COUNT(*) AS total_applications,
    SUM(
        CASE 
            WHEN `Cleaned Loan Approval Status` = 'Yes' THEN 1 
            ELSE 0 
        END
    ) AS approved_applications,
    ROUND(
        100.0 * SUM(
            CASE 
                WHEN `Cleaned Loan Approval Status` = 'Yes' THEN 1 
                ELSE 0 
            END
        ) / COUNT(*), 2
    ) AS approval_rate_percentage
FROM `excel cleaned data`
GROUP BY `Cleaned Education`
ORDER BY approval_rate_percentage DESC;

-- Query 40: Overall Loan Approval Rate

SELECT
    COUNT(*) AS total_applications,
    SUM(
        CASE 
            WHEN `Cleaned Loan Approval Status` = 'Yes' THEN 1 
            ELSE 0 
        END
    ) AS approved_applications,
    SUM(
        CASE 
            WHEN `Cleaned Loan Approval Status` = 'No' THEN 1 
            ELSE 0 
        END
    ) AS rejected_applications,
    ROUND(
        100.0 * SUM(
            CASE 
                WHEN `Cleaned Loan Approval Status` = 'Yes' THEN 1 
                ELSE 0 
            END
        ) / COUNT(*), 2
    ) AS approval_rate_percentage
FROM `excel cleaned data`;







