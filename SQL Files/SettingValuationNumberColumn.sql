-- Updating Unicorns table to set the valuation_number column as a decimal number value and removing the $ and B string values
update unicorns
set valuation_number = cast(replace(replace(valuation,"$",""),"B","") as decimal(12,2))

