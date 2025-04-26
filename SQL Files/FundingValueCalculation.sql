/* Alter existing unicorns table to modify funding text field to numeric/decimal. Executing a case when function since funding is in
terms of Billions (B) and Millions (M) */

Update Unicorns
set funding_value = 
	case 
	when Funding like '%B' then cast(replace(replace(Funding,'$',''),'B','') as decimal(12,3))
	when Funding like '%M' then cast(replace(replace(Funding,'$',''),'M','') as decimal(12,3))/1000
    else null
end;