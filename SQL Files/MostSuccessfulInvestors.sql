-- Query for the most successful investors by total valuation
select investor, sum(valuation_number) as `Total Valuation Estimate` 
from CompanyInvestor join unicorns on unicorns.company=CompanyInvestor.company group by investor 
order by `Total Valuation Estimate` desc limit 20;

/* The most successful investors are Sequoia China, Softbank, Tiger Global Managment, Accel, and Andreesen Horowitz.
Understandably, these are the biggest names in Private Equity*/