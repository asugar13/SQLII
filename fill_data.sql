
-- POPULATE USER ROLES
INSERT INTO `mydb`.user_role (role_id, role_description) VALUES 
(0, 'Admin'),
(1, 'Customer');


-- POPULATE USERS
INSERT INTO `mydb`.users (user_id, first_name, last_name, email, phone, encrypted_pwd, registration_date, is_active, role_id) VALUES 
(0, 'Admin', 'Admin', 'admin@gmail.com', '1234567890', '1jh234567890', NOW(), 1, 0),
(1, 'Luis', 'Garcia', 'luis@gmail.com', '1234567890', 'eqwe332', NOW(), 1, 1),
(2, 'Juan', 'Perez', 'juan@gmail.com', '1234567890', 'qweqwejje', NOW(), 1, 1),
(3, 'Maria', 'Rodriguez', 'maria@gmail.com', '9876543210', 'pwd123xyz', NOW(), 1, 1),
(4, 'Carlos', 'Martinez', 'carlos@gmail.com', '5554443333', 'abc987def', NOW(), 1, 1);


-- POPULATE ADDRESS TYPES
INSERT INTO `mydb`.address_type (`TYPE_ID`, `DESCRIPTION`) VALUES 
(0, 'Home'),
(1, 'Work'),
(2, 'Other');


-- POPULATE ZIPCODES
INSERT INTO `mydb`.zipcode (`ZIPCODE`, `CITY`, `STATE`, `COUNTRY`) VALUES 
(28010, 'Madrid', 'Madrid', 'Spain'),
(33160, 'Miami', 'Florida', 'USA'),
(33180, 'Orlando', 'Florida', 'USA');


-- POPULATE ADDRESSES
INSERT INTO `mydb`.address (`ADDRESS_ID`, `TYPE_ID`, `NAME`, `NUMBER`, `ZIPCODE`, `COUNTRY`, `USER_ID`) VALUES
(0, 0, 'Calle marques de riscal', '6', '28010', 'Spain', 1),
(1, 0, '18101 collins ave', '18101', '33160', 'USA', 2),
(2, 0, '20000 E Country Club Dr', '20000', '33180', 'USA', 3),
(3, 0, '18120 collins ave', '18120', '33160', 'USA', 4);


-- POPULATE CCPAYMENT TYPES
INSERT INTO `mydb`.ccpayment_type (`CCTYPE`, `DESCRIPTION`) VALUES 
('0', 'Visa'),
('1', 'Mastercard'),
('2', 'American Express');


-- POPULATE CCENTRYMETHODS
INSERT INTO `mydb`.ccentry_methd (`CCMETHD`, `DESCRIPTION`) VALUES
('0', 'Swipe'),
('1', 'Chip'),
('2', 'Contactless');


-- POPULATE CCPAYMENT CARD
INSERT INTO `mydb`.ccpayment_card (user_id, `PAYMENT_TYPE`, `IS_ENCRYPT`, `CARD_NUMBER`, `BANKNAME`, `CCEXPDATE`, `cc_num_seq`) VALUES
(1, '0', '0', '1234567890123456', 'Bank of America', '02/28', '238'),
(2, '1', '0', '1234567890123456', 'BBVA', '05/28', '943'),
(3, '2', '0', '1234567890123456', 'Bancaribe', '06/30', '314'),
(4, '0', '0', '1234567890123456', 'BFC', '07/28', '434');


-- POPULATE UNIT MEASUREMENT
INSERT INTO `mydb`.unit_measure (`METRIC_CODE`, `NAME`, `DESCRIPTION`) VALUES
('p', 'Pieces', NULL),
('l', 'Liters', NULL),
('ml', 'Milliliters', NULL),
('g', 'Grams', NULL),
('kg', 'Kilograms', NULL);


-- POPULATE SEGMENTS
INSERT INTO `mydb`.segment (`SEGMENT_ID`, `NAME`) VALUES
(0, 'Confectionery'),
(1, 'Condiments');


