-- Query for the most actie investors by the number of companies they've invested in

select investor, count(CompanyInvestor.Company) as `Number of Companies invested in` 
from CompanyInvestor join unicorns on unicorns.company=CompanyInvestor.company group by investor
order by `Number of Companies invested in` desc limit 20;

/* Accel, Tiger, Andreesen, and Sequoia are the most active investors by unicorn company count. They also happen to be the
most successful with regards to producing the highest valuation. They take enormous risk and are the most successful, as a result.