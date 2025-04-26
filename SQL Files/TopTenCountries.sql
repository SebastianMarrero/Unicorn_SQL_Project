-- Query for the Top Ten Countries producing the most Unicorn Companies
SELECT Country, COUNT(*) AS `Number of Unicorns`
FROM unicorns
GROUP BY Country
ORDER BY `Number of Unicorns` DESC limit 10;

/*Unsurprisingly, the United States, China, and India produce the most Unicorn Companies.
The Human Capital in these countries is enormous*/