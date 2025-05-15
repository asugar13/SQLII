-- Active: 1745487748000@@localhost@3306@mydb

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
(1, 'Condiments'),
(2, 'Food');


-- POPULATE FAMILIES
INSERT INTO `mydb`.family (`FAMILY_ID`, `NAME`, `SEGMENT_ID`) VALUES
(0, 'Chocolate', 2),
(1, 'Candy', 2),
(2, 'Sauces', 2);


-- POPULATE CLASSES
INSERT INTO `mydb`.class (`CLASS_ID`, `NAME`, `FAMILY_ID`) VALUES
(0, 'Chocolate Bars', 0),
(1, 'Chocolate Candies', 0),
(2, 'Ketchup', 2);


-- POPULATE CATEGORIES
INSERT INTO `mydb`.category (`CATEGORY_ID`, `NAME`, `CLASS_ID`) VALUES
(0, 'Chocolate Bars', 0),
(1, 'Chocolate Candies', 1),
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
(5, 0, 'Hersheys Cookies and Cream', 0, 0, 'White chocolate with cookie bits', 'White chocolate bar filled with chocolate cookie pieces'),
(6, 2, 'Heinz Yellow Mustard', 2, 2, 'Classic yellow mustard', 'Traditional yellow mustard perfect for hot dogs and sandwiches'),
(7, 2, 'Heinz BBQ Sauce', 2, 2, 'Sweet and smoky BBQ sauce', 'Rich barbecue sauce with a perfect blend of sweet and smoky flavors'),
(8, 2, 'Heinz Mayo', 2, 2, 'Creamy mayonnaise', 'Smooth and creamy mayonnaise made with high-quality ingredients');

-- POPULATE CURRENCY
INSERT INTO `mydb`.currency (`CURRENCY_ID`, `CURRENCY_CODE`, `DESCRIPTION`) VALUES
('USD', 0, 'United States Dollar');

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

-- asier from here
-- POPULATE CONTACT (needed by brand & supplier)
INSERT INTO `mydb`.contact (CONTACT_ID, NAME) VALUES
(0, 'Hershey Contact'),
(1, 'Nestle Contact'),
(2, 'Heinz Contact'),
(3, 'M&Ms Contact');

-- POPULATE CCPAYMENT STATES
INSERT INTO `mydb`.ccpayment_state (CCSTATE, DESCRIPTION) VALUES
('0', 'Initiated'),
('1', 'Authorized'),
('2', 'Captured'),
('3', 'Failed');

-- POPULATE CATEGORY ATTRIBUTES
INSERT INTO `mydb`.category_attributes (CATEGORY_ID, ATTRIBUTE_ID, NAME, DESCRIPTION) VALUES
(0, 0, 'Size',           'Size of bar in grams'),
(0, 1, 'Milk Content',   'Percentage of milk content'),
(1, 0, 'Color',          'Candy color'),
(2, 0, 'Spiciness',      'Heat level');

-- POPULATE CATEGORY ATTRVALUES
INSERT INTO `mydb`.category_attrvalues (CATEGORY_ID, ATTRIBUTE_ID, ATTRVALUE_ID, VALUE, DESCRIPTION) VALUES
(0, 0, 0, '100',    '100 g'),
(0, 0, 1, '200',    '200 g'),
(0, 1, 0, 'Milk',   'Standard milk chocolate'),
(1, 0, 0, 'Red',    'Red-coated candy'),
(2, 0, 0, 'Mild',   'Mild spice');

-- POPULATE PRODUCT ATTRVALUES
INSERT INTO `mydb`.product_attrvalues (PRODUCT_ID, CATEGORY_ID, ATTRIBUTE_ID, ATTRVALUE_ID) VALUES
(0, 0, 0, 0),  -- Milk Chocolate Bars, Size=100g
(0, 0, 1, 0),  -- Milk Chocolate Bars, Milk Content=Milk
(1, 1, 0, 0),  -- Chocolate Coated Candies, Color=Red
(2, 2, 0, 0);  -- Tomato Ketchup, Spiciness=Mild


-- DO NOT RUN THIS, THE PYTHON SCRIPT WILL DO IT

-- -- POPULATE SHOPPING CART
-- INSERT INTO `mydb`.shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled) VALUES
-- (100, 1, CURDATE(), 1, 0),
-- (101, 2, CURDATE(), 0, 0);

-- -- POPULATE SHOPPING CART ITEMS
-- INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity) VALUES
-- (100, 1, 0, 2),  -- 2× Milk Chocolate Bars
-- (100, 2, 3, 1),  -- 1× Hersheys Kisses
-- (101, 1, 2, 1);  -- 1× Tomato Ketchup

-- -- POPULATE CCPAYMENT (links to ccpayment_card)
-- INSERT INTO `mydb`.ccpayment (
--   CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
--   CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
-- ) VALUES
-- (
--   NULL, 'USD', 9.97, 9.97, 9.97,
--   '2', NOW(), 1, 238
-- );

-- -- POPULATE TICKET (links to ccpayment, cart)
-- INSERT INTO `mydb`.ticket (
--   TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
--   PAYMENT_ID, user_id, cart_id
-- ) VALUES
-- (
--   NOW(), 9.97, 0.00, 9.97, 'USD',
--   1, 1, 100
-- );

-- -- POPULATE TICKET ITEM
-- INSERT INTO `mydb`.ticket_item (
--   TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
--   QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
-- ) VALUES
-- (
--   1, 1, 0, 'Milk Chocolate Bars',
--   2, 'USD', 2.99, 0.00, 5.98
-- ),
-- (
--   1, 2, 3, 'Hersheys Kisses',
--   1, 'USD', 4.99, 0.00, 4.99
-- );

-- -- POPULATE ITEMS DELIVERY
-- INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
-- (1, DATE_ADD(CURDATE(), INTERVAL 2 DAY), 0, 0);









