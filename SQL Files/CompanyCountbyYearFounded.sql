-- Query for the number of companies founded by year
select `Year Founded`, count(*) as `Number of Unicorn Companies found` 
from unicorns group by `Year Founded` order by `Year Founded` desc;

/* Most companies founded in the years between 2014 and 2016, totaling 374 companies found in that 3-year timespan
