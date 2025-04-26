-- Query to find the companies that have had the most funding
select company, funding_value, `select investors` from unicorns order by funding_value desc limit 10;

/* Juul, Bytedance, SpaceX, Epic Games receiving the most funding, primarily from the largest PE firms who made the most overall.
Tiger Global Management spending 14 Billion dollars alone is incredible. */