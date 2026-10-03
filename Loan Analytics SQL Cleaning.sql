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