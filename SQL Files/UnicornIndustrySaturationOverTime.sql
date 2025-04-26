/* Query for number of Unicorn Companies born in a given industry over the datasets time period. Determine a trend in the 
prevailing industries that most Unicorn Companies are born in in a given year */

WITH industry_counts AS (
  SELECT
    `Year Founded`,
    industry,
    COUNT(*) AS `Number of Unicorns`,
    RANK() OVER (PARTITION BY `Year Founded` ORDER BY COUNT(*) DESC) AS industry_rank
  FROM unicorns
  GROUP BY `Year Founded`, industry
)

SELECT `Year Founded`, industry, `Number of Unicorns`
FROM industry_counts
WHERE industry_rank = 1
ORDER BY `Year Founded` desc;
/* Fintech is far and away the most popular industry in this data set, with the most unicorn's being born in the late 2010's 
in that space. The numbers take a dip into 2020, and the industries change from Cybersecurity to Internet Software and E-Commerce.
*/