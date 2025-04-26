-- Query for the most valuable companies and the industry theyre in, along with their valuation number in Billions
select company, industry, valuation_number from unicorns order by valuation_number desc limit 10;

/* Bytedance (tiktok), SpaceX, and SHEIN are the most valuable companies in their respective fields.*/