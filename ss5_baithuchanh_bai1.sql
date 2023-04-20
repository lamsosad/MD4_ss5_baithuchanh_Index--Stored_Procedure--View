SELECT * FROM classicmodels.customers WHERE customerName = 'Land of Toys Inc.';

ALTER TABLE classicmodels.customers ADD INDEX idx_customerName(customerName);
EXPLAIN SELECT * FROM classicmodels.customers WHERE customerName = 'Land of Toys Inc.'; 

ALTER TABLE classicmodels.customers ADD INDEX idx_full_name(contactFirstName, contactLastName);
EXPLAIN SELECT * FROM classicmodels.customers WHERE contactFirstName = 'Jean' or contactFirstName = 'King';

ALTER TABLE classicmodels.customers DROP INDEX idx_full_name;