-- Query for companies and their ROI Ratio
select company, valuation_number, funding_value, round(valuation_number/funding_value,2) as `ROI Ratio` 
from unicorns order by `ROI Ratio` desc limit 20;

/* Outstanding ROI by Zapier, which received a measly $1 Million dollar investment but produced a $4 Billion dollar valuation. 
I purposely leave them out of the visualization since it dwarfs all other companies.Many of these companies are coming out 
of left-field, demonstrating the potential they've had despite their average to low funding. Taking a look at Juul Labs, 
despite a monstrous funding round at $14 Billion dollars, they managed an ROI Ratio of 2.71 - not the best,but thankfully a 
return was generated */