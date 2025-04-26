-- Query for the largest industries by total valuation size
select industry, count(*) as `Number of Unicorn Companies`, sum(valuation_number) as `Total Valuation Estimate by Industry` from unicorns 
group by industry order by `Total Valuation Estimate by Industry` desc;

/*Again, unsurprisingly, Fintech and general technology make up the largest industries by valuation estimate. Its interesting to see 
how Aritificial Intelligence creeps up on the leaders. As this is older data, the monstrous valuations produced by the Artificial
Intelligence industry hasn't yet skewed the data in its favor. It would be useful to comparethis againstn newer valuation data. 
Perhaps in a future analysis*/