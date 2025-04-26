-- Query for top ten cities producing the most unicorn companies
select city, count(*) as `Number of Unicorns` from unicorns group by city order by `Number of Unicorns` desc limit 10;

/*San Francisco and New York produce the most unicorn companies, and then Beijing and Shanghai. Respective countries flexing their
innovative and entrepreneurial muscle via their largest and most powerful cities*/
