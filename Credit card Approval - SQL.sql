-- Group the customers based on their income type and find the average of their annual income.

select type_income, avg(annual_income) from creditcard group by type_income;

-- Find the female owners of cars and property.

select id,gender,car_owner,property_owner from creditcard where gender = 'F' and car_owner = 'Y' and property_owner = 'Y';

-- Find the male customers who are staying with their families.

select id, gender, housing_type from creditcard where gender = 'M' and housing_type = 'With parents';

-- Please list the top five people having the highest income.

select id, annual_income from creditcard order by annual_income desc limit 5;

-- How many married people are having bad credit?

select count(*) from creditcard where approval_status='0' and marital_status='Married';

-- What is the highest education level and what is the total count?	

select count(*) from creditcard where education = 'Higher Education';

-- Between married males and females, who is having more bad credit? 

select gender,count(*) as approval_credit_count from creditcard where approval_status='0' and marital_status='Married' group by gender;
