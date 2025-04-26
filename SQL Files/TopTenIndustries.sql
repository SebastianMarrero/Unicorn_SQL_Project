-- Query for the top ten industries producing the most Unicorn Companies
select industry, count(*) as `Number of Industries` from unicorns group by industry
order by `Number of Industries` desc limit 10;

/* Fintech and Internet Software are far and away the top industries. Technology is undoubtedly the future*/
