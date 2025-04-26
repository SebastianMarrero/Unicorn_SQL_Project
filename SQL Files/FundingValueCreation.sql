/* Alter existing unicorns table to modify funding text field to numeric/decimal. Executing a case when function since funding is in
terms of Billions (B) and Millions (M) */

ALTER TABLE unicorns add COLUMN funding_value;
ALTER TABLE unicorns modify COLUMN funding_value DECIMAL(12, 3);




