select *
from ads..smads

-- counts the amount of people surveyed
select count(*)
from ads..smads

-- makes sure there is an equal amount if men and women being surveyed
select count(*), gender
from ads..smads
group by gender

-- shows the maximum as $150,000 and minimum as $15,000
select max(estimatedsalary) as maxim, min(estimatedsalary) as minum
from ads..smads

-- shows the average purchaser as $86,272
select avg(estimatedsalary) as AverageSalary, purchased
from ads..smads
group by purchased

-- shows the average purchase age as 46 and the average non-purchase age as 32
-- shows that the younger generation is less likely to purchase from social media ads
select avg(age)as AverageAgeofPurchase, purchased
from ads..smads
group by purchased

-- shows average male purchaser as 45 years old and the average women purchaser as 47
-- makes sure that the average purchaser age isn't skewed by one gender
select avg(age)as AverageAgeofPurchase, gender
from ads..smads
where purchased = 1
group by gender

-- shows that the average purchaser in there 20's makes 116,000 as a female and 135,000 as a male
select avg(estimatedsalary), gender
from ads..smads
where age>19 and age<30 and purchased = 1
group by gender

-- This study shows that when looking for a product to sell online, you should choose a product that can be targeted 
-- to people around 45 years of age with an income above $86,000 for the highest ROI