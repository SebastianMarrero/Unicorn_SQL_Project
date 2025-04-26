/* Query for average valuation produced by all the companies founded in a given year. 
Determine if recent years produce higher valuations */

select round(avg(valuation_number),2) as `Average Valuation`, `Year Founded` from unicorns group by `Year Founded`
order by `Year Founded` desc;

-- No significant trend in average valuation estimates in more recent years. Outliers include 2002 and 1991.