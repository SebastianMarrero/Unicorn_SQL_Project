-- Query for the most impactful investors in the average ROI Ratio they generate
select investor, count(unicorns.Company) as `Number of Investments`, round(avg(valuation_number),2) as `Average Valuation Estimate`,
round(avg(funding_value),2) as `Average Funding Estimate`,
round(avg(valuation_number/funding_value),2) as `Average ROI Ratio` from unicorns join CompanyInvestor 
on unicorns.Company=CompanyInvestor.Company group by investor order by `Average ROI Ratio` desc limit 20;

/* Incredibly, Threshold Ventures, with only 4 investments, produced an average 3 and a half billion dollar investment and a whopping
~1000 ROI Ratio. The other firms leading this table have only a single investment yet manage to achieve outsized returns and an 
ROI Ratio north of 100.