-- POPULATE FAMILIES
INSERT INTO `mydb`.family (`FAMILY_ID`, `NAME`) VALUES
(0, 'Chocolate'),
(1, 'Candy'),
(2, 'Sauces');


-- POPULATE CLASSES
INSERT INTO `mydb`.class (`CLASS_ID`, `NAME`, `FAMILY_ID`) VALUES
(0, 'Chocolate Bars', 0),
(1, 'Chocolate Candies', 0),
(2, 'Ketchup', 2);


-- POPULATE CATEGORIES
INSERT INTO `mydb`.category (`CATEGORY_ID`, `NAME`, `CLASS_ID`) VALUES
(0, 'Milk Chocolate Bars', 0),
(1, 'Chocolate Coated Candies', 1),
(2, 'Tomato Ketchup', 2);

-- POPULATE SUPPLIERS
INSERT INTO `mydb`.supplier (`SUPPLIER_ID`, `NAME`) VALUES
(0, 'Hershey'),
(1, 'Nestle'),
(2, 'Heinz'),
(3, 'M&Ms');


-- POPULATE BRANDS
INSERT INTO `mydb`.brand (`BRAND_ID`, `NAME`) VALUES
(0, 'Hershey'),
(1, 'Nestle'),
(2, 'Heinz'),
(3, 'M&Ms');


-- POPULATE PRODUCTS
INSERT INTO `mydb`.product (`PRODUCT_ID`, `CATEGORY_ID`, `NAME`, `BRAND_ID`, `SUPPLIER_ID`, `SHORT_DESCRIPTION`, `LONG_DESCRIPTION`) VALUES
(0, 0, 'Milk Chocolate Bars', 0, 0, 'Milk Chocolate Bars', 'Milk Chocolate Bars'),
(1, 1, 'Chocolate Coated Candies', 1, 1, 'Chocolate Coated Candies', 'Chocolate Coated Candies'),
(2, 2, 'Tomato Ketchup', 2, 2, 'Tomato Ketchup', 'Tomato Ketchup'),
(3, 0, 'Hersheys Kisses', 0, 0, 'Classic milk chocolate drops', 'Iconic teardrop-shaped milk chocolate pieces wrapped in silver foil'),
(4, 0, 'Hersheys Symphony', 0, 0, 'Creamy milk chocolate bar', 'Smooth and creamy milk chocolate bar with a rich, distinctive taste'),
(5, 0, 'Hersheys Cookies and Cream', 0, 0, 'White chocolate with cookie bits', 'White chocolate bar filled with chocolate cookie pieces')
(6, 2, 'Heinz Yellow Mustard', 2, 2, 'Classic yellow mustard', 'Traditional yellow mustard perfect for hot dogs and sandwiches'),
(7, 2, 'Heinz BBQ Sauce', 2, 2, 'Sweet and smoky BBQ sauce', 'Rich barbecue sauce with a perfect blend of sweet and smoky flavors'),
(8, 2, 'Heinz Mayo', 2, 2, 'Creamy mayonnaise', 'Smooth and creamy mayonnaise made with high-quality ingredients');


-- POPULATE PRICES
INSERT INTO `mydb`.price (`PRODUCT_ID`, cost_currency, cost_decimal, price_currency, price_decimal) VALUES
(0, 'USD', 1.50, 'USD', 2.99),
(1, 'USD', 2.00, 'USD', 3.99),
(2, 'USD', 1.25, 'USD', 3.49),
(3, 'USD', 2.50, 'USD', 4.99),
(4, 'USD', 1.75, 'USD', 3.49),
(5, 'USD', 1.75, 'USD', 3.49),
(6, 'USD', 1.00, 'USD', 2.99),
(7, 'USD', 1.50, 'USD', 3.99),
(8, 'USD', 1.25, 'USD', 3.49);


-- POPULATE CURRENCY
INSERT INTO `mydb`.currency (`CURRENCY_ID`, `CURRENCY_CODE`, `DESCRIPTION`) VALUES
(0, 'USD', 'United States Dollar');









