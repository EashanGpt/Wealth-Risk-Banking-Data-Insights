--1. Which risk category has the highest total loan exposure?

SELECT "Risk Weighting",
    ROUND (SUM("Bank Loans"):: numeric ,2) AS total_loans
FROM customer
GROUP BY "Risk Weighting"
ORDER BY total_loans DESC;

--2. What is the average income of customers in each risk category?

select "Risk Weighting",
Round (avg ("Estimated Income"):: numeric ,1) as Avg_Income
from customer
group by  "Risk Weighting"
order by Avg_Income Desc; 

--3. How many customers have loans greater than their income?

Select "Client ID", "Name" as "High Risk Customers"
from customer
where "Bank Loans" > "Estimated Income";

--4. Which occupations have the highest average loan amounts?

SELECT "Occupation",
    Round(AVG("Bank Loans"):: numeric,1 )AS "AVG_Loan"
FROM customer
GROUP BY "Occupation"
ORDER BY "AVG_Loan" DESC
Limit 10;

--5. Which income band contributes the most deposits?

select "Income Band",
Round (sum("Bank Deposits"):: numeric , 2) as "Total Deposits"
from customer
group by "Income Band"
order by "Total Deposits" Desc;

--6. Which loyalty classification has the highest average deposits?

select "Loyalty Classification",
Round(avg ("Bank Deposits"):: numeric, 1) as "AVG Deposits"
from customer
group by "Loyalty Classification"
order by "AVG Deposits" Desc;

--7. Which customers have high Estimated Income but are still high risk?

select "Client ID","Name" as "High Risk Customers"
from customer
where ("Income Band" = 'High') and ("Risk Weighting"> 4);

--8. What is the average income of customers in each risk category?

select "Risk Weighting" as "Risk Band" ,
 round (avg("Estimated Income"):: numeric ,1 ) as "Avg Income"
 from customer
 group by "Risk Band" 
 order by "Avg Income" Desc;

 --9. Average credit card balance by risk category?

SELECT "Risk Weighting" as "Risk Band" ,
round (AVG("Credit Card Balance"):: numeric , 1) AS avg_cc_balance
FROM customer
GROUP BY "Risk Band" 
order by avg_cc_balance Desc;










