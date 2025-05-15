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

-- RANDOM SALES DATA GENERATED BY PYTHON SCRIPT 

----- SALE NUMBER: 1 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (1, 2, '2024-05-15', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (1, 1, 8, 29);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    1, NULL, 'USD', 101.21000000000001, 101.21000000000001, 101.21000000000001,
    '2', '2024-05-15', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    1, '2024-05-15', 101.21000000000001, 0.00, 101.21000000000001, 'USD',
    1, 2, 1
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    1, 1, 8, 'Auto-generated',
    29, 'USD', 3.49, 0.00, 101.21000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    1, '2024-05-15', 1, 0
);
    
    
----- SALE NUMBER: 2 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (2, 1, '2024-05-16', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (2, 2, 3, 10);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    2, NULL, 'USD', 49.900000000000006, 49.900000000000006, 49.900000000000006,
    '2', '2024-05-16', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    2, '2024-05-16', 49.900000000000006, 0.00, 49.900000000000006, 'USD',
    2, 1, 2
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    2, 2, 3, 'Auto-generated',
    10, 'USD', 4.99, 0.00, 49.900000000000006
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    2, '2024-05-16', 0, 0
);
    
    
----- SALE NUMBER: 3 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (3, 4, '2024-05-17', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (3, 3, 5, 7);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    3, NULL, 'USD', 24.43, 24.43, 24.43,
    '2', '2024-05-17', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    3, '2024-05-17', 24.43, 0.00, 24.43, 'USD',
    3, 4, 3
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    3, 3, 5, 'Auto-generated',
    7, 'USD', 3.49, 0.00, 24.43
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    3, '2024-05-17', 3, 0
);
    
    
----- SALE NUMBER: 4 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (4, 4, '2024-05-18', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (4, 4, 3, 21);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    4, NULL, 'USD', 104.79, 104.79, 104.79,
    '2', '2024-05-18', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    4, '2024-05-18', 104.79, 0.00, 104.79, 'USD',
    4, 4, 4
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    4, 4, 3, 'Auto-generated',
    21, 'USD', 4.99, 0.00, 104.79
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    4, '2024-05-18', 3, 0
);
    
    
----- SALE NUMBER: 5 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (5, 4, '2024-05-19', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (5, 5, 0, 11);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    5, NULL, 'USD', 32.89, 32.89, 32.89,
    '2', '2024-05-19', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    5, '2024-05-19', 32.89, 0.00, 32.89, 'USD',
    5, 4, 5
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    5, 5, 0, 'Auto-generated',
    11, 'USD', 2.99, 0.00, 32.89
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    5, '2024-05-19', 3, 0
);
    
    
----- SALE NUMBER: 6 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (6, 2, '2024-05-20', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (6, 6, 8, 11);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    6, NULL, 'USD', 38.39, 38.39, 38.39,
    '2', '2024-05-20', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    6, '2024-05-20', 38.39, 0.00, 38.39, 'USD',
    6, 2, 6
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    6, 6, 8, 'Auto-generated',
    11, 'USD', 3.49, 0.00, 38.39
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    6, '2024-05-20', 1, 0
);
    
    
----- SALE NUMBER: 7 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (7, 4, '2024-05-21', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (7, 7, 8, 50);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    7, NULL, 'USD', 174.5, 174.5, 174.5,
    '2', '2024-05-21', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    7, '2024-05-21', 174.5, 0.00, 174.5, 'USD',
    7, 4, 7
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    7, 7, 8, 'Auto-generated',
    50, 'USD', 3.49, 0.00, 174.5
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    7, '2024-05-21', 3, 0
);
    
    
----- SALE NUMBER: 8 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (8, 2, '2024-05-22', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (8, 8, 5, 37);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    8, NULL, 'USD', 129.13, 129.13, 129.13,
    '2', '2024-05-22', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    8, '2024-05-22', 129.13, 0.00, 129.13, 'USD',
    8, 2, 8
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    8, 8, 5, 'Auto-generated',
    37, 'USD', 3.49, 0.00, 129.13
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    8, '2024-05-22', 1, 0
);
    
    
----- SALE NUMBER: 9 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (9, 2, '2024-05-23', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (9, 9, 0, 43);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    9, NULL, 'USD', 128.57000000000002, 128.57000000000002, 128.57000000000002,
    '2', '2024-05-23', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    9, '2024-05-23', 128.57000000000002, 0.00, 128.57000000000002, 'USD',
    9, 2, 9
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    9, 9, 0, 'Auto-generated',
    43, 'USD', 2.99, 0.00, 128.57000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    9, '2024-05-23', 1, 0
);
    
    
----- SALE NUMBER: 10 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (10, 1, '2024-05-24', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (10, 10, 3, 22);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    10, NULL, 'USD', 109.78, 109.78, 109.78,
    '2', '2024-05-24', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    10, '2024-05-24', 109.78, 0.00, 109.78, 'USD',
    10, 1, 10
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    10, 10, 3, 'Auto-generated',
    22, 'USD', 4.99, 0.00, 109.78
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    10, '2024-05-24', 0, 0
);
    
    
----- SALE NUMBER: 11 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (11, 2, '2024-05-25', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (11, 11, 4, 3);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    11, NULL, 'USD', 10.47, 10.47, 10.47,
    '2', '2024-05-25', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    11, '2024-05-25', 10.47, 0.00, 10.47, 'USD',
    11, 2, 11
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    11, 11, 4, 'Auto-generated',
    3, 'USD', 3.49, 0.00, 10.47
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    11, '2024-05-25', 1, 0
);
    
    
----- SALE NUMBER: 12 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (12, 4, '2024-05-26', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (12, 12, 0, 26);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    12, NULL, 'USD', 77.74000000000001, 77.74000000000001, 77.74000000000001,
    '2', '2024-05-26', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    12, '2024-05-26', 77.74000000000001, 0.00, 77.74000000000001, 'USD',
    12, 4, 12
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    12, 12, 0, 'Auto-generated',
    26, 'USD', 2.99, 0.00, 77.74000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    12, '2024-05-26', 3, 0
);
    
    
----- SALE NUMBER: 13 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (13, 2, '2024-05-27', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (13, 13, 1, 21);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    13, NULL, 'USD', 83.79, 83.79, 83.79,
    '2', '2024-05-27', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    13, '2024-05-27', 83.79, 0.00, 83.79, 'USD',
    13, 2, 13
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    13, 13, 1, 'Auto-generated',
    21, 'USD', 3.99, 0.00, 83.79
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    13, '2024-05-27', 1, 0
);
    
    
----- SALE NUMBER: 14 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (14, 1, '2024-05-28', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (14, 14, 2, 13);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    14, NULL, 'USD', 45.370000000000005, 45.370000000000005, 45.370000000000005,
    '2', '2024-05-28', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    14, '2024-05-28', 45.370000000000005, 0.00, 45.370000000000005, 'USD',
    14, 1, 14
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    14, 14, 2, 'Auto-generated',
    13, 'USD', 3.49, 0.00, 45.370000000000005
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    14, '2024-05-28', 0, 0
);
    
    
----- SALE NUMBER: 15 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (15, 2, '2024-05-29', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (15, 15, 5, 47);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    15, NULL, 'USD', 164.03, 164.03, 164.03,
    '2', '2024-05-29', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    15, '2024-05-29', 164.03, 0.00, 164.03, 'USD',
    15, 2, 15
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    15, 15, 5, 'Auto-generated',
    47, 'USD', 3.49, 0.00, 164.03
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    15, '2024-05-29', 1, 0
);
    
    
----- SALE NUMBER: 16 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (16, 3, '2024-05-30', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (16, 16, 3, 37);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    16, NULL, 'USD', 184.63, 184.63, 184.63,
    '2', '2024-05-30', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    16, '2024-05-30', 184.63, 0.00, 184.63, 'USD',
    16, 3, 16
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    16, 16, 3, 'Auto-generated',
    37, 'USD', 4.99, 0.00, 184.63
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    16, '2024-05-30', 2, 0
);
    
    
----- SALE NUMBER: 17 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (17, 2, '2024-05-31', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (17, 17, 3, 6);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    17, NULL, 'USD', 29.94, 29.94, 29.94,
    '2', '2024-05-31', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    17, '2024-05-31', 29.94, 0.00, 29.94, 'USD',
    17, 2, 17
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    17, 17, 3, 'Auto-generated',
    6, 'USD', 4.99, 0.00, 29.94
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    17, '2024-05-31', 1, 0
);
    
    
----- SALE NUMBER: 18 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (18, 1, '2024-06-01', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (18, 18, 7, 3);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    18, NULL, 'USD', 11.97, 11.97, 11.97,
    '2', '2024-06-01', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    18, '2024-06-01', 11.97, 0.00, 11.97, 'USD',
    18, 1, 18
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    18, 18, 7, 'Auto-generated',
    3, 'USD', 3.99, 0.00, 11.97
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    18, '2024-06-01', 0, 0
);
    
    
----- SALE NUMBER: 19 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (19, 1, '2024-06-02', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (19, 19, 8, 36);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    19, NULL, 'USD', 125.64000000000001, 125.64000000000001, 125.64000000000001,
    '2', '2024-06-02', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    19, '2024-06-02', 125.64000000000001, 0.00, 125.64000000000001, 'USD',
    19, 1, 19
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    19, 19, 8, 'Auto-generated',
    36, 'USD', 3.49, 0.00, 125.64000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    19, '2024-06-02', 0, 0
);
    
    
----- SALE NUMBER: 20 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (20, 1, '2024-06-03', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (20, 20, 0, 46);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    20, NULL, 'USD', 137.54000000000002, 137.54000000000002, 137.54000000000002,
    '2', '2024-06-03', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    20, '2024-06-03', 137.54000000000002, 0.00, 137.54000000000002, 'USD',
    20, 1, 20
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    20, 20, 0, 'Auto-generated',
    46, 'USD', 2.99, 0.00, 137.54000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    20, '2024-06-03', 0, 0
);
    
    
----- SALE NUMBER: 21 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (21, 3, '2024-06-04', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (21, 21, 7, 15);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    21, NULL, 'USD', 59.85, 59.85, 59.85,
    '2', '2024-06-04', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    21, '2024-06-04', 59.85, 0.00, 59.85, 'USD',
    21, 3, 21
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    21, 21, 7, 'Auto-generated',
    15, 'USD', 3.99, 0.00, 59.85
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    21, '2024-06-04', 2, 0
);
    
    
----- SALE NUMBER: 22 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (22, 1, '2024-06-05', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (22, 22, 5, 22);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    22, NULL, 'USD', 76.78, 76.78, 76.78,
    '2', '2024-06-05', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    22, '2024-06-05', 76.78, 0.00, 76.78, 'USD',
    22, 1, 22
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    22, 22, 5, 'Auto-generated',
    22, 'USD', 3.49, 0.00, 76.78
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    22, '2024-06-05', 0, 0
);
    
    
----- SALE NUMBER: 23 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (23, 2, '2024-06-06', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (23, 23, 5, 30);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    23, NULL, 'USD', 104.7, 104.7, 104.7,
    '2', '2024-06-06', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    23, '2024-06-06', 104.7, 0.00, 104.7, 'USD',
    23, 2, 23
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    23, 23, 5, 'Auto-generated',
    30, 'USD', 3.49, 0.00, 104.7
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    23, '2024-06-06', 1, 0
);
    
    
----- SALE NUMBER: 24 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (24, 3, '2024-06-07', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (24, 24, 2, 48);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    24, NULL, 'USD', 167.52, 167.52, 167.52,
    '2', '2024-06-07', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    24, '2024-06-07', 167.52, 0.00, 167.52, 'USD',
    24, 3, 24
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    24, 24, 2, 'Auto-generated',
    48, 'USD', 3.49, 0.00, 167.52
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    24, '2024-06-07', 2, 0
);
    
    
----- SALE NUMBER: 25 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (25, 4, '2024-06-08', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (25, 25, 6, 9);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    25, NULL, 'USD', 26.910000000000004, 26.910000000000004, 26.910000000000004,
    '2', '2024-06-08', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    25, '2024-06-08', 26.910000000000004, 0.00, 26.910000000000004, 'USD',
    25, 4, 25
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    25, 25, 6, 'Auto-generated',
    9, 'USD', 2.99, 0.00, 26.910000000000004
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    25, '2024-06-08', 3, 0
);
    
    
----- SALE NUMBER: 26 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (26, 4, '2024-06-09', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (26, 26, 6, 50);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    26, NULL, 'USD', 149.5, 149.5, 149.5,
    '2', '2024-06-09', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    26, '2024-06-09', 149.5, 0.00, 149.5, 'USD',
    26, 4, 26
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    26, 26, 6, 'Auto-generated',
    50, 'USD', 2.99, 0.00, 149.5
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    26, '2024-06-09', 3, 0
);
    
    
----- SALE NUMBER: 27 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (27, 4, '2024-06-10', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (27, 27, 2, 29);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    27, NULL, 'USD', 101.21000000000001, 101.21000000000001, 101.21000000000001,
    '2', '2024-06-10', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    27, '2024-06-10', 101.21000000000001, 0.00, 101.21000000000001, 'USD',
    27, 4, 27
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    27, 27, 2, 'Auto-generated',
    29, 'USD', 3.49, 0.00, 101.21000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    27, '2024-06-10', 3, 0
);
    
    
----- SALE NUMBER: 28 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (28, 2, '2024-06-11', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (28, 28, 2, 8);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    28, NULL, 'USD', 27.92, 27.92, 27.92,
    '2', '2024-06-11', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    28, '2024-06-11', 27.92, 0.00, 27.92, 'USD',
    28, 2, 28
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    28, 28, 2, 'Auto-generated',
    8, 'USD', 3.49, 0.00, 27.92
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    28, '2024-06-11', 1, 0
);
    
    
----- SALE NUMBER: 29 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (29, 4, '2024-06-12', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (29, 29, 0, 1);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    29, NULL, 'USD', 2.99, 2.99, 2.99,
    '2', '2024-06-12', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    29, '2024-06-12', 2.99, 0.00, 2.99, 'USD',
    29, 4, 29
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    29, 29, 0, 'Auto-generated',
    1, 'USD', 2.99, 0.00, 2.99
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    29, '2024-06-12', 3, 0
);
    
    
----- SALE NUMBER: 30 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (30, 3, '2024-06-13', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (30, 30, 0, 5);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    30, NULL, 'USD', 14.950000000000001, 14.950000000000001, 14.950000000000001,
    '2', '2024-06-13', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    30, '2024-06-13', 14.950000000000001, 0.00, 14.950000000000001, 'USD',
    30, 3, 30
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    30, 30, 0, 'Auto-generated',
    5, 'USD', 2.99, 0.00, 14.950000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    30, '2024-06-13', 2, 0
);
    
    
----- SALE NUMBER: 31 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (31, 3, '2024-06-14', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (31, 31, 8, 40);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    31, NULL, 'USD', 139.60000000000002, 139.60000000000002, 139.60000000000002,
    '2', '2024-06-14', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    31, '2024-06-14', 139.60000000000002, 0.00, 139.60000000000002, 'USD',
    31, 3, 31
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    31, 31, 8, 'Auto-generated',
    40, 'USD', 3.49, 0.00, 139.60000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    31, '2024-06-14', 2, 0
);
    
    
----- SALE NUMBER: 32 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (32, 4, '2024-06-15', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (32, 32, 1, 49);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    32, NULL, 'USD', 195.51000000000002, 195.51000000000002, 195.51000000000002,
    '2', '2024-06-15', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    32, '2024-06-15', 195.51000000000002, 0.00, 195.51000000000002, 'USD',
    32, 4, 32
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    32, 32, 1, 'Auto-generated',
    49, 'USD', 3.99, 0.00, 195.51000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    32, '2024-06-15', 3, 0
);
    
    
----- SALE NUMBER: 33 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (33, 4, '2024-06-16', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (33, 33, 4, 2);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    33, NULL, 'USD', 6.98, 6.98, 6.98,
    '2', '2024-06-16', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    33, '2024-06-16', 6.98, 0.00, 6.98, 'USD',
    33, 4, 33
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    33, 33, 4, 'Auto-generated',
    2, 'USD', 3.49, 0.00, 6.98
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    33, '2024-06-16', 3, 0
);
    
    
----- SALE NUMBER: 34 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (34, 3, '2024-06-17', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (34, 34, 8, 17);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    34, NULL, 'USD', 59.330000000000005, 59.330000000000005, 59.330000000000005,
    '2', '2024-06-17', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    34, '2024-06-17', 59.330000000000005, 0.00, 59.330000000000005, 'USD',
    34, 3, 34
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    34, 34, 8, 'Auto-generated',
    17, 'USD', 3.49, 0.00, 59.330000000000005
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    34, '2024-06-17', 2, 0
);
    
    
----- SALE NUMBER: 35 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (35, 4, '2024-06-18', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (35, 35, 4, 25);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    35, NULL, 'USD', 87.25, 87.25, 87.25,
    '2', '2024-06-18', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    35, '2024-06-18', 87.25, 0.00, 87.25, 'USD',
    35, 4, 35
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    35, 35, 4, 'Auto-generated',
    25, 'USD', 3.49, 0.00, 87.25
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    35, '2024-06-18', 3, 0
);
    
    
----- SALE NUMBER: 36 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (36, 4, '2024-06-19', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (36, 36, 4, 33);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    36, NULL, 'USD', 115.17, 115.17, 115.17,
    '2', '2024-06-19', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    36, '2024-06-19', 115.17, 0.00, 115.17, 'USD',
    36, 4, 36
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    36, 36, 4, 'Auto-generated',
    33, 'USD', 3.49, 0.00, 115.17
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    36, '2024-06-19', 3, 0
);
    
    
----- SALE NUMBER: 37 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (37, 1, '2024-06-20', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (37, 37, 0, 48);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    37, NULL, 'USD', 143.52, 143.52, 143.52,
    '2', '2024-06-20', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    37, '2024-06-20', 143.52, 0.00, 143.52, 'USD',
    37, 1, 37
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    37, 37, 0, 'Auto-generated',
    48, 'USD', 2.99, 0.00, 143.52
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    37, '2024-06-20', 0, 0
);
    
    
----- SALE NUMBER: 38 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (38, 2, '2024-06-21', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (38, 38, 3, 36);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    38, NULL, 'USD', 179.64000000000001, 179.64000000000001, 179.64000000000001,
    '2', '2024-06-21', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    38, '2024-06-21', 179.64000000000001, 0.00, 179.64000000000001, 'USD',
    38, 2, 38
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    38, 38, 3, 'Auto-generated',
    36, 'USD', 4.99, 0.00, 179.64000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    38, '2024-06-21', 1, 0
);
    
    
----- SALE NUMBER: 39 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (39, 1, '2024-06-22', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (39, 39, 3, 1);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    39, NULL, 'USD', 4.99, 4.99, 4.99,
    '2', '2024-06-22', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    39, '2024-06-22', 4.99, 0.00, 4.99, 'USD',
    39, 1, 39
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    39, 39, 3, 'Auto-generated',
    1, 'USD', 4.99, 0.00, 4.99
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    39, '2024-06-22', 0, 0
);
    
    
----- SALE NUMBER: 40 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (40, 3, '2024-06-23', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (40, 40, 8, 6);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    40, NULL, 'USD', 20.94, 20.94, 20.94,
    '2', '2024-06-23', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    40, '2024-06-23', 20.94, 0.00, 20.94, 'USD',
    40, 3, 40
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    40, 40, 8, 'Auto-generated',
    6, 'USD', 3.49, 0.00, 20.94
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    40, '2024-06-23', 2, 0
);
    
    
----- SALE NUMBER: 41 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (41, 4, '2024-06-24', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (41, 41, 5, 20);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    41, NULL, 'USD', 69.80000000000001, 69.80000000000001, 69.80000000000001,
    '2', '2024-06-24', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    41, '2024-06-24', 69.80000000000001, 0.00, 69.80000000000001, 'USD',
    41, 4, 41
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    41, 41, 5, 'Auto-generated',
    20, 'USD', 3.49, 0.00, 69.80000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    41, '2024-06-24', 3, 0
);
    
    
----- SALE NUMBER: 42 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (42, 4, '2024-06-25', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (42, 42, 3, 39);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    42, NULL, 'USD', 194.61, 194.61, 194.61,
    '2', '2024-06-25', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    42, '2024-06-25', 194.61, 0.00, 194.61, 'USD',
    42, 4, 42
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    42, 42, 3, 'Auto-generated',
    39, 'USD', 4.99, 0.00, 194.61
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    42, '2024-06-25', 3, 0
);
    
    
----- SALE NUMBER: 43 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (43, 4, '2024-06-26', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (43, 43, 2, 4);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    43, NULL, 'USD', 13.96, 13.96, 13.96,
    '2', '2024-06-26', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    43, '2024-06-26', 13.96, 0.00, 13.96, 'USD',
    43, 4, 43
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    43, 43, 2, 'Auto-generated',
    4, 'USD', 3.49, 0.00, 13.96
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    43, '2024-06-26', 3, 0
);
    
    
----- SALE NUMBER: 44 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (44, 2, '2024-06-27', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (44, 44, 1, 35);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    44, NULL, 'USD', 139.65, 139.65, 139.65,
    '2', '2024-06-27', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    44, '2024-06-27', 139.65, 0.00, 139.65, 'USD',
    44, 2, 44
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    44, 44, 1, 'Auto-generated',
    35, 'USD', 3.99, 0.00, 139.65
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    44, '2024-06-27', 1, 0
);
    
    
----- SALE NUMBER: 45 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (45, 2, '2024-06-28', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (45, 45, 6, 46);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    45, NULL, 'USD', 137.54000000000002, 137.54000000000002, 137.54000000000002,
    '2', '2024-06-28', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    45, '2024-06-28', 137.54000000000002, 0.00, 137.54000000000002, 'USD',
    45, 2, 45
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    45, 45, 6, 'Auto-generated',
    46, 'USD', 2.99, 0.00, 137.54000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    45, '2024-06-28', 1, 0
);
    
    
----- SALE NUMBER: 46 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (46, 4, '2024-06-29', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (46, 46, 3, 33);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    46, NULL, 'USD', 164.67000000000002, 164.67000000000002, 164.67000000000002,
    '2', '2024-06-29', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    46, '2024-06-29', 164.67000000000002, 0.00, 164.67000000000002, 'USD',
    46, 4, 46
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    46, 46, 3, 'Auto-generated',
    33, 'USD', 4.99, 0.00, 164.67000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    46, '2024-06-29', 3, 0
);
    
    
----- SALE NUMBER: 47 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (47, 1, '2024-06-30', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (47, 47, 1, 7);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    47, NULL, 'USD', 27.93, 27.93, 27.93,
    '2', '2024-06-30', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    47, '2024-06-30', 27.93, 0.00, 27.93, 'USD',
    47, 1, 47
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    47, 47, 1, 'Auto-generated',
    7, 'USD', 3.99, 0.00, 27.93
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    47, '2024-06-30', 0, 0
);
    
    
----- SALE NUMBER: 48 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (48, 3, '2024-07-01', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (48, 48, 4, 13);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    48, NULL, 'USD', 45.370000000000005, 45.370000000000005, 45.370000000000005,
    '2', '2024-07-01', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    48, '2024-07-01', 45.370000000000005, 0.00, 45.370000000000005, 'USD',
    48, 3, 48
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    48, 48, 4, 'Auto-generated',
    13, 'USD', 3.49, 0.00, 45.370000000000005
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    48, '2024-07-01', 2, 0
);
    
    
----- SALE NUMBER: 49 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (49, 4, '2024-07-02', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (49, 49, 5, 46);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    49, NULL, 'USD', 160.54000000000002, 160.54000000000002, 160.54000000000002,
    '2', '2024-07-02', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    49, '2024-07-02', 160.54000000000002, 0.00, 160.54000000000002, 'USD',
    49, 4, 49
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    49, 49, 5, 'Auto-generated',
    46, 'USD', 3.49, 0.00, 160.54000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    49, '2024-07-02', 3, 0
);
    
    
----- SALE NUMBER: 50 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (50, 2, '2024-07-03', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (50, 50, 6, 15);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    50, NULL, 'USD', 44.85, 44.85, 44.85,
    '2', '2024-07-03', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    50, '2024-07-03', 44.85, 0.00, 44.85, 'USD',
    50, 2, 50
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    50, 50, 6, 'Auto-generated',
    15, 'USD', 2.99, 0.00, 44.85
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    50, '2024-07-03', 1, 0
);
    
    
----- SALE NUMBER: 51 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (51, 4, '2024-07-04', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (51, 51, 8, 40);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    51, NULL, 'USD', 139.60000000000002, 139.60000000000002, 139.60000000000002,
    '2', '2024-07-04', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    51, '2024-07-04', 139.60000000000002, 0.00, 139.60000000000002, 'USD',
    51, 4, 51
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    51, 51, 8, 'Auto-generated',
    40, 'USD', 3.49, 0.00, 139.60000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    51, '2024-07-04', 3, 0
);
    
    
----- SALE NUMBER: 52 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (52, 4, '2024-07-05', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (52, 52, 1, 33);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    52, NULL, 'USD', 131.67000000000002, 131.67000000000002, 131.67000000000002,
    '2', '2024-07-05', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    52, '2024-07-05', 131.67000000000002, 0.00, 131.67000000000002, 'USD',
    52, 4, 52
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    52, 52, 1, 'Auto-generated',
    33, 'USD', 3.99, 0.00, 131.67000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    52, '2024-07-05', 3, 0
);
    
    
----- SALE NUMBER: 53 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (53, 2, '2024-07-06', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (53, 53, 5, 36);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    53, NULL, 'USD', 125.64000000000001, 125.64000000000001, 125.64000000000001,
    '2', '2024-07-06', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    53, '2024-07-06', 125.64000000000001, 0.00, 125.64000000000001, 'USD',
    53, 2, 53
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    53, 53, 5, 'Auto-generated',
    36, 'USD', 3.49, 0.00, 125.64000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    53, '2024-07-06', 1, 0
);
    
    
----- SALE NUMBER: 54 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (54, 3, '2024-07-07', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (54, 54, 2, 36);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    54, NULL, 'USD', 125.64000000000001, 125.64000000000001, 125.64000000000001,
    '2', '2024-07-07', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    54, '2024-07-07', 125.64000000000001, 0.00, 125.64000000000001, 'USD',
    54, 3, 54
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    54, 54, 2, 'Auto-generated',
    36, 'USD', 3.49, 0.00, 125.64000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    54, '2024-07-07', 2, 0
);
    
    
----- SALE NUMBER: 55 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (55, 3, '2024-07-08', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (55, 55, 5, 36);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    55, NULL, 'USD', 125.64000000000001, 125.64000000000001, 125.64000000000001,
    '2', '2024-07-08', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    55, '2024-07-08', 125.64000000000001, 0.00, 125.64000000000001, 'USD',
    55, 3, 55
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    55, 55, 5, 'Auto-generated',
    36, 'USD', 3.49, 0.00, 125.64000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    55, '2024-07-08', 2, 0
);
    
    
----- SALE NUMBER: 56 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (56, 1, '2024-07-09', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (56, 56, 7, 24);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    56, NULL, 'USD', 95.76, 95.76, 95.76,
    '2', '2024-07-09', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    56, '2024-07-09', 95.76, 0.00, 95.76, 'USD',
    56, 1, 56
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    56, 56, 7, 'Auto-generated',
    24, 'USD', 3.99, 0.00, 95.76
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    56, '2024-07-09', 0, 0
);
    
    
----- SALE NUMBER: 57 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (57, 1, '2024-07-10', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (57, 57, 8, 13);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    57, NULL, 'USD', 45.370000000000005, 45.370000000000005, 45.370000000000005,
    '2', '2024-07-10', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    57, '2024-07-10', 45.370000000000005, 0.00, 45.370000000000005, 'USD',
    57, 1, 57
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    57, 57, 8, 'Auto-generated',
    13, 'USD', 3.49, 0.00, 45.370000000000005
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    57, '2024-07-10', 0, 0
);
    
    
----- SALE NUMBER: 58 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (58, 4, '2024-07-11', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (58, 58, 3, 28);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    58, NULL, 'USD', 139.72, 139.72, 139.72,
    '2', '2024-07-11', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    58, '2024-07-11', 139.72, 0.00, 139.72, 'USD',
    58, 4, 58
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    58, 58, 3, 'Auto-generated',
    28, 'USD', 4.99, 0.00, 139.72
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    58, '2024-07-11', 3, 0
);
    
    
----- SALE NUMBER: 59 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (59, 4, '2024-07-12', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (59, 59, 5, 26);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    59, NULL, 'USD', 90.74000000000001, 90.74000000000001, 90.74000000000001,
    '2', '2024-07-12', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    59, '2024-07-12', 90.74000000000001, 0.00, 90.74000000000001, 'USD',
    59, 4, 59
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    59, 59, 5, 'Auto-generated',
    26, 'USD', 3.49, 0.00, 90.74000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    59, '2024-07-12', 3, 0
);
    
    
----- SALE NUMBER: 60 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (60, 3, '2024-07-13', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (60, 60, 6, 43);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    60, NULL, 'USD', 128.57000000000002, 128.57000000000002, 128.57000000000002,
    '2', '2024-07-13', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    60, '2024-07-13', 128.57000000000002, 0.00, 128.57000000000002, 'USD',
    60, 3, 60
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    60, 60, 6, 'Auto-generated',
    43, 'USD', 2.99, 0.00, 128.57000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    60, '2024-07-13', 2, 0
);
    
    
----- SALE NUMBER: 61 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (61, 4, '2024-07-14', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (61, 61, 1, 42);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    61, NULL, 'USD', 167.58, 167.58, 167.58,
    '2', '2024-07-14', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    61, '2024-07-14', 167.58, 0.00, 167.58, 'USD',
    61, 4, 61
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    61, 61, 1, 'Auto-generated',
    42, 'USD', 3.99, 0.00, 167.58
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    61, '2024-07-14', 3, 0
);
    
    
----- SALE NUMBER: 62 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (62, 3, '2024-07-15', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (62, 62, 7, 25);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    62, NULL, 'USD', 99.75, 99.75, 99.75,
    '2', '2024-07-15', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    62, '2024-07-15', 99.75, 0.00, 99.75, 'USD',
    62, 3, 62
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    62, 62, 7, 'Auto-generated',
    25, 'USD', 3.99, 0.00, 99.75
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    62, '2024-07-15', 2, 0
);
    
    
----- SALE NUMBER: 63 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (63, 1, '2024-07-16', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (63, 63, 5, 43);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    63, NULL, 'USD', 150.07000000000002, 150.07000000000002, 150.07000000000002,
    '2', '2024-07-16', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    63, '2024-07-16', 150.07000000000002, 0.00, 150.07000000000002, 'USD',
    63, 1, 63
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    63, 63, 5, 'Auto-generated',
    43, 'USD', 3.49, 0.00, 150.07000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    63, '2024-07-16', 0, 0
);
    
    
----- SALE NUMBER: 64 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (64, 4, '2024-07-17', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (64, 64, 0, 47);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    64, NULL, 'USD', 140.53, 140.53, 140.53,
    '2', '2024-07-17', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    64, '2024-07-17', 140.53, 0.00, 140.53, 'USD',
    64, 4, 64
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    64, 64, 0, 'Auto-generated',
    47, 'USD', 2.99, 0.00, 140.53
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    64, '2024-07-17', 3, 0
);
    
    
----- SALE NUMBER: 65 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (65, 1, '2024-07-18', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (65, 65, 3, 35);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    65, NULL, 'USD', 174.65, 174.65, 174.65,
    '2', '2024-07-18', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    65, '2024-07-18', 174.65, 0.00, 174.65, 'USD',
    65, 1, 65
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    65, 65, 3, 'Auto-generated',
    35, 'USD', 4.99, 0.00, 174.65
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    65, '2024-07-18', 0, 0
);
    
    
----- SALE NUMBER: 66 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (66, 2, '2024-07-19', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (66, 66, 4, 6);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    66, NULL, 'USD', 20.94, 20.94, 20.94,
    '2', '2024-07-19', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    66, '2024-07-19', 20.94, 0.00, 20.94, 'USD',
    66, 2, 66
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    66, 66, 4, 'Auto-generated',
    6, 'USD', 3.49, 0.00, 20.94
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    66, '2024-07-19', 1, 0
);
    
    
----- SALE NUMBER: 67 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (67, 4, '2024-07-20', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (67, 67, 1, 47);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    67, NULL, 'USD', 187.53, 187.53, 187.53,
    '2', '2024-07-20', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    67, '2024-07-20', 187.53, 0.00, 187.53, 'USD',
    67, 4, 67
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    67, 67, 1, 'Auto-generated',
    47, 'USD', 3.99, 0.00, 187.53
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    67, '2024-07-20', 3, 0
);
    
    
----- SALE NUMBER: 68 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (68, 3, '2024-07-21', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (68, 68, 8, 8);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    68, NULL, 'USD', 27.92, 27.92, 27.92,
    '2', '2024-07-21', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    68, '2024-07-21', 27.92, 0.00, 27.92, 'USD',
    68, 3, 68
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    68, 68, 8, 'Auto-generated',
    8, 'USD', 3.49, 0.00, 27.92
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    68, '2024-07-21', 2, 0
);
    
    
----- SALE NUMBER: 69 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (69, 2, '2024-07-22', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (69, 69, 7, 26);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    69, NULL, 'USD', 103.74000000000001, 103.74000000000001, 103.74000000000001,
    '2', '2024-07-22', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    69, '2024-07-22', 103.74000000000001, 0.00, 103.74000000000001, 'USD',
    69, 2, 69
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    69, 69, 7, 'Auto-generated',
    26, 'USD', 3.99, 0.00, 103.74000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    69, '2024-07-22', 1, 0
);
    
    
----- SALE NUMBER: 70 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (70, 4, '2024-07-23', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (70, 70, 2, 26);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    70, NULL, 'USD', 90.74000000000001, 90.74000000000001, 90.74000000000001,
    '2', '2024-07-23', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    70, '2024-07-23', 90.74000000000001, 0.00, 90.74000000000001, 'USD',
    70, 4, 70
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    70, 70, 2, 'Auto-generated',
    26, 'USD', 3.49, 0.00, 90.74000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    70, '2024-07-23', 3, 0
);
    
    
----- SALE NUMBER: 71 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (71, 3, '2024-07-24', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (71, 71, 8, 49);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    71, NULL, 'USD', 171.01000000000002, 171.01000000000002, 171.01000000000002,
    '2', '2024-07-24', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    71, '2024-07-24', 171.01000000000002, 0.00, 171.01000000000002, 'USD',
    71, 3, 71
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    71, 71, 8, 'Auto-generated',
    49, 'USD', 3.49, 0.00, 171.01000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    71, '2024-07-24', 2, 0
);
    
    
----- SALE NUMBER: 72 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (72, 4, '2024-07-25', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (72, 72, 0, 45);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    72, NULL, 'USD', 134.55, 134.55, 134.55,
    '2', '2024-07-25', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    72, '2024-07-25', 134.55, 0.00, 134.55, 'USD',
    72, 4, 72
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    72, 72, 0, 'Auto-generated',
    45, 'USD', 2.99, 0.00, 134.55
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    72, '2024-07-25', 3, 0
);
    
    
----- SALE NUMBER: 73 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (73, 2, '2024-07-26', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (73, 73, 2, 12);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    73, NULL, 'USD', 41.88, 41.88, 41.88,
    '2', '2024-07-26', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    73, '2024-07-26', 41.88, 0.00, 41.88, 'USD',
    73, 2, 73
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    73, 73, 2, 'Auto-generated',
    12, 'USD', 3.49, 0.00, 41.88
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    73, '2024-07-26', 1, 0
);
    
    
----- SALE NUMBER: 74 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (74, 4, '2024-07-27', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (74, 74, 3, 37);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    74, NULL, 'USD', 184.63, 184.63, 184.63,
    '2', '2024-07-27', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    74, '2024-07-27', 184.63, 0.00, 184.63, 'USD',
    74, 4, 74
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    74, 74, 3, 'Auto-generated',
    37, 'USD', 4.99, 0.00, 184.63
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    74, '2024-07-27', 3, 0
);
    
    
----- SALE NUMBER: 75 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (75, 4, '2024-07-28', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (75, 75, 3, 38);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    75, NULL, 'USD', 189.62, 189.62, 189.62,
    '2', '2024-07-28', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    75, '2024-07-28', 189.62, 0.00, 189.62, 'USD',
    75, 4, 75
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    75, 75, 3, 'Auto-generated',
    38, 'USD', 4.99, 0.00, 189.62
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    75, '2024-07-28', 3, 0
);
    
    
----- SALE NUMBER: 76 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (76, 3, '2024-07-29', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (76, 76, 7, 27);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    76, NULL, 'USD', 107.73, 107.73, 107.73,
    '2', '2024-07-29', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    76, '2024-07-29', 107.73, 0.00, 107.73, 'USD',
    76, 3, 76
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    76, 76, 7, 'Auto-generated',
    27, 'USD', 3.99, 0.00, 107.73
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    76, '2024-07-29', 2, 0
);
    
    
----- SALE NUMBER: 77 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (77, 2, '2024-07-30', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (77, 77, 0, 1);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    77, NULL, 'USD', 2.99, 2.99, 2.99,
    '2', '2024-07-30', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    77, '2024-07-30', 2.99, 0.00, 2.99, 'USD',
    77, 2, 77
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    77, 77, 0, 'Auto-generated',
    1, 'USD', 2.99, 0.00, 2.99
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    77, '2024-07-30', 1, 0
);
    
    
----- SALE NUMBER: 78 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (78, 1, '2024-07-31', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (78, 78, 6, 24);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    78, NULL, 'USD', 71.76, 71.76, 71.76,
    '2', '2024-07-31', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    78, '2024-07-31', 71.76, 0.00, 71.76, 'USD',
    78, 1, 78
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    78, 78, 6, 'Auto-generated',
    24, 'USD', 2.99, 0.00, 71.76
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    78, '2024-07-31', 0, 0
);
    
    
----- SALE NUMBER: 79 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (79, 2, '2024-08-01', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (79, 79, 5, 47);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    79, NULL, 'USD', 164.03, 164.03, 164.03,
    '2', '2024-08-01', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    79, '2024-08-01', 164.03, 0.00, 164.03, 'USD',
    79, 2, 79
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    79, 79, 5, 'Auto-generated',
    47, 'USD', 3.49, 0.00, 164.03
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    79, '2024-08-01', 1, 0
);
    
    
----- SALE NUMBER: 80 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (80, 1, '2024-08-02', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (80, 80, 6, 22);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    80, NULL, 'USD', 65.78, 65.78, 65.78,
    '2', '2024-08-02', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    80, '2024-08-02', 65.78, 0.00, 65.78, 'USD',
    80, 1, 80
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    80, 80, 6, 'Auto-generated',
    22, 'USD', 2.99, 0.00, 65.78
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    80, '2024-08-02', 0, 0
);
    
    
----- SALE NUMBER: 81 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (81, 1, '2024-08-03', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (81, 81, 6, 33);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    81, NULL, 'USD', 98.67, 98.67, 98.67,
    '2', '2024-08-03', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    81, '2024-08-03', 98.67, 0.00, 98.67, 'USD',
    81, 1, 81
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    81, 81, 6, 'Auto-generated',
    33, 'USD', 2.99, 0.00, 98.67
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    81, '2024-08-03', 0, 0
);
    
    
----- SALE NUMBER: 82 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (82, 4, '2024-08-04', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (82, 82, 6, 13);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    82, NULL, 'USD', 38.870000000000005, 38.870000000000005, 38.870000000000005,
    '2', '2024-08-04', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    82, '2024-08-04', 38.870000000000005, 0.00, 38.870000000000005, 'USD',
    82, 4, 82
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    82, 82, 6, 'Auto-generated',
    13, 'USD', 2.99, 0.00, 38.870000000000005
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    82, '2024-08-04', 3, 0
);
    
    
----- SALE NUMBER: 83 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (83, 3, '2024-08-05', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (83, 83, 3, 24);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    83, NULL, 'USD', 119.76, 119.76, 119.76,
    '2', '2024-08-05', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    83, '2024-08-05', 119.76, 0.00, 119.76, 'USD',
    83, 3, 83
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    83, 83, 3, 'Auto-generated',
    24, 'USD', 4.99, 0.00, 119.76
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    83, '2024-08-05', 2, 0
);
    
    
----- SALE NUMBER: 84 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (84, 3, '2024-08-06', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (84, 84, 6, 12);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    84, NULL, 'USD', 35.88, 35.88, 35.88,
    '2', '2024-08-06', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    84, '2024-08-06', 35.88, 0.00, 35.88, 'USD',
    84, 3, 84
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    84, 84, 6, 'Auto-generated',
    12, 'USD', 2.99, 0.00, 35.88
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    84, '2024-08-06', 2, 0
);
    
    
----- SALE NUMBER: 85 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (85, 1, '2024-08-07', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (85, 85, 2, 26);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    85, NULL, 'USD', 90.74000000000001, 90.74000000000001, 90.74000000000001,
    '2', '2024-08-07', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    85, '2024-08-07', 90.74000000000001, 0.00, 90.74000000000001, 'USD',
    85, 1, 85
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    85, 85, 2, 'Auto-generated',
    26, 'USD', 3.49, 0.00, 90.74000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    85, '2024-08-07', 0, 0
);
    
    
----- SALE NUMBER: 86 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (86, 2, '2024-08-08', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (86, 86, 8, 17);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    86, NULL, 'USD', 59.330000000000005, 59.330000000000005, 59.330000000000005,
    '2', '2024-08-08', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    86, '2024-08-08', 59.330000000000005, 0.00, 59.330000000000005, 'USD',
    86, 2, 86
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    86, 86, 8, 'Auto-generated',
    17, 'USD', 3.49, 0.00, 59.330000000000005
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    86, '2024-08-08', 1, 0
);
    
    
----- SALE NUMBER: 87 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (87, 4, '2024-08-09', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (87, 87, 7, 39);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    87, NULL, 'USD', 155.61, 155.61, 155.61,
    '2', '2024-08-09', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    87, '2024-08-09', 155.61, 0.00, 155.61, 'USD',
    87, 4, 87
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    87, 87, 7, 'Auto-generated',
    39, 'USD', 3.99, 0.00, 155.61
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    87, '2024-08-09', 3, 0
);
    
    
----- SALE NUMBER: 88 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (88, 2, '2024-08-10', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (88, 88, 3, 2);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    88, NULL, 'USD', 9.98, 9.98, 9.98,
    '2', '2024-08-10', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    88, '2024-08-10', 9.98, 0.00, 9.98, 'USD',
    88, 2, 88
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    88, 88, 3, 'Auto-generated',
    2, 'USD', 4.99, 0.00, 9.98
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    88, '2024-08-10', 1, 0
);
    
    
----- SALE NUMBER: 89 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (89, 3, '2024-08-11', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (89, 89, 6, 37);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    89, NULL, 'USD', 110.63000000000001, 110.63000000000001, 110.63000000000001,
    '2', '2024-08-11', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    89, '2024-08-11', 110.63000000000001, 0.00, 110.63000000000001, 'USD',
    89, 3, 89
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    89, 89, 6, 'Auto-generated',
    37, 'USD', 2.99, 0.00, 110.63000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    89, '2024-08-11', 2, 0
);
    
    
----- SALE NUMBER: 90 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (90, 4, '2024-08-12', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (90, 90, 7, 23);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    90, NULL, 'USD', 91.77000000000001, 91.77000000000001, 91.77000000000001,
    '2', '2024-08-12', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    90, '2024-08-12', 91.77000000000001, 0.00, 91.77000000000001, 'USD',
    90, 4, 90
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    90, 90, 7, 'Auto-generated',
    23, 'USD', 3.99, 0.00, 91.77000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    90, '2024-08-12', 3, 0
);
    
    
----- SALE NUMBER: 91 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (91, 2, '2024-08-13', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (91, 91, 3, 33);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    91, NULL, 'USD', 164.67000000000002, 164.67000000000002, 164.67000000000002,
    '2', '2024-08-13', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    91, '2024-08-13', 164.67000000000002, 0.00, 164.67000000000002, 'USD',
    91, 2, 91
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    91, 91, 3, 'Auto-generated',
    33, 'USD', 4.99, 0.00, 164.67000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    91, '2024-08-13', 1, 0
);
    
    
----- SALE NUMBER: 92 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (92, 1, '2024-08-14', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (92, 92, 5, 3);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    92, NULL, 'USD', 10.47, 10.47, 10.47,
    '2', '2024-08-14', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    92, '2024-08-14', 10.47, 0.00, 10.47, 'USD',
    92, 1, 92
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    92, 92, 5, 'Auto-generated',
    3, 'USD', 3.49, 0.00, 10.47
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    92, '2024-08-14', 0, 0
);
    
    
----- SALE NUMBER: 93 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (93, 3, '2024-08-15', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (93, 93, 1, 38);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    93, NULL, 'USD', 151.62, 151.62, 151.62,
    '2', '2024-08-15', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    93, '2024-08-15', 151.62, 0.00, 151.62, 'USD',
    93, 3, 93
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    93, 93, 1, 'Auto-generated',
    38, 'USD', 3.99, 0.00, 151.62
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    93, '2024-08-15', 2, 0
);
    
    
----- SALE NUMBER: 94 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (94, 3, '2024-08-16', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (94, 94, 8, 48);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    94, NULL, 'USD', 167.52, 167.52, 167.52,
    '2', '2024-08-16', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    94, '2024-08-16', 167.52, 0.00, 167.52, 'USD',
    94, 3, 94
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    94, 94, 8, 'Auto-generated',
    48, 'USD', 3.49, 0.00, 167.52
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    94, '2024-08-16', 2, 0
);
    
    
----- SALE NUMBER: 95 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (95, 2, '2024-08-17', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (95, 95, 4, 14);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    95, NULL, 'USD', 48.86, 48.86, 48.86,
    '2', '2024-08-17', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    95, '2024-08-17', 48.86, 0.00, 48.86, 'USD',
    95, 2, 95
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    95, 95, 4, 'Auto-generated',
    14, 'USD', 3.49, 0.00, 48.86
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    95, '2024-08-17', 1, 0
);
    
    
----- SALE NUMBER: 96 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (96, 4, '2024-08-18', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (96, 96, 2, 29);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    96, NULL, 'USD', 101.21000000000001, 101.21000000000001, 101.21000000000001,
    '2', '2024-08-18', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    96, '2024-08-18', 101.21000000000001, 0.00, 101.21000000000001, 'USD',
    96, 4, 96
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    96, 96, 2, 'Auto-generated',
    29, 'USD', 3.49, 0.00, 101.21000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    96, '2024-08-18', 3, 0
);
    
    
----- SALE NUMBER: 97 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (97, 3, '2024-08-19', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (97, 97, 5, 31);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    97, NULL, 'USD', 108.19000000000001, 108.19000000000001, 108.19000000000001,
    '2', '2024-08-19', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    97, '2024-08-19', 108.19000000000001, 0.00, 108.19000000000001, 'USD',
    97, 3, 97
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    97, 97, 5, 'Auto-generated',
    31, 'USD', 3.49, 0.00, 108.19000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    97, '2024-08-19', 2, 0
);
    
    
----- SALE NUMBER: 98 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (98, 1, '2024-08-20', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (98, 98, 7, 34);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    98, NULL, 'USD', 135.66, 135.66, 135.66,
    '2', '2024-08-20', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    98, '2024-08-20', 135.66, 0.00, 135.66, 'USD',
    98, 1, 98
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    98, 98, 7, 'Auto-generated',
    34, 'USD', 3.99, 0.00, 135.66
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    98, '2024-08-20', 0, 0
);
    
    
----- SALE NUMBER: 99 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (99, 4, '2024-08-21', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (99, 99, 7, 38);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    99, NULL, 'USD', 151.62, 151.62, 151.62,
    '2', '2024-08-21', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    99, '2024-08-21', 151.62, 0.00, 151.62, 'USD',
    99, 4, 99
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    99, 99, 7, 'Auto-generated',
    38, 'USD', 3.99, 0.00, 151.62
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    99, '2024-08-21', 3, 0
);
    
    
----- SALE NUMBER: 100 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (100, 1, '2024-08-22', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (100, 100, 7, 36);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    100, NULL, 'USD', 143.64000000000001, 143.64000000000001, 143.64000000000001,
    '2', '2024-08-22', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    100, '2024-08-22', 143.64000000000001, 0.00, 143.64000000000001, 'USD',
    100, 1, 100
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    100, 100, 7, 'Auto-generated',
    36, 'USD', 3.99, 0.00, 143.64000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    100, '2024-08-22', 0, 0
);
    
    
----- SALE NUMBER: 101 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (101, 1, '2024-08-23', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (101, 101, 1, 33);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    101, NULL, 'USD', 131.67000000000002, 131.67000000000002, 131.67000000000002,
    '2', '2024-08-23', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    101, '2024-08-23', 131.67000000000002, 0.00, 131.67000000000002, 'USD',
    101, 1, 101
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    101, 101, 1, 'Auto-generated',
    33, 'USD', 3.99, 0.00, 131.67000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    101, '2024-08-23', 0, 0
);
    
    
----- SALE NUMBER: 102 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (102, 2, '2024-08-24', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (102, 102, 2, 22);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    102, NULL, 'USD', 76.78, 76.78, 76.78,
    '2', '2024-08-24', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    102, '2024-08-24', 76.78, 0.00, 76.78, 'USD',
    102, 2, 102
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    102, 102, 2, 'Auto-generated',
    22, 'USD', 3.49, 0.00, 76.78
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    102, '2024-08-24', 1, 0
);
    
    
----- SALE NUMBER: 103 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (103, 3, '2024-08-25', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (103, 103, 7, 15);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    103, NULL, 'USD', 59.85, 59.85, 59.85,
    '2', '2024-08-25', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    103, '2024-08-25', 59.85, 0.00, 59.85, 'USD',
    103, 3, 103
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    103, 103, 7, 'Auto-generated',
    15, 'USD', 3.99, 0.00, 59.85
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    103, '2024-08-25', 2, 0
);
    
    
----- SALE NUMBER: 104 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (104, 3, '2024-08-26', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (104, 104, 3, 1);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    104, NULL, 'USD', 4.99, 4.99, 4.99,
    '2', '2024-08-26', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    104, '2024-08-26', 4.99, 0.00, 4.99, 'USD',
    104, 3, 104
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    104, 104, 3, 'Auto-generated',
    1, 'USD', 4.99, 0.00, 4.99
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    104, '2024-08-26', 2, 0
);
    
    
----- SALE NUMBER: 105 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (105, 2, '2024-08-27', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (105, 105, 8, 28);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    105, NULL, 'USD', 97.72, 97.72, 97.72,
    '2', '2024-08-27', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    105, '2024-08-27', 97.72, 0.00, 97.72, 'USD',
    105, 2, 105
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    105, 105, 8, 'Auto-generated',
    28, 'USD', 3.49, 0.00, 97.72
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    105, '2024-08-27', 1, 0
);
    
    
----- SALE NUMBER: 106 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (106, 1, '2024-08-28', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (106, 106, 0, 45);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    106, NULL, 'USD', 134.55, 134.55, 134.55,
    '2', '2024-08-28', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    106, '2024-08-28', 134.55, 0.00, 134.55, 'USD',
    106, 1, 106
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    106, 106, 0, 'Auto-generated',
    45, 'USD', 2.99, 0.00, 134.55
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    106, '2024-08-28', 0, 0
);
    
    
----- SALE NUMBER: 107 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (107, 4, '2024-08-29', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (107, 107, 6, 15);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    107, NULL, 'USD', 44.85, 44.85, 44.85,
    '2', '2024-08-29', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    107, '2024-08-29', 44.85, 0.00, 44.85, 'USD',
    107, 4, 107
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    107, 107, 6, 'Auto-generated',
    15, 'USD', 2.99, 0.00, 44.85
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    107, '2024-08-29', 3, 0
);
    
    
----- SALE NUMBER: 108 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (108, 2, '2024-08-30', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (108, 108, 6, 28);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    108, NULL, 'USD', 83.72, 83.72, 83.72,
    '2', '2024-08-30', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    108, '2024-08-30', 83.72, 0.00, 83.72, 'USD',
    108, 2, 108
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    108, 108, 6, 'Auto-generated',
    28, 'USD', 2.99, 0.00, 83.72
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    108, '2024-08-30', 1, 0
);
    
    
----- SALE NUMBER: 109 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (109, 1, '2024-08-31', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (109, 109, 4, 30);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    109, NULL, 'USD', 104.7, 104.7, 104.7,
    '2', '2024-08-31', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    109, '2024-08-31', 104.7, 0.00, 104.7, 'USD',
    109, 1, 109
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    109, 109, 4, 'Auto-generated',
    30, 'USD', 3.49, 0.00, 104.7
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    109, '2024-08-31', 0, 0
);
    
    
----- SALE NUMBER: 110 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (110, 2, '2024-09-01', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (110, 110, 6, 38);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    110, NULL, 'USD', 113.62, 113.62, 113.62,
    '2', '2024-09-01', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    110, '2024-09-01', 113.62, 0.00, 113.62, 'USD',
    110, 2, 110
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    110, 110, 6, 'Auto-generated',
    38, 'USD', 2.99, 0.00, 113.62
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    110, '2024-09-01', 1, 0
);
    
    
----- SALE NUMBER: 111 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (111, 1, '2024-09-02', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (111, 111, 3, 40);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    111, NULL, 'USD', 199.60000000000002, 199.60000000000002, 199.60000000000002,
    '2', '2024-09-02', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    111, '2024-09-02', 199.60000000000002, 0.00, 199.60000000000002, 'USD',
    111, 1, 111
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    111, 111, 3, 'Auto-generated',
    40, 'USD', 4.99, 0.00, 199.60000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    111, '2024-09-02', 0, 0
);
    
    
----- SALE NUMBER: 112 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (112, 2, '2024-09-03', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (112, 112, 3, 28);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    112, NULL, 'USD', 139.72, 139.72, 139.72,
    '2', '2024-09-03', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    112, '2024-09-03', 139.72, 0.00, 139.72, 'USD',
    112, 2, 112
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    112, 112, 3, 'Auto-generated',
    28, 'USD', 4.99, 0.00, 139.72
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    112, '2024-09-03', 1, 0
);
    
    
----- SALE NUMBER: 113 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (113, 4, '2024-09-04', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (113, 113, 6, 28);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    113, NULL, 'USD', 83.72, 83.72, 83.72,
    '2', '2024-09-04', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    113, '2024-09-04', 83.72, 0.00, 83.72, 'USD',
    113, 4, 113
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    113, 113, 6, 'Auto-generated',
    28, 'USD', 2.99, 0.00, 83.72
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    113, '2024-09-04', 3, 0
);
    
    
----- SALE NUMBER: 114 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (114, 2, '2024-09-05', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (114, 114, 5, 1);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    114, NULL, 'USD', 3.49, 3.49, 3.49,
    '2', '2024-09-05', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    114, '2024-09-05', 3.49, 0.00, 3.49, 'USD',
    114, 2, 114
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    114, 114, 5, 'Auto-generated',
    1, 'USD', 3.49, 0.00, 3.49
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    114, '2024-09-05', 1, 0
);
    
    
----- SALE NUMBER: 115 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (115, 4, '2024-09-06', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (115, 115, 6, 1);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    115, NULL, 'USD', 2.99, 2.99, 2.99,
    '2', '2024-09-06', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    115, '2024-09-06', 2.99, 0.00, 2.99, 'USD',
    115, 4, 115
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    115, 115, 6, 'Auto-generated',
    1, 'USD', 2.99, 0.00, 2.99
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    115, '2024-09-06', 3, 0
);
    
    
----- SALE NUMBER: 116 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (116, 3, '2024-09-07', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (116, 116, 1, 46);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    116, NULL, 'USD', 183.54000000000002, 183.54000000000002, 183.54000000000002,
    '2', '2024-09-07', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    116, '2024-09-07', 183.54000000000002, 0.00, 183.54000000000002, 'USD',
    116, 3, 116
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    116, 116, 1, 'Auto-generated',
    46, 'USD', 3.99, 0.00, 183.54000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    116, '2024-09-07', 2, 0
);
    
    
----- SALE NUMBER: 117 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (117, 3, '2024-09-08', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (117, 117, 5, 16);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    117, NULL, 'USD', 55.84, 55.84, 55.84,
    '2', '2024-09-08', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    117, '2024-09-08', 55.84, 0.00, 55.84, 'USD',
    117, 3, 117
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    117, 117, 5, 'Auto-generated',
    16, 'USD', 3.49, 0.00, 55.84
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    117, '2024-09-08', 2, 0
);
    
    
----- SALE NUMBER: 118 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (118, 1, '2024-09-09', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (118, 118, 2, 2);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    118, NULL, 'USD', 6.98, 6.98, 6.98,
    '2', '2024-09-09', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    118, '2024-09-09', 6.98, 0.00, 6.98, 'USD',
    118, 1, 118
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    118, 118, 2, 'Auto-generated',
    2, 'USD', 3.49, 0.00, 6.98
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    118, '2024-09-09', 0, 0
);
    
    
----- SALE NUMBER: 119 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (119, 1, '2024-09-10', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (119, 119, 1, 31);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    119, NULL, 'USD', 123.69000000000001, 123.69000000000001, 123.69000000000001,
    '2', '2024-09-10', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    119, '2024-09-10', 123.69000000000001, 0.00, 123.69000000000001, 'USD',
    119, 1, 119
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    119, 119, 1, 'Auto-generated',
    31, 'USD', 3.99, 0.00, 123.69000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    119, '2024-09-10', 0, 0
);
    
    
----- SALE NUMBER: 120 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (120, 2, '2024-09-11', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (120, 120, 7, 14);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    120, NULL, 'USD', 55.86, 55.86, 55.86,
    '2', '2024-09-11', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    120, '2024-09-11', 55.86, 0.00, 55.86, 'USD',
    120, 2, 120
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    120, 120, 7, 'Auto-generated',
    14, 'USD', 3.99, 0.00, 55.86
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    120, '2024-09-11', 1, 0
);
    
    
----- SALE NUMBER: 121 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (121, 3, '2024-09-12', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (121, 121, 5, 35);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    121, NULL, 'USD', 122.15, 122.15, 122.15,
    '2', '2024-09-12', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    121, '2024-09-12', 122.15, 0.00, 122.15, 'USD',
    121, 3, 121
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    121, 121, 5, 'Auto-generated',
    35, 'USD', 3.49, 0.00, 122.15
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    121, '2024-09-12', 2, 0
);
    
    
----- SALE NUMBER: 122 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (122, 1, '2024-09-13', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (122, 122, 8, 30);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    122, NULL, 'USD', 104.7, 104.7, 104.7,
    '2', '2024-09-13', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    122, '2024-09-13', 104.7, 0.00, 104.7, 'USD',
    122, 1, 122
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    122, 122, 8, 'Auto-generated',
    30, 'USD', 3.49, 0.00, 104.7
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    122, '2024-09-13', 0, 0
);
    
    
----- SALE NUMBER: 123 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (123, 3, '2024-09-14', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (123, 123, 2, 50);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    123, NULL, 'USD', 174.5, 174.5, 174.5,
    '2', '2024-09-14', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    123, '2024-09-14', 174.5, 0.00, 174.5, 'USD',
    123, 3, 123
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    123, 123, 2, 'Auto-generated',
    50, 'USD', 3.49, 0.00, 174.5
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    123, '2024-09-14', 2, 0
);
    
    
----- SALE NUMBER: 124 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (124, 1, '2024-09-15', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (124, 124, 4, 36);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    124, NULL, 'USD', 125.64000000000001, 125.64000000000001, 125.64000000000001,
    '2', '2024-09-15', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    124, '2024-09-15', 125.64000000000001, 0.00, 125.64000000000001, 'USD',
    124, 1, 124
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    124, 124, 4, 'Auto-generated',
    36, 'USD', 3.49, 0.00, 125.64000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    124, '2024-09-15', 0, 0
);
    
    
----- SALE NUMBER: 125 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (125, 4, '2024-09-16', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (125, 125, 6, 7);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    125, NULL, 'USD', 20.93, 20.93, 20.93,
    '2', '2024-09-16', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    125, '2024-09-16', 20.93, 0.00, 20.93, 'USD',
    125, 4, 125
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    125, 125, 6, 'Auto-generated',
    7, 'USD', 2.99, 0.00, 20.93
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    125, '2024-09-16', 3, 0
);
    
    
----- SALE NUMBER: 126 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (126, 2, '2024-09-17', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (126, 126, 0, 28);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    126, NULL, 'USD', 83.72, 83.72, 83.72,
    '2', '2024-09-17', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    126, '2024-09-17', 83.72, 0.00, 83.72, 'USD',
    126, 2, 126
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    126, 126, 0, 'Auto-generated',
    28, 'USD', 2.99, 0.00, 83.72
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    126, '2024-09-17', 1, 0
);
    
    
----- SALE NUMBER: 127 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (127, 3, '2024-09-18', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (127, 127, 4, 46);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    127, NULL, 'USD', 160.54000000000002, 160.54000000000002, 160.54000000000002,
    '2', '2024-09-18', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    127, '2024-09-18', 160.54000000000002, 0.00, 160.54000000000002, 'USD',
    127, 3, 127
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    127, 127, 4, 'Auto-generated',
    46, 'USD', 3.49, 0.00, 160.54000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    127, '2024-09-18', 2, 0
);
    
    
----- SALE NUMBER: 128 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (128, 3, '2024-09-19', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (128, 128, 2, 35);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    128, NULL, 'USD', 122.15, 122.15, 122.15,
    '2', '2024-09-19', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    128, '2024-09-19', 122.15, 0.00, 122.15, 'USD',
    128, 3, 128
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    128, 128, 2, 'Auto-generated',
    35, 'USD', 3.49, 0.00, 122.15
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    128, '2024-09-19', 2, 0
);
    
    
----- SALE NUMBER: 129 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (129, 2, '2024-09-20', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (129, 129, 7, 37);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    129, NULL, 'USD', 147.63, 147.63, 147.63,
    '2', '2024-09-20', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    129, '2024-09-20', 147.63, 0.00, 147.63, 'USD',
    129, 2, 129
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    129, 129, 7, 'Auto-generated',
    37, 'USD', 3.99, 0.00, 147.63
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    129, '2024-09-20', 1, 0
);
    
    
----- SALE NUMBER: 130 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (130, 4, '2024-09-21', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (130, 130, 1, 19);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    130, NULL, 'USD', 75.81, 75.81, 75.81,
    '2', '2024-09-21', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    130, '2024-09-21', 75.81, 0.00, 75.81, 'USD',
    130, 4, 130
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    130, 130, 1, 'Auto-generated',
    19, 'USD', 3.99, 0.00, 75.81
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    130, '2024-09-21', 3, 0
);
    
    
----- SALE NUMBER: 131 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (131, 4, '2024-09-22', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (131, 131, 6, 4);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    131, NULL, 'USD', 11.96, 11.96, 11.96,
    '2', '2024-09-22', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    131, '2024-09-22', 11.96, 0.00, 11.96, 'USD',
    131, 4, 131
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    131, 131, 6, 'Auto-generated',
    4, 'USD', 2.99, 0.00, 11.96
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    131, '2024-09-22', 3, 0
);
    
    
----- SALE NUMBER: 132 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (132, 2, '2024-09-23', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (132, 132, 4, 46);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    132, NULL, 'USD', 160.54000000000002, 160.54000000000002, 160.54000000000002,
    '2', '2024-09-23', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    132, '2024-09-23', 160.54000000000002, 0.00, 160.54000000000002, 'USD',
    132, 2, 132
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    132, 132, 4, 'Auto-generated',
    46, 'USD', 3.49, 0.00, 160.54000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    132, '2024-09-23', 1, 0
);
    
    
----- SALE NUMBER: 133 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (133, 4, '2024-09-24', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (133, 133, 8, 11);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    133, NULL, 'USD', 38.39, 38.39, 38.39,
    '2', '2024-09-24', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    133, '2024-09-24', 38.39, 0.00, 38.39, 'USD',
    133, 4, 133
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    133, 133, 8, 'Auto-generated',
    11, 'USD', 3.49, 0.00, 38.39
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    133, '2024-09-24', 3, 0
);
    
    
----- SALE NUMBER: 134 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (134, 4, '2024-09-25', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (134, 134, 6, 32);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    134, NULL, 'USD', 95.68, 95.68, 95.68,
    '2', '2024-09-25', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    134, '2024-09-25', 95.68, 0.00, 95.68, 'USD',
    134, 4, 134
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    134, 134, 6, 'Auto-generated',
    32, 'USD', 2.99, 0.00, 95.68
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    134, '2024-09-25', 3, 0
);
    
    
----- SALE NUMBER: 135 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (135, 1, '2024-09-26', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (135, 135, 7, 12);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    135, NULL, 'USD', 47.88, 47.88, 47.88,
    '2', '2024-09-26', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    135, '2024-09-26', 47.88, 0.00, 47.88, 'USD',
    135, 1, 135
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    135, 135, 7, 'Auto-generated',
    12, 'USD', 3.99, 0.00, 47.88
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    135, '2024-09-26', 0, 0
);
    
    
----- SALE NUMBER: 136 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (136, 1, '2024-09-27', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (136, 136, 4, 37);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    136, NULL, 'USD', 129.13, 129.13, 129.13,
    '2', '2024-09-27', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    136, '2024-09-27', 129.13, 0.00, 129.13, 'USD',
    136, 1, 136
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    136, 136, 4, 'Auto-generated',
    37, 'USD', 3.49, 0.00, 129.13
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    136, '2024-09-27', 0, 0
);
    
    
----- SALE NUMBER: 137 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (137, 4, '2024-09-28', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (137, 137, 2, 6);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    137, NULL, 'USD', 20.94, 20.94, 20.94,
    '2', '2024-09-28', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    137, '2024-09-28', 20.94, 0.00, 20.94, 'USD',
    137, 4, 137
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    137, 137, 2, 'Auto-generated',
    6, 'USD', 3.49, 0.00, 20.94
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    137, '2024-09-28', 3, 0
);
    
    
----- SALE NUMBER: 138 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (138, 2, '2024-09-29', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (138, 138, 3, 24);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    138, NULL, 'USD', 119.76, 119.76, 119.76,
    '2', '2024-09-29', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    138, '2024-09-29', 119.76, 0.00, 119.76, 'USD',
    138, 2, 138
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    138, 138, 3, 'Auto-generated',
    24, 'USD', 4.99, 0.00, 119.76
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    138, '2024-09-29', 1, 0
);
    
    
----- SALE NUMBER: 139 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (139, 3, '2024-09-30', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (139, 139, 5, 47);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    139, NULL, 'USD', 164.03, 164.03, 164.03,
    '2', '2024-09-30', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    139, '2024-09-30', 164.03, 0.00, 164.03, 'USD',
    139, 3, 139
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    139, 139, 5, 'Auto-generated',
    47, 'USD', 3.49, 0.00, 164.03
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    139, '2024-09-30', 2, 0
);
    
    
----- SALE NUMBER: 140 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (140, 1, '2024-10-01', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (140, 140, 6, 21);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    140, NULL, 'USD', 62.790000000000006, 62.790000000000006, 62.790000000000006,
    '2', '2024-10-01', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    140, '2024-10-01', 62.790000000000006, 0.00, 62.790000000000006, 'USD',
    140, 1, 140
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    140, 140, 6, 'Auto-generated',
    21, 'USD', 2.99, 0.00, 62.790000000000006
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    140, '2024-10-01', 0, 0
);
    
    
----- SALE NUMBER: 141 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (141, 2, '2024-10-02', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (141, 141, 0, 15);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    141, NULL, 'USD', 44.85, 44.85, 44.85,
    '2', '2024-10-02', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    141, '2024-10-02', 44.85, 0.00, 44.85, 'USD',
    141, 2, 141
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    141, 141, 0, 'Auto-generated',
    15, 'USD', 2.99, 0.00, 44.85
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    141, '2024-10-02', 1, 0
);
    
    
----- SALE NUMBER: 142 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (142, 1, '2024-10-03', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (142, 142, 6, 29);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    142, NULL, 'USD', 86.71000000000001, 86.71000000000001, 86.71000000000001,
    '2', '2024-10-03', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    142, '2024-10-03', 86.71000000000001, 0.00, 86.71000000000001, 'USD',
    142, 1, 142
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    142, 142, 6, 'Auto-generated',
    29, 'USD', 2.99, 0.00, 86.71000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    142, '2024-10-03', 0, 0
);
    
    
----- SALE NUMBER: 143 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (143, 4, '2024-10-04', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (143, 143, 7, 3);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    143, NULL, 'USD', 11.97, 11.97, 11.97,
    '2', '2024-10-04', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    143, '2024-10-04', 11.97, 0.00, 11.97, 'USD',
    143, 4, 143
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    143, 143, 7, 'Auto-generated',
    3, 'USD', 3.99, 0.00, 11.97
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    143, '2024-10-04', 3, 0
);
    
    
----- SALE NUMBER: 144 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (144, 1, '2024-10-05', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (144, 144, 1, 34);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    144, NULL, 'USD', 135.66, 135.66, 135.66,
    '2', '2024-10-05', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    144, '2024-10-05', 135.66, 0.00, 135.66, 'USD',
    144, 1, 144
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    144, 144, 1, 'Auto-generated',
    34, 'USD', 3.99, 0.00, 135.66
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    144, '2024-10-05', 0, 0
);
    
    
----- SALE NUMBER: 145 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (145, 2, '2024-10-06', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (145, 145, 3, 25);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    145, NULL, 'USD', 124.75, 124.75, 124.75,
    '2', '2024-10-06', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    145, '2024-10-06', 124.75, 0.00, 124.75, 'USD',
    145, 2, 145
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    145, 145, 3, 'Auto-generated',
    25, 'USD', 4.99, 0.00, 124.75
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    145, '2024-10-06', 1, 0
);
    
    
----- SALE NUMBER: 146 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (146, 4, '2024-10-07', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (146, 146, 2, 45);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    146, NULL, 'USD', 157.05, 157.05, 157.05,
    '2', '2024-10-07', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    146, '2024-10-07', 157.05, 0.00, 157.05, 'USD',
    146, 4, 146
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    146, 146, 2, 'Auto-generated',
    45, 'USD', 3.49, 0.00, 157.05
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    146, '2024-10-07', 3, 0
);
    
    
----- SALE NUMBER: 147 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (147, 1, '2024-10-08', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (147, 147, 7, 37);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    147, NULL, 'USD', 147.63, 147.63, 147.63,
    '2', '2024-10-08', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    147, '2024-10-08', 147.63, 0.00, 147.63, 'USD',
    147, 1, 147
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    147, 147, 7, 'Auto-generated',
    37, 'USD', 3.99, 0.00, 147.63
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    147, '2024-10-08', 0, 0
);
    
    
----- SALE NUMBER: 148 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (148, 2, '2024-10-09', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (148, 148, 6, 26);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    148, NULL, 'USD', 77.74000000000001, 77.74000000000001, 77.74000000000001,
    '2', '2024-10-09', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    148, '2024-10-09', 77.74000000000001, 0.00, 77.74000000000001, 'USD',
    148, 2, 148
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    148, 148, 6, 'Auto-generated',
    26, 'USD', 2.99, 0.00, 77.74000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    148, '2024-10-09', 1, 0
);
    
    
----- SALE NUMBER: 149 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (149, 1, '2024-10-10', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (149, 149, 3, 23);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    149, NULL, 'USD', 114.77000000000001, 114.77000000000001, 114.77000000000001,
    '2', '2024-10-10', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    149, '2024-10-10', 114.77000000000001, 0.00, 114.77000000000001, 'USD',
    149, 1, 149
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    149, 149, 3, 'Auto-generated',
    23, 'USD', 4.99, 0.00, 114.77000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    149, '2024-10-10', 0, 0
);
    
    
----- SALE NUMBER: 150 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (150, 3, '2024-10-11', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (150, 150, 6, 24);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    150, NULL, 'USD', 71.76, 71.76, 71.76,
    '2', '2024-10-11', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    150, '2024-10-11', 71.76, 0.00, 71.76, 'USD',
    150, 3, 150
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    150, 150, 6, 'Auto-generated',
    24, 'USD', 2.99, 0.00, 71.76
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    150, '2024-10-11', 2, 0
);
    
    
----- SALE NUMBER: 151 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (151, 1, '2024-10-12', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (151, 151, 4, 45);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    151, NULL, 'USD', 157.05, 157.05, 157.05,
    '2', '2024-10-12', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    151, '2024-10-12', 157.05, 0.00, 157.05, 'USD',
    151, 1, 151
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    151, 151, 4, 'Auto-generated',
    45, 'USD', 3.49, 0.00, 157.05
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    151, '2024-10-12', 0, 0
);
    
    
----- SALE NUMBER: 152 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (152, 2, '2024-10-13', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (152, 152, 1, 27);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    152, NULL, 'USD', 107.73, 107.73, 107.73,
    '2', '2024-10-13', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    152, '2024-10-13', 107.73, 0.00, 107.73, 'USD',
    152, 2, 152
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    152, 152, 1, 'Auto-generated',
    27, 'USD', 3.99, 0.00, 107.73
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    152, '2024-10-13', 1, 0
);
    
    
----- SALE NUMBER: 153 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (153, 4, '2024-10-14', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (153, 153, 1, 3);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    153, NULL, 'USD', 11.97, 11.97, 11.97,
    '2', '2024-10-14', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    153, '2024-10-14', 11.97, 0.00, 11.97, 'USD',
    153, 4, 153
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    153, 153, 1, 'Auto-generated',
    3, 'USD', 3.99, 0.00, 11.97
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    153, '2024-10-14', 3, 0
);
    
    
----- SALE NUMBER: 154 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (154, 2, '2024-10-15', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (154, 154, 2, 43);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    154, NULL, 'USD', 150.07000000000002, 150.07000000000002, 150.07000000000002,
    '2', '2024-10-15', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    154, '2024-10-15', 150.07000000000002, 0.00, 150.07000000000002, 'USD',
    154, 2, 154
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    154, 154, 2, 'Auto-generated',
    43, 'USD', 3.49, 0.00, 150.07000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    154, '2024-10-15', 1, 0
);
    
    
----- SALE NUMBER: 155 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (155, 2, '2024-10-16', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (155, 155, 8, 43);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    155, NULL, 'USD', 150.07000000000002, 150.07000000000002, 150.07000000000002,
    '2', '2024-10-16', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    155, '2024-10-16', 150.07000000000002, 0.00, 150.07000000000002, 'USD',
    155, 2, 155
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    155, 155, 8, 'Auto-generated',
    43, 'USD', 3.49, 0.00, 150.07000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    155, '2024-10-16', 1, 0
);
    
    
----- SALE NUMBER: 156 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (156, 4, '2024-10-17', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (156, 156, 6, 25);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    156, NULL, 'USD', 74.75, 74.75, 74.75,
    '2', '2024-10-17', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    156, '2024-10-17', 74.75, 0.00, 74.75, 'USD',
    156, 4, 156
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    156, 156, 6, 'Auto-generated',
    25, 'USD', 2.99, 0.00, 74.75
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    156, '2024-10-17', 3, 0
);
    
    
----- SALE NUMBER: 157 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (157, 2, '2024-10-18', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (157, 157, 6, 25);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    157, NULL, 'USD', 74.75, 74.75, 74.75,
    '2', '2024-10-18', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    157, '2024-10-18', 74.75, 0.00, 74.75, 'USD',
    157, 2, 157
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    157, 157, 6, 'Auto-generated',
    25, 'USD', 2.99, 0.00, 74.75
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    157, '2024-10-18', 1, 0
);
    
    
----- SALE NUMBER: 158 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (158, 1, '2024-10-19', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (158, 158, 6, 39);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    158, NULL, 'USD', 116.61000000000001, 116.61000000000001, 116.61000000000001,
    '2', '2024-10-19', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    158, '2024-10-19', 116.61000000000001, 0.00, 116.61000000000001, 'USD',
    158, 1, 158
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    158, 158, 6, 'Auto-generated',
    39, 'USD', 2.99, 0.00, 116.61000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    158, '2024-10-19', 0, 0
);
    
    
----- SALE NUMBER: 159 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (159, 2, '2024-10-20', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (159, 159, 3, 33);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    159, NULL, 'USD', 164.67000000000002, 164.67000000000002, 164.67000000000002,
    '2', '2024-10-20', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    159, '2024-10-20', 164.67000000000002, 0.00, 164.67000000000002, 'USD',
    159, 2, 159
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    159, 159, 3, 'Auto-generated',
    33, 'USD', 4.99, 0.00, 164.67000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    159, '2024-10-20', 1, 0
);
    
    
----- SALE NUMBER: 160 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (160, 2, '2024-10-21', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (160, 160, 0, 36);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    160, NULL, 'USD', 107.64000000000001, 107.64000000000001, 107.64000000000001,
    '2', '2024-10-21', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    160, '2024-10-21', 107.64000000000001, 0.00, 107.64000000000001, 'USD',
    160, 2, 160
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    160, 160, 0, 'Auto-generated',
    36, 'USD', 2.99, 0.00, 107.64000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    160, '2024-10-21', 1, 0
);
    
    
----- SALE NUMBER: 161 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (161, 2, '2024-10-22', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (161, 161, 2, 3);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    161, NULL, 'USD', 10.47, 10.47, 10.47,
    '2', '2024-10-22', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    161, '2024-10-22', 10.47, 0.00, 10.47, 'USD',
    161, 2, 161
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    161, 161, 2, 'Auto-generated',
    3, 'USD', 3.49, 0.00, 10.47
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    161, '2024-10-22', 1, 0
);
    
    
----- SALE NUMBER: 162 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (162, 4, '2024-10-23', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (162, 162, 0, 25);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    162, NULL, 'USD', 74.75, 74.75, 74.75,
    '2', '2024-10-23', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    162, '2024-10-23', 74.75, 0.00, 74.75, 'USD',
    162, 4, 162
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    162, 162, 0, 'Auto-generated',
    25, 'USD', 2.99, 0.00, 74.75
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    162, '2024-10-23', 3, 0
);
    
    
----- SALE NUMBER: 163 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (163, 1, '2024-10-24', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (163, 163, 1, 36);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    163, NULL, 'USD', 143.64000000000001, 143.64000000000001, 143.64000000000001,
    '2', '2024-10-24', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    163, '2024-10-24', 143.64000000000001, 0.00, 143.64000000000001, 'USD',
    163, 1, 163
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    163, 163, 1, 'Auto-generated',
    36, 'USD', 3.99, 0.00, 143.64000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    163, '2024-10-24', 0, 0
);
    
    
----- SALE NUMBER: 164 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (164, 3, '2024-10-25', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (164, 164, 0, 23);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    164, NULL, 'USD', 68.77000000000001, 68.77000000000001, 68.77000000000001,
    '2', '2024-10-25', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    164, '2024-10-25', 68.77000000000001, 0.00, 68.77000000000001, 'USD',
    164, 3, 164
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    164, 164, 0, 'Auto-generated',
    23, 'USD', 2.99, 0.00, 68.77000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    164, '2024-10-25', 2, 0
);
    
    
----- SALE NUMBER: 165 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (165, 4, '2024-10-26', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (165, 165, 6, 7);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    165, NULL, 'USD', 20.93, 20.93, 20.93,
    '2', '2024-10-26', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    165, '2024-10-26', 20.93, 0.00, 20.93, 'USD',
    165, 4, 165
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    165, 165, 6, 'Auto-generated',
    7, 'USD', 2.99, 0.00, 20.93
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    165, '2024-10-26', 3, 0
);
    
    
----- SALE NUMBER: 166 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (166, 1, '2024-10-27', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (166, 166, 8, 28);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    166, NULL, 'USD', 97.72, 97.72, 97.72,
    '2', '2024-10-27', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    166, '2024-10-27', 97.72, 0.00, 97.72, 'USD',
    166, 1, 166
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    166, 166, 8, 'Auto-generated',
    28, 'USD', 3.49, 0.00, 97.72
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    166, '2024-10-27', 0, 0
);
    
    
----- SALE NUMBER: 167 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (167, 4, '2024-10-28', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (167, 167, 8, 43);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    167, NULL, 'USD', 150.07000000000002, 150.07000000000002, 150.07000000000002,
    '2', '2024-10-28', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    167, '2024-10-28', 150.07000000000002, 0.00, 150.07000000000002, 'USD',
    167, 4, 167
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    167, 167, 8, 'Auto-generated',
    43, 'USD', 3.49, 0.00, 150.07000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    167, '2024-10-28', 3, 0
);
    
    
----- SALE NUMBER: 168 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (168, 1, '2024-10-29', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (168, 168, 1, 36);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    168, NULL, 'USD', 143.64000000000001, 143.64000000000001, 143.64000000000001,
    '2', '2024-10-29', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    168, '2024-10-29', 143.64000000000001, 0.00, 143.64000000000001, 'USD',
    168, 1, 168
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    168, 168, 1, 'Auto-generated',
    36, 'USD', 3.99, 0.00, 143.64000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    168, '2024-10-29', 0, 0
);
    
    
----- SALE NUMBER: 169 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (169, 4, '2024-10-30', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (169, 169, 2, 31);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    169, NULL, 'USD', 108.19000000000001, 108.19000000000001, 108.19000000000001,
    '2', '2024-10-30', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    169, '2024-10-30', 108.19000000000001, 0.00, 108.19000000000001, 'USD',
    169, 4, 169
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    169, 169, 2, 'Auto-generated',
    31, 'USD', 3.49, 0.00, 108.19000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    169, '2024-10-30', 3, 0
);
    
    
----- SALE NUMBER: 170 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (170, 2, '2024-10-31', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (170, 170, 6, 21);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    170, NULL, 'USD', 62.790000000000006, 62.790000000000006, 62.790000000000006,
    '2', '2024-10-31', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    170, '2024-10-31', 62.790000000000006, 0.00, 62.790000000000006, 'USD',
    170, 2, 170
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    170, 170, 6, 'Auto-generated',
    21, 'USD', 2.99, 0.00, 62.790000000000006
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    170, '2024-10-31', 1, 0
);
    
    
----- SALE NUMBER: 171 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (171, 3, '2024-11-01', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (171, 171, 6, 9);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    171, NULL, 'USD', 26.910000000000004, 26.910000000000004, 26.910000000000004,
    '2', '2024-11-01', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    171, '2024-11-01', 26.910000000000004, 0.00, 26.910000000000004, 'USD',
    171, 3, 171
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    171, 171, 6, 'Auto-generated',
    9, 'USD', 2.99, 0.00, 26.910000000000004
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    171, '2024-11-01', 2, 0
);
    
    
----- SALE NUMBER: 172 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (172, 3, '2024-11-02', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (172, 172, 0, 23);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    172, NULL, 'USD', 68.77000000000001, 68.77000000000001, 68.77000000000001,
    '2', '2024-11-02', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    172, '2024-11-02', 68.77000000000001, 0.00, 68.77000000000001, 'USD',
    172, 3, 172
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    172, 172, 0, 'Auto-generated',
    23, 'USD', 2.99, 0.00, 68.77000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    172, '2024-11-02', 2, 0
);
    
    
----- SALE NUMBER: 173 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (173, 3, '2024-11-03', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (173, 173, 3, 40);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    173, NULL, 'USD', 199.60000000000002, 199.60000000000002, 199.60000000000002,
    '2', '2024-11-03', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    173, '2024-11-03', 199.60000000000002, 0.00, 199.60000000000002, 'USD',
    173, 3, 173
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    173, 173, 3, 'Auto-generated',
    40, 'USD', 4.99, 0.00, 199.60000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    173, '2024-11-03', 2, 0
);
    
    
----- SALE NUMBER: 174 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (174, 4, '2024-11-04', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (174, 174, 7, 35);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    174, NULL, 'USD', 139.65, 139.65, 139.65,
    '2', '2024-11-04', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    174, '2024-11-04', 139.65, 0.00, 139.65, 'USD',
    174, 4, 174
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    174, 174, 7, 'Auto-generated',
    35, 'USD', 3.99, 0.00, 139.65
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    174, '2024-11-04', 3, 0
);
    
    
----- SALE NUMBER: 175 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (175, 4, '2024-11-05', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (175, 175, 5, 50);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    175, NULL, 'USD', 174.5, 174.5, 174.5,
    '2', '2024-11-05', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    175, '2024-11-05', 174.5, 0.00, 174.5, 'USD',
    175, 4, 175
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    175, 175, 5, 'Auto-generated',
    50, 'USD', 3.49, 0.00, 174.5
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    175, '2024-11-05', 3, 0
);
    
    
----- SALE NUMBER: 176 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (176, 3, '2024-11-06', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (176, 176, 3, 24);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    176, NULL, 'USD', 119.76, 119.76, 119.76,
    '2', '2024-11-06', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    176, '2024-11-06', 119.76, 0.00, 119.76, 'USD',
    176, 3, 176
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    176, 176, 3, 'Auto-generated',
    24, 'USD', 4.99, 0.00, 119.76
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    176, '2024-11-06', 2, 0
);
    
    
----- SALE NUMBER: 177 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (177, 1, '2024-11-07', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (177, 177, 2, 50);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    177, NULL, 'USD', 174.5, 174.5, 174.5,
    '2', '2024-11-07', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    177, '2024-11-07', 174.5, 0.00, 174.5, 'USD',
    177, 1, 177
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    177, 177, 2, 'Auto-generated',
    50, 'USD', 3.49, 0.00, 174.5
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    177, '2024-11-07', 0, 0
);
    
    
----- SALE NUMBER: 178 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (178, 1, '2024-11-08', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (178, 178, 3, 31);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    178, NULL, 'USD', 154.69, 154.69, 154.69,
    '2', '2024-11-08', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    178, '2024-11-08', 154.69, 0.00, 154.69, 'USD',
    178, 1, 178
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    178, 178, 3, 'Auto-generated',
    31, 'USD', 4.99, 0.00, 154.69
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    178, '2024-11-08', 0, 0
);
    
    
----- SALE NUMBER: 179 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (179, 4, '2024-11-09', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (179, 179, 3, 46);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    179, NULL, 'USD', 229.54000000000002, 229.54000000000002, 229.54000000000002,
    '2', '2024-11-09', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    179, '2024-11-09', 229.54000000000002, 0.00, 229.54000000000002, 'USD',
    179, 4, 179
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    179, 179, 3, 'Auto-generated',
    46, 'USD', 4.99, 0.00, 229.54000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    179, '2024-11-09', 3, 0
);
    
    
----- SALE NUMBER: 180 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (180, 2, '2024-11-10', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (180, 180, 0, 11);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    180, NULL, 'USD', 32.89, 32.89, 32.89,
    '2', '2024-11-10', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    180, '2024-11-10', 32.89, 0.00, 32.89, 'USD',
    180, 2, 180
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    180, 180, 0, 'Auto-generated',
    11, 'USD', 2.99, 0.00, 32.89
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    180, '2024-11-10', 1, 0
);
    
    
----- SALE NUMBER: 181 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (181, 1, '2024-11-11', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (181, 181, 7, 4);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    181, NULL, 'USD', 15.96, 15.96, 15.96,
    '2', '2024-11-11', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    181, '2024-11-11', 15.96, 0.00, 15.96, 'USD',
    181, 1, 181
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    181, 181, 7, 'Auto-generated',
    4, 'USD', 3.99, 0.00, 15.96
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    181, '2024-11-11', 0, 0
);
    
    
----- SALE NUMBER: 182 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (182, 3, '2024-11-12', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (182, 182, 4, 50);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    182, NULL, 'USD', 174.5, 174.5, 174.5,
    '2', '2024-11-12', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    182, '2024-11-12', 174.5, 0.00, 174.5, 'USD',
    182, 3, 182
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    182, 182, 4, 'Auto-generated',
    50, 'USD', 3.49, 0.00, 174.5
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    182, '2024-11-12', 2, 0
);
    
    
----- SALE NUMBER: 183 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (183, 1, '2024-11-13', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (183, 183, 1, 21);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    183, NULL, 'USD', 83.79, 83.79, 83.79,
    '2', '2024-11-13', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    183, '2024-11-13', 83.79, 0.00, 83.79, 'USD',
    183, 1, 183
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    183, 183, 1, 'Auto-generated',
    21, 'USD', 3.99, 0.00, 83.79
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    183, '2024-11-13', 0, 0
);
    
    
----- SALE NUMBER: 184 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (184, 3, '2024-11-14', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (184, 184, 8, 38);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    184, NULL, 'USD', 132.62, 132.62, 132.62,
    '2', '2024-11-14', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    184, '2024-11-14', 132.62, 0.00, 132.62, 'USD',
    184, 3, 184
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    184, 184, 8, 'Auto-generated',
    38, 'USD', 3.49, 0.00, 132.62
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    184, '2024-11-14', 2, 0
);
    
    
----- SALE NUMBER: 185 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (185, 3, '2024-11-15', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (185, 185, 4, 34);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    185, NULL, 'USD', 118.66000000000001, 118.66000000000001, 118.66000000000001,
    '2', '2024-11-15', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    185, '2024-11-15', 118.66000000000001, 0.00, 118.66000000000001, 'USD',
    185, 3, 185
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    185, 185, 4, 'Auto-generated',
    34, 'USD', 3.49, 0.00, 118.66000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    185, '2024-11-15', 2, 0
);
    
    
----- SALE NUMBER: 186 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (186, 2, '2024-11-16', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (186, 186, 4, 41);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    186, NULL, 'USD', 143.09, 143.09, 143.09,
    '2', '2024-11-16', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    186, '2024-11-16', 143.09, 0.00, 143.09, 'USD',
    186, 2, 186
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    186, 186, 4, 'Auto-generated',
    41, 'USD', 3.49, 0.00, 143.09
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    186, '2024-11-16', 1, 0
);
    
    
----- SALE NUMBER: 187 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (187, 2, '2024-11-17', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (187, 187, 7, 13);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    187, NULL, 'USD', 51.870000000000005, 51.870000000000005, 51.870000000000005,
    '2', '2024-11-17', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    187, '2024-11-17', 51.870000000000005, 0.00, 51.870000000000005, 'USD',
    187, 2, 187
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    187, 187, 7, 'Auto-generated',
    13, 'USD', 3.99, 0.00, 51.870000000000005
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    187, '2024-11-17', 1, 0
);
    
    
----- SALE NUMBER: 188 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (188, 2, '2024-11-18', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (188, 188, 3, 42);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    188, NULL, 'USD', 209.58, 209.58, 209.58,
    '2', '2024-11-18', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    188, '2024-11-18', 209.58, 0.00, 209.58, 'USD',
    188, 2, 188
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    188, 188, 3, 'Auto-generated',
    42, 'USD', 4.99, 0.00, 209.58
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    188, '2024-11-18', 1, 0
);
    
    
----- SALE NUMBER: 189 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (189, 3, '2024-11-19', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (189, 189, 8, 11);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    189, NULL, 'USD', 38.39, 38.39, 38.39,
    '2', '2024-11-19', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    189, '2024-11-19', 38.39, 0.00, 38.39, 'USD',
    189, 3, 189
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    189, 189, 8, 'Auto-generated',
    11, 'USD', 3.49, 0.00, 38.39
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    189, '2024-11-19', 2, 0
);
    
    
----- SALE NUMBER: 190 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (190, 4, '2024-11-20', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (190, 190, 5, 22);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    190, NULL, 'USD', 76.78, 76.78, 76.78,
    '2', '2024-11-20', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    190, '2024-11-20', 76.78, 0.00, 76.78, 'USD',
    190, 4, 190
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    190, 190, 5, 'Auto-generated',
    22, 'USD', 3.49, 0.00, 76.78
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    190, '2024-11-20', 3, 0
);
    
    
----- SALE NUMBER: 191 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (191, 2, '2024-11-21', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (191, 191, 7, 8);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    191, NULL, 'USD', 31.92, 31.92, 31.92,
    '2', '2024-11-21', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    191, '2024-11-21', 31.92, 0.00, 31.92, 'USD',
    191, 2, 191
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    191, 191, 7, 'Auto-generated',
    8, 'USD', 3.99, 0.00, 31.92
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    191, '2024-11-21', 1, 0
);
    
    
----- SALE NUMBER: 192 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (192, 4, '2024-11-22', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (192, 192, 8, 45);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    192, NULL, 'USD', 157.05, 157.05, 157.05,
    '2', '2024-11-22', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    192, '2024-11-22', 157.05, 0.00, 157.05, 'USD',
    192, 4, 192
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    192, 192, 8, 'Auto-generated',
    45, 'USD', 3.49, 0.00, 157.05
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    192, '2024-11-22', 3, 0
);
    
    
----- SALE NUMBER: 193 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (193, 2, '2024-11-23', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (193, 193, 0, 35);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    193, NULL, 'USD', 104.65, 104.65, 104.65,
    '2', '2024-11-23', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    193, '2024-11-23', 104.65, 0.00, 104.65, 'USD',
    193, 2, 193
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    193, 193, 0, 'Auto-generated',
    35, 'USD', 2.99, 0.00, 104.65
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    193, '2024-11-23', 1, 0
);
    
    
----- SALE NUMBER: 194 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (194, 3, '2024-11-24', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (194, 194, 5, 21);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    194, NULL, 'USD', 73.29, 73.29, 73.29,
    '2', '2024-11-24', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    194, '2024-11-24', 73.29, 0.00, 73.29, 'USD',
    194, 3, 194
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    194, 194, 5, 'Auto-generated',
    21, 'USD', 3.49, 0.00, 73.29
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    194, '2024-11-24', 2, 0
);
    
    
----- SALE NUMBER: 195 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (195, 3, '2024-11-25', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (195, 195, 8, 23);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    195, NULL, 'USD', 80.27000000000001, 80.27000000000001, 80.27000000000001,
    '2', '2024-11-25', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    195, '2024-11-25', 80.27000000000001, 0.00, 80.27000000000001, 'USD',
    195, 3, 195
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    195, 195, 8, 'Auto-generated',
    23, 'USD', 3.49, 0.00, 80.27000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    195, '2024-11-25', 2, 0
);
    
    
----- SALE NUMBER: 196 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (196, 3, '2024-11-26', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (196, 196, 8, 25);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    196, NULL, 'USD', 87.25, 87.25, 87.25,
    '2', '2024-11-26', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    196, '2024-11-26', 87.25, 0.00, 87.25, 'USD',
    196, 3, 196
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    196, 196, 8, 'Auto-generated',
    25, 'USD', 3.49, 0.00, 87.25
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    196, '2024-11-26', 2, 0
);
    
    
----- SALE NUMBER: 197 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (197, 2, '2024-11-27', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (197, 197, 8, 1);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    197, NULL, 'USD', 3.49, 3.49, 3.49,
    '2', '2024-11-27', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    197, '2024-11-27', 3.49, 0.00, 3.49, 'USD',
    197, 2, 197
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    197, 197, 8, 'Auto-generated',
    1, 'USD', 3.49, 0.00, 3.49
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    197, '2024-11-27', 1, 0
);
    
    
----- SALE NUMBER: 198 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (198, 3, '2024-11-28', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (198, 198, 7, 31);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    198, NULL, 'USD', 123.69000000000001, 123.69000000000001, 123.69000000000001,
    '2', '2024-11-28', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    198, '2024-11-28', 123.69000000000001, 0.00, 123.69000000000001, 'USD',
    198, 3, 198
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    198, 198, 7, 'Auto-generated',
    31, 'USD', 3.99, 0.00, 123.69000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    198, '2024-11-28', 2, 0
);
    
    
----- SALE NUMBER: 199 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (199, 4, '2024-11-29', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (199, 199, 8, 14);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    199, NULL, 'USD', 48.86, 48.86, 48.86,
    '2', '2024-11-29', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    199, '2024-11-29', 48.86, 0.00, 48.86, 'USD',
    199, 4, 199
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    199, 199, 8, 'Auto-generated',
    14, 'USD', 3.49, 0.00, 48.86
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    199, '2024-11-29', 3, 0
);
    
    
----- SALE NUMBER: 200 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (200, 3, '2024-11-30', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (200, 200, 6, 16);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    200, NULL, 'USD', 47.84, 47.84, 47.84,
    '2', '2024-11-30', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    200, '2024-11-30', 47.84, 0.00, 47.84, 'USD',
    200, 3, 200
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    200, 200, 6, 'Auto-generated',
    16, 'USD', 2.99, 0.00, 47.84
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    200, '2024-11-30', 2, 0
);
    
    
----- SALE NUMBER: 201 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (201, 2, '2024-12-01', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (201, 201, 5, 49);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    201, NULL, 'USD', 171.01000000000002, 171.01000000000002, 171.01000000000002,
    '2', '2024-12-01', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    201, '2024-12-01', 171.01000000000002, 0.00, 171.01000000000002, 'USD',
    201, 2, 201
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    201, 201, 5, 'Auto-generated',
    49, 'USD', 3.49, 0.00, 171.01000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    201, '2024-12-01', 1, 0
);
    
    
----- SALE NUMBER: 202 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (202, 2, '2024-12-02', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (202, 202, 1, 24);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    202, NULL, 'USD', 95.76, 95.76, 95.76,
    '2', '2024-12-02', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    202, '2024-12-02', 95.76, 0.00, 95.76, 'USD',
    202, 2, 202
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    202, 202, 1, 'Auto-generated',
    24, 'USD', 3.99, 0.00, 95.76
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    202, '2024-12-02', 1, 0
);
    
    
----- SALE NUMBER: 203 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (203, 4, '2024-12-03', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (203, 203, 3, 8);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    203, NULL, 'USD', 39.92, 39.92, 39.92,
    '2', '2024-12-03', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    203, '2024-12-03', 39.92, 0.00, 39.92, 'USD',
    203, 4, 203
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    203, 203, 3, 'Auto-generated',
    8, 'USD', 4.99, 0.00, 39.92
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    203, '2024-12-03', 3, 0
);
    
    
----- SALE NUMBER: 204 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (204, 3, '2024-12-04', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (204, 204, 3, 49);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    204, NULL, 'USD', 244.51000000000002, 244.51000000000002, 244.51000000000002,
    '2', '2024-12-04', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    204, '2024-12-04', 244.51000000000002, 0.00, 244.51000000000002, 'USD',
    204, 3, 204
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    204, 204, 3, 'Auto-generated',
    49, 'USD', 4.99, 0.00, 244.51000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    204, '2024-12-04', 2, 0
);
    
    
----- SALE NUMBER: 205 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (205, 4, '2024-12-05', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (205, 205, 8, 29);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    205, NULL, 'USD', 101.21000000000001, 101.21000000000001, 101.21000000000001,
    '2', '2024-12-05', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    205, '2024-12-05', 101.21000000000001, 0.00, 101.21000000000001, 'USD',
    205, 4, 205
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    205, 205, 8, 'Auto-generated',
    29, 'USD', 3.49, 0.00, 101.21000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    205, '2024-12-05', 3, 0
);
    
    
----- SALE NUMBER: 206 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (206, 4, '2024-12-06', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (206, 206, 4, 7);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    206, NULL, 'USD', 24.43, 24.43, 24.43,
    '2', '2024-12-06', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    206, '2024-12-06', 24.43, 0.00, 24.43, 'USD',
    206, 4, 206
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    206, 206, 4, 'Auto-generated',
    7, 'USD', 3.49, 0.00, 24.43
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    206, '2024-12-06', 3, 0
);
    
    
----- SALE NUMBER: 207 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (207, 2, '2024-12-07', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (207, 207, 6, 8);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    207, NULL, 'USD', 23.92, 23.92, 23.92,
    '2', '2024-12-07', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    207, '2024-12-07', 23.92, 0.00, 23.92, 'USD',
    207, 2, 207
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    207, 207, 6, 'Auto-generated',
    8, 'USD', 2.99, 0.00, 23.92
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    207, '2024-12-07', 1, 0
);
    
    
----- SALE NUMBER: 208 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (208, 2, '2024-12-08', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (208, 208, 3, 17);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    208, NULL, 'USD', 84.83, 84.83, 84.83,
    '2', '2024-12-08', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    208, '2024-12-08', 84.83, 0.00, 84.83, 'USD',
    208, 2, 208
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    208, 208, 3, 'Auto-generated',
    17, 'USD', 4.99, 0.00, 84.83
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    208, '2024-12-08', 1, 0
);
    
    
----- SALE NUMBER: 209 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (209, 4, '2024-12-09', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (209, 209, 5, 48);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    209, NULL, 'USD', 167.52, 167.52, 167.52,
    '2', '2024-12-09', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    209, '2024-12-09', 167.52, 0.00, 167.52, 'USD',
    209, 4, 209
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    209, 209, 5, 'Auto-generated',
    48, 'USD', 3.49, 0.00, 167.52
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    209, '2024-12-09', 3, 0
);
    
    
----- SALE NUMBER: 210 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (210, 2, '2024-12-10', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (210, 210, 3, 25);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    210, NULL, 'USD', 124.75, 124.75, 124.75,
    '2', '2024-12-10', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    210, '2024-12-10', 124.75, 0.00, 124.75, 'USD',
    210, 2, 210
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    210, 210, 3, 'Auto-generated',
    25, 'USD', 4.99, 0.00, 124.75
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    210, '2024-12-10', 1, 0
);
    
    
----- SALE NUMBER: 211 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (211, 3, '2024-12-11', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (211, 211, 3, 29);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    211, NULL, 'USD', 144.71, 144.71, 144.71,
    '2', '2024-12-11', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    211, '2024-12-11', 144.71, 0.00, 144.71, 'USD',
    211, 3, 211
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    211, 211, 3, 'Auto-generated',
    29, 'USD', 4.99, 0.00, 144.71
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    211, '2024-12-11', 2, 0
);
    
    
----- SALE NUMBER: 212 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (212, 2, '2024-12-12', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (212, 212, 3, 41);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    212, NULL, 'USD', 204.59, 204.59, 204.59,
    '2', '2024-12-12', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    212, '2024-12-12', 204.59, 0.00, 204.59, 'USD',
    212, 2, 212
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    212, 212, 3, 'Auto-generated',
    41, 'USD', 4.99, 0.00, 204.59
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    212, '2024-12-12', 1, 0
);
    
    
----- SALE NUMBER: 213 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (213, 1, '2024-12-13', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (213, 213, 7, 22);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    213, NULL, 'USD', 87.78, 87.78, 87.78,
    '2', '2024-12-13', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    213, '2024-12-13', 87.78, 0.00, 87.78, 'USD',
    213, 1, 213
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    213, 213, 7, 'Auto-generated',
    22, 'USD', 3.99, 0.00, 87.78
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    213, '2024-12-13', 0, 0
);
    
    
----- SALE NUMBER: 214 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (214, 4, '2024-12-14', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (214, 214, 3, 34);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    214, NULL, 'USD', 169.66, 169.66, 169.66,
    '2', '2024-12-14', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    214, '2024-12-14', 169.66, 0.00, 169.66, 'USD',
    214, 4, 214
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    214, 214, 3, 'Auto-generated',
    34, 'USD', 4.99, 0.00, 169.66
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    214, '2024-12-14', 3, 0
);
    
    
----- SALE NUMBER: 215 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (215, 1, '2024-12-15', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (215, 215, 2, 32);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    215, NULL, 'USD', 111.68, 111.68, 111.68,
    '2', '2024-12-15', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    215, '2024-12-15', 111.68, 0.00, 111.68, 'USD',
    215, 1, 215
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    215, 215, 2, 'Auto-generated',
    32, 'USD', 3.49, 0.00, 111.68
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    215, '2024-12-15', 0, 0
);
    
    
----- SALE NUMBER: 216 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (216, 3, '2024-12-16', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (216, 216, 7, 47);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    216, NULL, 'USD', 187.53, 187.53, 187.53,
    '2', '2024-12-16', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    216, '2024-12-16', 187.53, 0.00, 187.53, 'USD',
    216, 3, 216
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    216, 216, 7, 'Auto-generated',
    47, 'USD', 3.99, 0.00, 187.53
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    216, '2024-12-16', 2, 0
);
    
    
----- SALE NUMBER: 217 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (217, 4, '2024-12-17', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (217, 217, 1, 34);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    217, NULL, 'USD', 135.66, 135.66, 135.66,
    '2', '2024-12-17', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    217, '2024-12-17', 135.66, 0.00, 135.66, 'USD',
    217, 4, 217
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    217, 217, 1, 'Auto-generated',
    34, 'USD', 3.99, 0.00, 135.66
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    217, '2024-12-17', 3, 0
);
    
    
----- SALE NUMBER: 218 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (218, 3, '2024-12-18', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (218, 218, 8, 42);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    218, NULL, 'USD', 146.58, 146.58, 146.58,
    '2', '2024-12-18', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    218, '2024-12-18', 146.58, 0.00, 146.58, 'USD',
    218, 3, 218
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    218, 218, 8, 'Auto-generated',
    42, 'USD', 3.49, 0.00, 146.58
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    218, '2024-12-18', 2, 0
);
    
    
----- SALE NUMBER: 219 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (219, 1, '2024-12-19', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (219, 219, 3, 4);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    219, NULL, 'USD', 19.96, 19.96, 19.96,
    '2', '2024-12-19', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    219, '2024-12-19', 19.96, 0.00, 19.96, 'USD',
    219, 1, 219
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    219, 219, 3, 'Auto-generated',
    4, 'USD', 4.99, 0.00, 19.96
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    219, '2024-12-19', 0, 0
);
    
    
----- SALE NUMBER: 220 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (220, 3, '2024-12-20', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (220, 220, 0, 28);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    220, NULL, 'USD', 83.72, 83.72, 83.72,
    '2', '2024-12-20', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    220, '2024-12-20', 83.72, 0.00, 83.72, 'USD',
    220, 3, 220
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    220, 220, 0, 'Auto-generated',
    28, 'USD', 2.99, 0.00, 83.72
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    220, '2024-12-20', 2, 0
);
    
    
----- SALE NUMBER: 221 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (221, 3, '2024-12-21', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (221, 221, 1, 31);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    221, NULL, 'USD', 123.69000000000001, 123.69000000000001, 123.69000000000001,
    '2', '2024-12-21', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    221, '2024-12-21', 123.69000000000001, 0.00, 123.69000000000001, 'USD',
    221, 3, 221
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    221, 221, 1, 'Auto-generated',
    31, 'USD', 3.99, 0.00, 123.69000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    221, '2024-12-21', 2, 0
);
    
    
----- SALE NUMBER: 222 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (222, 4, '2024-12-22', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (222, 222, 2, 36);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    222, NULL, 'USD', 125.64000000000001, 125.64000000000001, 125.64000000000001,
    '2', '2024-12-22', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    222, '2024-12-22', 125.64000000000001, 0.00, 125.64000000000001, 'USD',
    222, 4, 222
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    222, 222, 2, 'Auto-generated',
    36, 'USD', 3.49, 0.00, 125.64000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    222, '2024-12-22', 3, 0
);
    
    
----- SALE NUMBER: 223 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (223, 1, '2024-12-23', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (223, 223, 5, 11);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    223, NULL, 'USD', 38.39, 38.39, 38.39,
    '2', '2024-12-23', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    223, '2024-12-23', 38.39, 0.00, 38.39, 'USD',
    223, 1, 223
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    223, 223, 5, 'Auto-generated',
    11, 'USD', 3.49, 0.00, 38.39
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    223, '2024-12-23', 0, 0
);
    
    
----- SALE NUMBER: 224 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (224, 1, '2024-12-24', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (224, 224, 3, 47);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    224, NULL, 'USD', 234.53, 234.53, 234.53,
    '2', '2024-12-24', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    224, '2024-12-24', 234.53, 0.00, 234.53, 'USD',
    224, 1, 224
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    224, 224, 3, 'Auto-generated',
    47, 'USD', 4.99, 0.00, 234.53
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    224, '2024-12-24', 0, 0
);
    
    
----- SALE NUMBER: 225 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (225, 3, '2024-12-25', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (225, 225, 5, 24);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    225, NULL, 'USD', 83.76, 83.76, 83.76,
    '2', '2024-12-25', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    225, '2024-12-25', 83.76, 0.00, 83.76, 'USD',
    225, 3, 225
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    225, 225, 5, 'Auto-generated',
    24, 'USD', 3.49, 0.00, 83.76
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    225, '2024-12-25', 2, 0
);
    
    
----- SALE NUMBER: 226 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (226, 3, '2024-12-26', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (226, 226, 0, 31);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    226, NULL, 'USD', 92.69000000000001, 92.69000000000001, 92.69000000000001,
    '2', '2024-12-26', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    226, '2024-12-26', 92.69000000000001, 0.00, 92.69000000000001, 'USD',
    226, 3, 226
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    226, 226, 0, 'Auto-generated',
    31, 'USD', 2.99, 0.00, 92.69000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    226, '2024-12-26', 2, 0
);
    
    
----- SALE NUMBER: 227 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (227, 1, '2024-12-27', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (227, 227, 1, 46);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    227, NULL, 'USD', 183.54000000000002, 183.54000000000002, 183.54000000000002,
    '2', '2024-12-27', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    227, '2024-12-27', 183.54000000000002, 0.00, 183.54000000000002, 'USD',
    227, 1, 227
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    227, 227, 1, 'Auto-generated',
    46, 'USD', 3.99, 0.00, 183.54000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    227, '2024-12-27', 0, 0
);
    
    
----- SALE NUMBER: 228 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (228, 3, '2024-12-28', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (228, 228, 2, 47);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    228, NULL, 'USD', 164.03, 164.03, 164.03,
    '2', '2024-12-28', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    228, '2024-12-28', 164.03, 0.00, 164.03, 'USD',
    228, 3, 228
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    228, 228, 2, 'Auto-generated',
    47, 'USD', 3.49, 0.00, 164.03
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    228, '2024-12-28', 2, 0
);
    
    
----- SALE NUMBER: 229 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (229, 2, '2024-12-29', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (229, 229, 3, 25);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    229, NULL, 'USD', 124.75, 124.75, 124.75,
    '2', '2024-12-29', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    229, '2024-12-29', 124.75, 0.00, 124.75, 'USD',
    229, 2, 229
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    229, 229, 3, 'Auto-generated',
    25, 'USD', 4.99, 0.00, 124.75
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    229, '2024-12-29', 1, 0
);
    
    
----- SALE NUMBER: 230 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (230, 2, '2024-12-30', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (230, 230, 1, 20);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    230, NULL, 'USD', 79.80000000000001, 79.80000000000001, 79.80000000000001,
    '2', '2024-12-30', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    230, '2024-12-30', 79.80000000000001, 0.00, 79.80000000000001, 'USD',
    230, 2, 230
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    230, 230, 1, 'Auto-generated',
    20, 'USD', 3.99, 0.00, 79.80000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    230, '2024-12-30', 1, 0
);
    
    
----- SALE NUMBER: 231 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (231, 4, '2024-12-31', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (231, 231, 3, 16);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    231, NULL, 'USD', 79.84, 79.84, 79.84,
    '2', '2024-12-31', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    231, '2024-12-31', 79.84, 0.00, 79.84, 'USD',
    231, 4, 231
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    231, 231, 3, 'Auto-generated',
    16, 'USD', 4.99, 0.00, 79.84
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    231, '2024-12-31', 3, 0
);
    
    
----- SALE NUMBER: 232 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (232, 2, '2025-01-01', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (232, 232, 1, 1);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    232, NULL, 'USD', 3.99, 3.99, 3.99,
    '2', '2025-01-01', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    232, '2025-01-01', 3.99, 0.00, 3.99, 'USD',
    232, 2, 232
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    232, 232, 1, 'Auto-generated',
    1, 'USD', 3.99, 0.00, 3.99
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    232, '2025-01-01', 1, 0
);
    
    
----- SALE NUMBER: 233 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (233, 1, '2025-01-02', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (233, 233, 5, 24);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    233, NULL, 'USD', 83.76, 83.76, 83.76,
    '2', '2025-01-02', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    233, '2025-01-02', 83.76, 0.00, 83.76, 'USD',
    233, 1, 233
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    233, 233, 5, 'Auto-generated',
    24, 'USD', 3.49, 0.00, 83.76
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    233, '2025-01-02', 0, 0
);
    
    
----- SALE NUMBER: 234 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (234, 2, '2025-01-03', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (234, 234, 2, 37);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    234, NULL, 'USD', 129.13, 129.13, 129.13,
    '2', '2025-01-03', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    234, '2025-01-03', 129.13, 0.00, 129.13, 'USD',
    234, 2, 234
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    234, 234, 2, 'Auto-generated',
    37, 'USD', 3.49, 0.00, 129.13
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    234, '2025-01-03', 1, 0
);
    
    
----- SALE NUMBER: 235 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (235, 1, '2025-01-04', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (235, 235, 4, 13);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    235, NULL, 'USD', 45.370000000000005, 45.370000000000005, 45.370000000000005,
    '2', '2025-01-04', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    235, '2025-01-04', 45.370000000000005, 0.00, 45.370000000000005, 'USD',
    235, 1, 235
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    235, 235, 4, 'Auto-generated',
    13, 'USD', 3.49, 0.00, 45.370000000000005
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    235, '2025-01-04', 0, 0
);
    
    
----- SALE NUMBER: 236 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (236, 4, '2025-01-05', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (236, 236, 7, 2);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    236, NULL, 'USD', 7.98, 7.98, 7.98,
    '2', '2025-01-05', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    236, '2025-01-05', 7.98, 0.00, 7.98, 'USD',
    236, 4, 236
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    236, 236, 7, 'Auto-generated',
    2, 'USD', 3.99, 0.00, 7.98
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    236, '2025-01-05', 3, 0
);
    
    
----- SALE NUMBER: 237 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (237, 3, '2025-01-06', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (237, 237, 5, 41);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    237, NULL, 'USD', 143.09, 143.09, 143.09,
    '2', '2025-01-06', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    237, '2025-01-06', 143.09, 0.00, 143.09, 'USD',
    237, 3, 237
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    237, 237, 5, 'Auto-generated',
    41, 'USD', 3.49, 0.00, 143.09
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    237, '2025-01-06', 2, 0
);
    
    
----- SALE NUMBER: 238 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (238, 4, '2025-01-07', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (238, 238, 6, 6);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    238, NULL, 'USD', 17.94, 17.94, 17.94,
    '2', '2025-01-07', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    238, '2025-01-07', 17.94, 0.00, 17.94, 'USD',
    238, 4, 238
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    238, 238, 6, 'Auto-generated',
    6, 'USD', 2.99, 0.00, 17.94
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    238, '2025-01-07', 3, 0
);
    
    
----- SALE NUMBER: 239 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (239, 1, '2025-01-08', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (239, 239, 5, 3);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    239, NULL, 'USD', 10.47, 10.47, 10.47,
    '2', '2025-01-08', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    239, '2025-01-08', 10.47, 0.00, 10.47, 'USD',
    239, 1, 239
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    239, 239, 5, 'Auto-generated',
    3, 'USD', 3.49, 0.00, 10.47
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    239, '2025-01-08', 0, 0
);
    
    
----- SALE NUMBER: 240 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (240, 3, '2025-01-09', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (240, 240, 7, 40);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    240, NULL, 'USD', 159.60000000000002, 159.60000000000002, 159.60000000000002,
    '2', '2025-01-09', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    240, '2025-01-09', 159.60000000000002, 0.00, 159.60000000000002, 'USD',
    240, 3, 240
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    240, 240, 7, 'Auto-generated',
    40, 'USD', 3.99, 0.00, 159.60000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    240, '2025-01-09', 2, 0
);
    
    
----- SALE NUMBER: 241 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (241, 3, '2025-01-10', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (241, 241, 6, 13);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    241, NULL, 'USD', 38.870000000000005, 38.870000000000005, 38.870000000000005,
    '2', '2025-01-10', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    241, '2025-01-10', 38.870000000000005, 0.00, 38.870000000000005, 'USD',
    241, 3, 241
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    241, 241, 6, 'Auto-generated',
    13, 'USD', 2.99, 0.00, 38.870000000000005
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    241, '2025-01-10', 2, 0
);
    
    
----- SALE NUMBER: 242 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (242, 4, '2025-01-11', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (242, 242, 7, 23);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    242, NULL, 'USD', 91.77000000000001, 91.77000000000001, 91.77000000000001,
    '2', '2025-01-11', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    242, '2025-01-11', 91.77000000000001, 0.00, 91.77000000000001, 'USD',
    242, 4, 242
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    242, 242, 7, 'Auto-generated',
    23, 'USD', 3.99, 0.00, 91.77000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    242, '2025-01-11', 3, 0
);
    
    
----- SALE NUMBER: 243 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (243, 2, '2025-01-12', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (243, 243, 2, 31);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    243, NULL, 'USD', 108.19000000000001, 108.19000000000001, 108.19000000000001,
    '2', '2025-01-12', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    243, '2025-01-12', 108.19000000000001, 0.00, 108.19000000000001, 'USD',
    243, 2, 243
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    243, 243, 2, 'Auto-generated',
    31, 'USD', 3.49, 0.00, 108.19000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    243, '2025-01-12', 1, 0
);
    
    
----- SALE NUMBER: 244 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (244, 3, '2025-01-13', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (244, 244, 6, 16);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    244, NULL, 'USD', 47.84, 47.84, 47.84,
    '2', '2025-01-13', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    244, '2025-01-13', 47.84, 0.00, 47.84, 'USD',
    244, 3, 244
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    244, 244, 6, 'Auto-generated',
    16, 'USD', 2.99, 0.00, 47.84
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    244, '2025-01-13', 2, 0
);
    
    
----- SALE NUMBER: 245 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (245, 2, '2025-01-14', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (245, 245, 4, 41);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    245, NULL, 'USD', 143.09, 143.09, 143.09,
    '2', '2025-01-14', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    245, '2025-01-14', 143.09, 0.00, 143.09, 'USD',
    245, 2, 245
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    245, 245, 4, 'Auto-generated',
    41, 'USD', 3.49, 0.00, 143.09
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    245, '2025-01-14', 1, 0
);
    
    
----- SALE NUMBER: 246 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (246, 4, '2025-01-15', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (246, 246, 1, 29);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    246, NULL, 'USD', 115.71000000000001, 115.71000000000001, 115.71000000000001,
    '2', '2025-01-15', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    246, '2025-01-15', 115.71000000000001, 0.00, 115.71000000000001, 'USD',
    246, 4, 246
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    246, 246, 1, 'Auto-generated',
    29, 'USD', 3.99, 0.00, 115.71000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    246, '2025-01-15', 3, 0
);
    
    
----- SALE NUMBER: 247 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (247, 3, '2025-01-16', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (247, 247, 1, 40);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    247, NULL, 'USD', 159.60000000000002, 159.60000000000002, 159.60000000000002,
    '2', '2025-01-16', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    247, '2025-01-16', 159.60000000000002, 0.00, 159.60000000000002, 'USD',
    247, 3, 247
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    247, 247, 1, 'Auto-generated',
    40, 'USD', 3.99, 0.00, 159.60000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    247, '2025-01-16', 2, 0
);
    
    
----- SALE NUMBER: 248 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (248, 2, '2025-01-17', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (248, 248, 7, 33);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    248, NULL, 'USD', 131.67000000000002, 131.67000000000002, 131.67000000000002,
    '2', '2025-01-17', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    248, '2025-01-17', 131.67000000000002, 0.00, 131.67000000000002, 'USD',
    248, 2, 248
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    248, 248, 7, 'Auto-generated',
    33, 'USD', 3.99, 0.00, 131.67000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    248, '2025-01-17', 1, 0
);
    
    
----- SALE NUMBER: 249 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (249, 2, '2025-01-18', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (249, 249, 6, 6);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    249, NULL, 'USD', 17.94, 17.94, 17.94,
    '2', '2025-01-18', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    249, '2025-01-18', 17.94, 0.00, 17.94, 'USD',
    249, 2, 249
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    249, 249, 6, 'Auto-generated',
    6, 'USD', 2.99, 0.00, 17.94
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    249, '2025-01-18', 1, 0
);
    
    
----- SALE NUMBER: 250 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (250, 4, '2025-01-19', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (250, 250, 3, 8);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    250, NULL, 'USD', 39.92, 39.92, 39.92,
    '2', '2025-01-19', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    250, '2025-01-19', 39.92, 0.00, 39.92, 'USD',
    250, 4, 250
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    250, 250, 3, 'Auto-generated',
    8, 'USD', 4.99, 0.00, 39.92
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    250, '2025-01-19', 3, 0
);
    
    
----- SALE NUMBER: 251 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (251, 4, '2025-01-20', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (251, 251, 5, 4);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    251, NULL, 'USD', 13.96, 13.96, 13.96,
    '2', '2025-01-20', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    251, '2025-01-20', 13.96, 0.00, 13.96, 'USD',
    251, 4, 251
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    251, 251, 5, 'Auto-generated',
    4, 'USD', 3.49, 0.00, 13.96
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    251, '2025-01-20', 3, 0
);
    
    
----- SALE NUMBER: 252 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (252, 3, '2025-01-21', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (252, 252, 3, 41);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    252, NULL, 'USD', 204.59, 204.59, 204.59,
    '2', '2025-01-21', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    252, '2025-01-21', 204.59, 0.00, 204.59, 'USD',
    252, 3, 252
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    252, 252, 3, 'Auto-generated',
    41, 'USD', 4.99, 0.00, 204.59
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    252, '2025-01-21', 2, 0
);
    
    
----- SALE NUMBER: 253 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (253, 2, '2025-01-22', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (253, 253, 5, 21);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    253, NULL, 'USD', 73.29, 73.29, 73.29,
    '2', '2025-01-22', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    253, '2025-01-22', 73.29, 0.00, 73.29, 'USD',
    253, 2, 253
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    253, 253, 5, 'Auto-generated',
    21, 'USD', 3.49, 0.00, 73.29
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    253, '2025-01-22', 1, 0
);
    
    
----- SALE NUMBER: 254 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (254, 4, '2025-01-23', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (254, 254, 5, 11);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    254, NULL, 'USD', 38.39, 38.39, 38.39,
    '2', '2025-01-23', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    254, '2025-01-23', 38.39, 0.00, 38.39, 'USD',
    254, 4, 254
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    254, 254, 5, 'Auto-generated',
    11, 'USD', 3.49, 0.00, 38.39
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    254, '2025-01-23', 3, 0
);
    
    
----- SALE NUMBER: 255 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (255, 2, '2025-01-24', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (255, 255, 1, 1);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    255, NULL, 'USD', 3.99, 3.99, 3.99,
    '2', '2025-01-24', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    255, '2025-01-24', 3.99, 0.00, 3.99, 'USD',
    255, 2, 255
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    255, 255, 1, 'Auto-generated',
    1, 'USD', 3.99, 0.00, 3.99
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    255, '2025-01-24', 1, 0
);
    
    
----- SALE NUMBER: 256 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (256, 4, '2025-01-25', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (256, 256, 6, 43);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    256, NULL, 'USD', 128.57000000000002, 128.57000000000002, 128.57000000000002,
    '2', '2025-01-25', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    256, '2025-01-25', 128.57000000000002, 0.00, 128.57000000000002, 'USD',
    256, 4, 256
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    256, 256, 6, 'Auto-generated',
    43, 'USD', 2.99, 0.00, 128.57000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    256, '2025-01-25', 3, 0
);
    
    
----- SALE NUMBER: 257 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (257, 3, '2025-01-26', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (257, 257, 8, 21);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    257, NULL, 'USD', 73.29, 73.29, 73.29,
    '2', '2025-01-26', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    257, '2025-01-26', 73.29, 0.00, 73.29, 'USD',
    257, 3, 257
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    257, 257, 8, 'Auto-generated',
    21, 'USD', 3.49, 0.00, 73.29
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    257, '2025-01-26', 2, 0
);
    
    
----- SALE NUMBER: 258 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (258, 4, '2025-01-27', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (258, 258, 0, 31);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    258, NULL, 'USD', 92.69000000000001, 92.69000000000001, 92.69000000000001,
    '2', '2025-01-27', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    258, '2025-01-27', 92.69000000000001, 0.00, 92.69000000000001, 'USD',
    258, 4, 258
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    258, 258, 0, 'Auto-generated',
    31, 'USD', 2.99, 0.00, 92.69000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    258, '2025-01-27', 3, 0
);
    
    
----- SALE NUMBER: 259 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (259, 1, '2025-01-28', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (259, 259, 4, 14);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    259, NULL, 'USD', 48.86, 48.86, 48.86,
    '2', '2025-01-28', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    259, '2025-01-28', 48.86, 0.00, 48.86, 'USD',
    259, 1, 259
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    259, 259, 4, 'Auto-generated',
    14, 'USD', 3.49, 0.00, 48.86
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    259, '2025-01-28', 0, 0
);
    
    
----- SALE NUMBER: 260 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (260, 4, '2025-01-29', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (260, 260, 7, 48);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    260, NULL, 'USD', 191.52, 191.52, 191.52,
    '2', '2025-01-29', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    260, '2025-01-29', 191.52, 0.00, 191.52, 'USD',
    260, 4, 260
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    260, 260, 7, 'Auto-generated',
    48, 'USD', 3.99, 0.00, 191.52
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    260, '2025-01-29', 3, 0
);
    
    
----- SALE NUMBER: 261 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (261, 2, '2025-01-30', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (261, 261, 5, 35);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    261, NULL, 'USD', 122.15, 122.15, 122.15,
    '2', '2025-01-30', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    261, '2025-01-30', 122.15, 0.00, 122.15, 'USD',
    261, 2, 261
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    261, 261, 5, 'Auto-generated',
    35, 'USD', 3.49, 0.00, 122.15
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    261, '2025-01-30', 1, 0
);
    
    
----- SALE NUMBER: 262 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (262, 3, '2025-01-31', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (262, 262, 2, 27);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    262, NULL, 'USD', 94.23, 94.23, 94.23,
    '2', '2025-01-31', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    262, '2025-01-31', 94.23, 0.00, 94.23, 'USD',
    262, 3, 262
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    262, 262, 2, 'Auto-generated',
    27, 'USD', 3.49, 0.00, 94.23
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    262, '2025-01-31', 2, 0
);
    
    
----- SALE NUMBER: 263 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (263, 4, '2025-02-01', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (263, 263, 2, 24);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    263, NULL, 'USD', 83.76, 83.76, 83.76,
    '2', '2025-02-01', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    263, '2025-02-01', 83.76, 0.00, 83.76, 'USD',
    263, 4, 263
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    263, 263, 2, 'Auto-generated',
    24, 'USD', 3.49, 0.00, 83.76
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    263, '2025-02-01', 3, 0
);
    
    
----- SALE NUMBER: 264 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (264, 2, '2025-02-02', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (264, 264, 3, 29);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    264, NULL, 'USD', 144.71, 144.71, 144.71,
    '2', '2025-02-02', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    264, '2025-02-02', 144.71, 0.00, 144.71, 'USD',
    264, 2, 264
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    264, 264, 3, 'Auto-generated',
    29, 'USD', 4.99, 0.00, 144.71
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    264, '2025-02-02', 1, 0
);
    
    
----- SALE NUMBER: 265 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (265, 4, '2025-02-03', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (265, 265, 4, 49);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    265, NULL, 'USD', 171.01000000000002, 171.01000000000002, 171.01000000000002,
    '2', '2025-02-03', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    265, '2025-02-03', 171.01000000000002, 0.00, 171.01000000000002, 'USD',
    265, 4, 265
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    265, 265, 4, 'Auto-generated',
    49, 'USD', 3.49, 0.00, 171.01000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    265, '2025-02-03', 3, 0
);
    
    
----- SALE NUMBER: 266 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (266, 1, '2025-02-04', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (266, 266, 8, 24);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    266, NULL, 'USD', 83.76, 83.76, 83.76,
    '2', '2025-02-04', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    266, '2025-02-04', 83.76, 0.00, 83.76, 'USD',
    266, 1, 266
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    266, 266, 8, 'Auto-generated',
    24, 'USD', 3.49, 0.00, 83.76
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    266, '2025-02-04', 0, 0
);
    
    
----- SALE NUMBER: 267 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (267, 4, '2025-02-05', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (267, 267, 3, 9);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    267, NULL, 'USD', 44.910000000000004, 44.910000000000004, 44.910000000000004,
    '2', '2025-02-05', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    267, '2025-02-05', 44.910000000000004, 0.00, 44.910000000000004, 'USD',
    267, 4, 267
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    267, 267, 3, 'Auto-generated',
    9, 'USD', 4.99, 0.00, 44.910000000000004
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    267, '2025-02-05', 3, 0
);
    
    
----- SALE NUMBER: 268 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (268, 4, '2025-02-06', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (268, 268, 1, 32);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    268, NULL, 'USD', 127.68, 127.68, 127.68,
    '2', '2025-02-06', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    268, '2025-02-06', 127.68, 0.00, 127.68, 'USD',
    268, 4, 268
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    268, 268, 1, 'Auto-generated',
    32, 'USD', 3.99, 0.00, 127.68
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    268, '2025-02-06', 3, 0
);
    
    
----- SALE NUMBER: 269 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (269, 1, '2025-02-07', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (269, 269, 3, 8);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    269, NULL, 'USD', 39.92, 39.92, 39.92,
    '2', '2025-02-07', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    269, '2025-02-07', 39.92, 0.00, 39.92, 'USD',
    269, 1, 269
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    269, 269, 3, 'Auto-generated',
    8, 'USD', 4.99, 0.00, 39.92
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    269, '2025-02-07', 0, 0
);
    
    
----- SALE NUMBER: 270 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (270, 3, '2025-02-08', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (270, 270, 3, 38);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    270, NULL, 'USD', 189.62, 189.62, 189.62,
    '2', '2025-02-08', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    270, '2025-02-08', 189.62, 0.00, 189.62, 'USD',
    270, 3, 270
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    270, 270, 3, 'Auto-generated',
    38, 'USD', 4.99, 0.00, 189.62
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    270, '2025-02-08', 2, 0
);
    
    
----- SALE NUMBER: 271 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (271, 4, '2025-02-09', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (271, 271, 8, 9);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    271, NULL, 'USD', 31.410000000000004, 31.410000000000004, 31.410000000000004,
    '2', '2025-02-09', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    271, '2025-02-09', 31.410000000000004, 0.00, 31.410000000000004, 'USD',
    271, 4, 271
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    271, 271, 8, 'Auto-generated',
    9, 'USD', 3.49, 0.00, 31.410000000000004
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    271, '2025-02-09', 3, 0
);
    
    
----- SALE NUMBER: 272 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (272, 1, '2025-02-10', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (272, 272, 8, 23);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    272, NULL, 'USD', 80.27000000000001, 80.27000000000001, 80.27000000000001,
    '2', '2025-02-10', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    272, '2025-02-10', 80.27000000000001, 0.00, 80.27000000000001, 'USD',
    272, 1, 272
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    272, 272, 8, 'Auto-generated',
    23, 'USD', 3.49, 0.00, 80.27000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    272, '2025-02-10', 0, 0
);
    
    
----- SALE NUMBER: 273 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (273, 4, '2025-02-11', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (273, 273, 2, 1);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    273, NULL, 'USD', 3.49, 3.49, 3.49,
    '2', '2025-02-11', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    273, '2025-02-11', 3.49, 0.00, 3.49, 'USD',
    273, 4, 273
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    273, 273, 2, 'Auto-generated',
    1, 'USD', 3.49, 0.00, 3.49
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    273, '2025-02-11', 3, 0
);
    
    
----- SALE NUMBER: 274 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (274, 1, '2025-02-12', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (274, 274, 4, 14);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    274, NULL, 'USD', 48.86, 48.86, 48.86,
    '2', '2025-02-12', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    274, '2025-02-12', 48.86, 0.00, 48.86, 'USD',
    274, 1, 274
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    274, 274, 4, 'Auto-generated',
    14, 'USD', 3.49, 0.00, 48.86
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    274, '2025-02-12', 0, 0
);
    
    
----- SALE NUMBER: 275 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (275, 2, '2025-02-13', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (275, 275, 2, 28);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    275, NULL, 'USD', 97.72, 97.72, 97.72,
    '2', '2025-02-13', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    275, '2025-02-13', 97.72, 0.00, 97.72, 'USD',
    275, 2, 275
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    275, 275, 2, 'Auto-generated',
    28, 'USD', 3.49, 0.00, 97.72
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    275, '2025-02-13', 1, 0
);
    
    
----- SALE NUMBER: 276 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (276, 3, '2025-02-14', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (276, 276, 2, 46);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    276, NULL, 'USD', 160.54000000000002, 160.54000000000002, 160.54000000000002,
    '2', '2025-02-14', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    276, '2025-02-14', 160.54000000000002, 0.00, 160.54000000000002, 'USD',
    276, 3, 276
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    276, 276, 2, 'Auto-generated',
    46, 'USD', 3.49, 0.00, 160.54000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    276, '2025-02-14', 2, 0
);
    
    
----- SALE NUMBER: 277 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (277, 3, '2025-02-15', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (277, 277, 7, 43);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    277, NULL, 'USD', 171.57000000000002, 171.57000000000002, 171.57000000000002,
    '2', '2025-02-15', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    277, '2025-02-15', 171.57000000000002, 0.00, 171.57000000000002, 'USD',
    277, 3, 277
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    277, 277, 7, 'Auto-generated',
    43, 'USD', 3.99, 0.00, 171.57000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    277, '2025-02-15', 2, 0
);
    
    
----- SALE NUMBER: 278 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (278, 3, '2025-02-16', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (278, 278, 3, 42);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    278, NULL, 'USD', 209.58, 209.58, 209.58,
    '2', '2025-02-16', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    278, '2025-02-16', 209.58, 0.00, 209.58, 'USD',
    278, 3, 278
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    278, 278, 3, 'Auto-generated',
    42, 'USD', 4.99, 0.00, 209.58
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    278, '2025-02-16', 2, 0
);
    
    
----- SALE NUMBER: 279 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (279, 3, '2025-02-17', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (279, 279, 7, 8);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    279, NULL, 'USD', 31.92, 31.92, 31.92,
    '2', '2025-02-17', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    279, '2025-02-17', 31.92, 0.00, 31.92, 'USD',
    279, 3, 279
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    279, 279, 7, 'Auto-generated',
    8, 'USD', 3.99, 0.00, 31.92
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    279, '2025-02-17', 2, 0
);
    
    
----- SALE NUMBER: 280 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (280, 1, '2025-02-18', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (280, 280, 6, 20);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    280, NULL, 'USD', 59.800000000000004, 59.800000000000004, 59.800000000000004,
    '2', '2025-02-18', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    280, '2025-02-18', 59.800000000000004, 0.00, 59.800000000000004, 'USD',
    280, 1, 280
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    280, 280, 6, 'Auto-generated',
    20, 'USD', 2.99, 0.00, 59.800000000000004
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    280, '2025-02-18', 0, 0
);
    
    
----- SALE NUMBER: 281 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (281, 1, '2025-02-19', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (281, 281, 5, 12);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    281, NULL, 'USD', 41.88, 41.88, 41.88,
    '2', '2025-02-19', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    281, '2025-02-19', 41.88, 0.00, 41.88, 'USD',
    281, 1, 281
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    281, 281, 5, 'Auto-generated',
    12, 'USD', 3.49, 0.00, 41.88
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    281, '2025-02-19', 0, 0
);
    
    
----- SALE NUMBER: 282 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (282, 4, '2025-02-20', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (282, 282, 7, 15);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    282, NULL, 'USD', 59.85, 59.85, 59.85,
    '2', '2025-02-20', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    282, '2025-02-20', 59.85, 0.00, 59.85, 'USD',
    282, 4, 282
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    282, 282, 7, 'Auto-generated',
    15, 'USD', 3.99, 0.00, 59.85
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    282, '2025-02-20', 3, 0
);
    
    
----- SALE NUMBER: 283 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (283, 4, '2025-02-21', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (283, 283, 7, 42);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    283, NULL, 'USD', 167.58, 167.58, 167.58,
    '2', '2025-02-21', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    283, '2025-02-21', 167.58, 0.00, 167.58, 'USD',
    283, 4, 283
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    283, 283, 7, 'Auto-generated',
    42, 'USD', 3.99, 0.00, 167.58
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    283, '2025-02-21', 3, 0
);
    
    
----- SALE NUMBER: 284 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (284, 4, '2025-02-22', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (284, 284, 5, 31);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    284, NULL, 'USD', 108.19000000000001, 108.19000000000001, 108.19000000000001,
    '2', '2025-02-22', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    284, '2025-02-22', 108.19000000000001, 0.00, 108.19000000000001, 'USD',
    284, 4, 284
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    284, 284, 5, 'Auto-generated',
    31, 'USD', 3.49, 0.00, 108.19000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    284, '2025-02-22', 3, 0
);
    
    
----- SALE NUMBER: 285 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (285, 4, '2025-02-23', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (285, 285, 1, 33);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    285, NULL, 'USD', 131.67000000000002, 131.67000000000002, 131.67000000000002,
    '2', '2025-02-23', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    285, '2025-02-23', 131.67000000000002, 0.00, 131.67000000000002, 'USD',
    285, 4, 285
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    285, 285, 1, 'Auto-generated',
    33, 'USD', 3.99, 0.00, 131.67000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    285, '2025-02-23', 3, 0
);
    
    
----- SALE NUMBER: 286 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (286, 2, '2025-02-24', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (286, 286, 3, 10);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    286, NULL, 'USD', 49.900000000000006, 49.900000000000006, 49.900000000000006,
    '2', '2025-02-24', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    286, '2025-02-24', 49.900000000000006, 0.00, 49.900000000000006, 'USD',
    286, 2, 286
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    286, 286, 3, 'Auto-generated',
    10, 'USD', 4.99, 0.00, 49.900000000000006
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    286, '2025-02-24', 1, 0
);
    
    
----- SALE NUMBER: 287 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (287, 3, '2025-02-25', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (287, 287, 6, 24);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    287, NULL, 'USD', 71.76, 71.76, 71.76,
    '2', '2025-02-25', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    287, '2025-02-25', 71.76, 0.00, 71.76, 'USD',
    287, 3, 287
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    287, 287, 6, 'Auto-generated',
    24, 'USD', 2.99, 0.00, 71.76
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    287, '2025-02-25', 2, 0
);
    
    
----- SALE NUMBER: 288 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (288, 2, '2025-02-26', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (288, 288, 5, 34);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    288, NULL, 'USD', 118.66000000000001, 118.66000000000001, 118.66000000000001,
    '2', '2025-02-26', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    288, '2025-02-26', 118.66000000000001, 0.00, 118.66000000000001, 'USD',
    288, 2, 288
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    288, 288, 5, 'Auto-generated',
    34, 'USD', 3.49, 0.00, 118.66000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    288, '2025-02-26', 1, 0
);
    
    
----- SALE NUMBER: 289 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (289, 4, '2025-02-27', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (289, 289, 6, 8);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    289, NULL, 'USD', 23.92, 23.92, 23.92,
    '2', '2025-02-27', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    289, '2025-02-27', 23.92, 0.00, 23.92, 'USD',
    289, 4, 289
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    289, 289, 6, 'Auto-generated',
    8, 'USD', 2.99, 0.00, 23.92
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    289, '2025-02-27', 3, 0
);
    
    
----- SALE NUMBER: 290 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (290, 1, '2025-02-28', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (290, 290, 1, 34);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    290, NULL, 'USD', 135.66, 135.66, 135.66,
    '2', '2025-02-28', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    290, '2025-02-28', 135.66, 0.00, 135.66, 'USD',
    290, 1, 290
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    290, 290, 1, 'Auto-generated',
    34, 'USD', 3.99, 0.00, 135.66
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    290, '2025-02-28', 0, 0
);
    
    
----- SALE NUMBER: 291 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (291, 4, '2025-03-01', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (291, 291, 0, 13);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    291, NULL, 'USD', 38.870000000000005, 38.870000000000005, 38.870000000000005,
    '2', '2025-03-01', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    291, '2025-03-01', 38.870000000000005, 0.00, 38.870000000000005, 'USD',
    291, 4, 291
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    291, 291, 0, 'Auto-generated',
    13, 'USD', 2.99, 0.00, 38.870000000000005
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    291, '2025-03-01', 3, 0
);
    
    
----- SALE NUMBER: 292 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (292, 2, '2025-03-02', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (292, 292, 0, 30);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    292, NULL, 'USD', 89.7, 89.7, 89.7,
    '2', '2025-03-02', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    292, '2025-03-02', 89.7, 0.00, 89.7, 'USD',
    292, 2, 292
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    292, 292, 0, 'Auto-generated',
    30, 'USD', 2.99, 0.00, 89.7
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    292, '2025-03-02', 1, 0
);
    
    
----- SALE NUMBER: 293 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (293, 4, '2025-03-03', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (293, 293, 3, 40);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    293, NULL, 'USD', 199.60000000000002, 199.60000000000002, 199.60000000000002,
    '2', '2025-03-03', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    293, '2025-03-03', 199.60000000000002, 0.00, 199.60000000000002, 'USD',
    293, 4, 293
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    293, 293, 3, 'Auto-generated',
    40, 'USD', 4.99, 0.00, 199.60000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    293, '2025-03-03', 3, 0
);
    
    
----- SALE NUMBER: 294 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (294, 4, '2025-03-04', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (294, 294, 2, 30);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    294, NULL, 'USD', 104.7, 104.7, 104.7,
    '2', '2025-03-04', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    294, '2025-03-04', 104.7, 0.00, 104.7, 'USD',
    294, 4, 294
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    294, 294, 2, 'Auto-generated',
    30, 'USD', 3.49, 0.00, 104.7
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    294, '2025-03-04', 3, 0
);
    
    
----- SALE NUMBER: 295 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (295, 2, '2025-03-05', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (295, 295, 4, 16);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    295, NULL, 'USD', 55.84, 55.84, 55.84,
    '2', '2025-03-05', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    295, '2025-03-05', 55.84, 0.00, 55.84, 'USD',
    295, 2, 295
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    295, 295, 4, 'Auto-generated',
    16, 'USD', 3.49, 0.00, 55.84
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    295, '2025-03-05', 1, 0
);
    
    
----- SALE NUMBER: 296 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (296, 4, '2025-03-06', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (296, 296, 3, 43);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    296, NULL, 'USD', 214.57000000000002, 214.57000000000002, 214.57000000000002,
    '2', '2025-03-06', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    296, '2025-03-06', 214.57000000000002, 0.00, 214.57000000000002, 'USD',
    296, 4, 296
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    296, 296, 3, 'Auto-generated',
    43, 'USD', 4.99, 0.00, 214.57000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    296, '2025-03-06', 3, 0
);
    
    
----- SALE NUMBER: 297 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (297, 1, '2025-03-07', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (297, 297, 3, 46);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    297, NULL, 'USD', 229.54000000000002, 229.54000000000002, 229.54000000000002,
    '2', '2025-03-07', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    297, '2025-03-07', 229.54000000000002, 0.00, 229.54000000000002, 'USD',
    297, 1, 297
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    297, 297, 3, 'Auto-generated',
    46, 'USD', 4.99, 0.00, 229.54000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    297, '2025-03-07', 0, 0
);
    
    
----- SALE NUMBER: 298 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (298, 2, '2025-03-08', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (298, 298, 0, 8);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    298, NULL, 'USD', 23.92, 23.92, 23.92,
    '2', '2025-03-08', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    298, '2025-03-08', 23.92, 0.00, 23.92, 'USD',
    298, 2, 298
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    298, 298, 0, 'Auto-generated',
    8, 'USD', 2.99, 0.00, 23.92
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    298, '2025-03-08', 1, 0
);
    
    
----- SALE NUMBER: 299 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (299, 4, '2025-03-09', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (299, 299, 7, 44);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    299, NULL, 'USD', 175.56, 175.56, 175.56,
    '2', '2025-03-09', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    299, '2025-03-09', 175.56, 0.00, 175.56, 'USD',
    299, 4, 299
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    299, 299, 7, 'Auto-generated',
    44, 'USD', 3.99, 0.00, 175.56
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    299, '2025-03-09', 3, 0
);
    
    
----- SALE NUMBER: 300 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (300, 4, '2025-03-10', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (300, 300, 3, 22);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    300, NULL, 'USD', 109.78, 109.78, 109.78,
    '2', '2025-03-10', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    300, '2025-03-10', 109.78, 0.00, 109.78, 'USD',
    300, 4, 300
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    300, 300, 3, 'Auto-generated',
    22, 'USD', 4.99, 0.00, 109.78
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    300, '2025-03-10', 3, 0
);
    
    
----- SALE NUMBER: 301 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (301, 4, '2025-03-11', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (301, 301, 5, 1);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    301, NULL, 'USD', 3.49, 3.49, 3.49,
    '2', '2025-03-11', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    301, '2025-03-11', 3.49, 0.00, 3.49, 'USD',
    301, 4, 301
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    301, 301, 5, 'Auto-generated',
    1, 'USD', 3.49, 0.00, 3.49
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    301, '2025-03-11', 3, 0
);
    
    
----- SALE NUMBER: 302 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (302, 4, '2025-03-12', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (302, 302, 4, 34);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    302, NULL, 'USD', 118.66000000000001, 118.66000000000001, 118.66000000000001,
    '2', '2025-03-12', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    302, '2025-03-12', 118.66000000000001, 0.00, 118.66000000000001, 'USD',
    302, 4, 302
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    302, 302, 4, 'Auto-generated',
    34, 'USD', 3.49, 0.00, 118.66000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    302, '2025-03-12', 3, 0
);
    
    
----- SALE NUMBER: 303 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (303, 2, '2025-03-13', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (303, 303, 6, 34);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    303, NULL, 'USD', 101.66000000000001, 101.66000000000001, 101.66000000000001,
    '2', '2025-03-13', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    303, '2025-03-13', 101.66000000000001, 0.00, 101.66000000000001, 'USD',
    303, 2, 303
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    303, 303, 6, 'Auto-generated',
    34, 'USD', 2.99, 0.00, 101.66000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    303, '2025-03-13', 1, 0
);
    
    
----- SALE NUMBER: 304 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (304, 3, '2025-03-14', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (304, 304, 5, 36);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    304, NULL, 'USD', 125.64000000000001, 125.64000000000001, 125.64000000000001,
    '2', '2025-03-14', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    304, '2025-03-14', 125.64000000000001, 0.00, 125.64000000000001, 'USD',
    304, 3, 304
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    304, 304, 5, 'Auto-generated',
    36, 'USD', 3.49, 0.00, 125.64000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    304, '2025-03-14', 2, 0
);
    
    
----- SALE NUMBER: 305 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (305, 4, '2025-03-15', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (305, 305, 2, 37);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    305, NULL, 'USD', 129.13, 129.13, 129.13,
    '2', '2025-03-15', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    305, '2025-03-15', 129.13, 0.00, 129.13, 'USD',
    305, 4, 305
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    305, 305, 2, 'Auto-generated',
    37, 'USD', 3.49, 0.00, 129.13
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    305, '2025-03-15', 3, 0
);
    
    
----- SALE NUMBER: 306 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (306, 3, '2025-03-16', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (306, 306, 0, 33);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    306, NULL, 'USD', 98.67, 98.67, 98.67,
    '2', '2025-03-16', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    306, '2025-03-16', 98.67, 0.00, 98.67, 'USD',
    306, 3, 306
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    306, 306, 0, 'Auto-generated',
    33, 'USD', 2.99, 0.00, 98.67
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    306, '2025-03-16', 2, 0
);
    
    
----- SALE NUMBER: 307 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (307, 3, '2025-03-17', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (307, 307, 1, 31);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    307, NULL, 'USD', 123.69000000000001, 123.69000000000001, 123.69000000000001,
    '2', '2025-03-17', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    307, '2025-03-17', 123.69000000000001, 0.00, 123.69000000000001, 'USD',
    307, 3, 307
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    307, 307, 1, 'Auto-generated',
    31, 'USD', 3.99, 0.00, 123.69000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    307, '2025-03-17', 2, 0
);
    
    
----- SALE NUMBER: 308 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (308, 2, '2025-03-18', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (308, 308, 8, 33);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    308, NULL, 'USD', 115.17, 115.17, 115.17,
    '2', '2025-03-18', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    308, '2025-03-18', 115.17, 0.00, 115.17, 'USD',
    308, 2, 308
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    308, 308, 8, 'Auto-generated',
    33, 'USD', 3.49, 0.00, 115.17
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    308, '2025-03-18', 1, 0
);
    
    
----- SALE NUMBER: 309 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (309, 1, '2025-03-19', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (309, 309, 3, 40);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    309, NULL, 'USD', 199.60000000000002, 199.60000000000002, 199.60000000000002,
    '2', '2025-03-19', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    309, '2025-03-19', 199.60000000000002, 0.00, 199.60000000000002, 'USD',
    309, 1, 309
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    309, 309, 3, 'Auto-generated',
    40, 'USD', 4.99, 0.00, 199.60000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    309, '2025-03-19', 0, 0
);
    
    
----- SALE NUMBER: 310 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (310, 4, '2025-03-20', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (310, 310, 3, 13);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    310, NULL, 'USD', 64.87, 64.87, 64.87,
    '2', '2025-03-20', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    310, '2025-03-20', 64.87, 0.00, 64.87, 'USD',
    310, 4, 310
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    310, 310, 3, 'Auto-generated',
    13, 'USD', 4.99, 0.00, 64.87
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    310, '2025-03-20', 3, 0
);
    
    
----- SALE NUMBER: 311 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (311, 3, '2025-03-21', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (311, 311, 2, 44);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    311, NULL, 'USD', 153.56, 153.56, 153.56,
    '2', '2025-03-21', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    311, '2025-03-21', 153.56, 0.00, 153.56, 'USD',
    311, 3, 311
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    311, 311, 2, 'Auto-generated',
    44, 'USD', 3.49, 0.00, 153.56
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    311, '2025-03-21', 2, 0
);
    
    
----- SALE NUMBER: 312 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (312, 3, '2025-03-22', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (312, 312, 7, 23);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    312, NULL, 'USD', 91.77000000000001, 91.77000000000001, 91.77000000000001,
    '2', '2025-03-22', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    312, '2025-03-22', 91.77000000000001, 0.00, 91.77000000000001, 'USD',
    312, 3, 312
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    312, 312, 7, 'Auto-generated',
    23, 'USD', 3.99, 0.00, 91.77000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    312, '2025-03-22', 2, 0
);
    
    
----- SALE NUMBER: 313 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (313, 2, '2025-03-23', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (313, 313, 7, 50);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    313, NULL, 'USD', 199.5, 199.5, 199.5,
    '2', '2025-03-23', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    313, '2025-03-23', 199.5, 0.00, 199.5, 'USD',
    313, 2, 313
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    313, 313, 7, 'Auto-generated',
    50, 'USD', 3.99, 0.00, 199.5
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    313, '2025-03-23', 1, 0
);
    
    
----- SALE NUMBER: 314 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (314, 1, '2025-03-24', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (314, 314, 3, 15);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    314, NULL, 'USD', 74.85000000000001, 74.85000000000001, 74.85000000000001,
    '2', '2025-03-24', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    314, '2025-03-24', 74.85000000000001, 0.00, 74.85000000000001, 'USD',
    314, 1, 314
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    314, 314, 3, 'Auto-generated',
    15, 'USD', 4.99, 0.00, 74.85000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    314, '2025-03-24', 0, 0
);
    
    
----- SALE NUMBER: 315 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (315, 1, '2025-03-25', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (315, 315, 8, 3);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    315, NULL, 'USD', 10.47, 10.47, 10.47,
    '2', '2025-03-25', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    315, '2025-03-25', 10.47, 0.00, 10.47, 'USD',
    315, 1, 315
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    315, 315, 8, 'Auto-generated',
    3, 'USD', 3.49, 0.00, 10.47
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    315, '2025-03-25', 0, 0
);
    
    
----- SALE NUMBER: 316 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (316, 3, '2025-03-26', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (316, 316, 1, 49);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    316, NULL, 'USD', 195.51000000000002, 195.51000000000002, 195.51000000000002,
    '2', '2025-03-26', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    316, '2025-03-26', 195.51000000000002, 0.00, 195.51000000000002, 'USD',
    316, 3, 316
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    316, 316, 1, 'Auto-generated',
    49, 'USD', 3.99, 0.00, 195.51000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    316, '2025-03-26', 2, 0
);
    
    
----- SALE NUMBER: 317 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (317, 1, '2025-03-27', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (317, 317, 4, 1);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    317, NULL, 'USD', 3.49, 3.49, 3.49,
    '2', '2025-03-27', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    317, '2025-03-27', 3.49, 0.00, 3.49, 'USD',
    317, 1, 317
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    317, 317, 4, 'Auto-generated',
    1, 'USD', 3.49, 0.00, 3.49
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    317, '2025-03-27', 0, 0
);
    
    
----- SALE NUMBER: 318 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (318, 4, '2025-03-28', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (318, 318, 6, 19);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    318, NULL, 'USD', 56.81, 56.81, 56.81,
    '2', '2025-03-28', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    318, '2025-03-28', 56.81, 0.00, 56.81, 'USD',
    318, 4, 318
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    318, 318, 6, 'Auto-generated',
    19, 'USD', 2.99, 0.00, 56.81
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    318, '2025-03-28', 3, 0
);
    
    
----- SALE NUMBER: 319 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (319, 2, '2025-03-29', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (319, 319, 4, 37);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    319, NULL, 'USD', 129.13, 129.13, 129.13,
    '2', '2025-03-29', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    319, '2025-03-29', 129.13, 0.00, 129.13, 'USD',
    319, 2, 319
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    319, 319, 4, 'Auto-generated',
    37, 'USD', 3.49, 0.00, 129.13
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    319, '2025-03-29', 1, 0
);
    
    
----- SALE NUMBER: 320 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (320, 2, '2025-03-30', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (320, 320, 8, 44);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    320, NULL, 'USD', 153.56, 153.56, 153.56,
    '2', '2025-03-30', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    320, '2025-03-30', 153.56, 0.00, 153.56, 'USD',
    320, 2, 320
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    320, 320, 8, 'Auto-generated',
    44, 'USD', 3.49, 0.00, 153.56
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    320, '2025-03-30', 1, 0
);
    
    
----- SALE NUMBER: 321 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (321, 2, '2025-03-31', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (321, 321, 2, 30);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    321, NULL, 'USD', 104.7, 104.7, 104.7,
    '2', '2025-03-31', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    321, '2025-03-31', 104.7, 0.00, 104.7, 'USD',
    321, 2, 321
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    321, 321, 2, 'Auto-generated',
    30, 'USD', 3.49, 0.00, 104.7
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    321, '2025-03-31', 1, 0
);
    
    
----- SALE NUMBER: 322 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (322, 1, '2025-04-01', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (322, 322, 8, 21);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    322, NULL, 'USD', 73.29, 73.29, 73.29,
    '2', '2025-04-01', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    322, '2025-04-01', 73.29, 0.00, 73.29, 'USD',
    322, 1, 322
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    322, 322, 8, 'Auto-generated',
    21, 'USD', 3.49, 0.00, 73.29
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    322, '2025-04-01', 0, 0
);
    
    
----- SALE NUMBER: 323 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (323, 3, '2025-04-02', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (323, 323, 0, 41);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    323, NULL, 'USD', 122.59, 122.59, 122.59,
    '2', '2025-04-02', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    323, '2025-04-02', 122.59, 0.00, 122.59, 'USD',
    323, 3, 323
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    323, 323, 0, 'Auto-generated',
    41, 'USD', 2.99, 0.00, 122.59
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    323, '2025-04-02', 2, 0
);
    
    
----- SALE NUMBER: 324 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (324, 1, '2025-04-03', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (324, 324, 5, 49);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    324, NULL, 'USD', 171.01000000000002, 171.01000000000002, 171.01000000000002,
    '2', '2025-04-03', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    324, '2025-04-03', 171.01000000000002, 0.00, 171.01000000000002, 'USD',
    324, 1, 324
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    324, 324, 5, 'Auto-generated',
    49, 'USD', 3.49, 0.00, 171.01000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    324, '2025-04-03', 0, 0
);
    
    
----- SALE NUMBER: 325 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (325, 1, '2025-04-04', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (325, 325, 3, 18);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    325, NULL, 'USD', 89.82000000000001, 89.82000000000001, 89.82000000000001,
    '2', '2025-04-04', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    325, '2025-04-04', 89.82000000000001, 0.00, 89.82000000000001, 'USD',
    325, 1, 325
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    325, 325, 3, 'Auto-generated',
    18, 'USD', 4.99, 0.00, 89.82000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    325, '2025-04-04', 0, 0
);
    
    
----- SALE NUMBER: 326 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (326, 4, '2025-04-05', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (326, 326, 0, 23);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    326, NULL, 'USD', 68.77000000000001, 68.77000000000001, 68.77000000000001,
    '2', '2025-04-05', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    326, '2025-04-05', 68.77000000000001, 0.00, 68.77000000000001, 'USD',
    326, 4, 326
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    326, 326, 0, 'Auto-generated',
    23, 'USD', 2.99, 0.00, 68.77000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    326, '2025-04-05', 3, 0
);
    
    
----- SALE NUMBER: 327 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (327, 3, '2025-04-06', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (327, 327, 7, 22);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    327, NULL, 'USD', 87.78, 87.78, 87.78,
    '2', '2025-04-06', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    327, '2025-04-06', 87.78, 0.00, 87.78, 'USD',
    327, 3, 327
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    327, 327, 7, 'Auto-generated',
    22, 'USD', 3.99, 0.00, 87.78
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    327, '2025-04-06', 2, 0
);
    
    
----- SALE NUMBER: 328 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (328, 4, '2025-04-07', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (328, 328, 6, 40);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    328, NULL, 'USD', 119.60000000000001, 119.60000000000001, 119.60000000000001,
    '2', '2025-04-07', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    328, '2025-04-07', 119.60000000000001, 0.00, 119.60000000000001, 'USD',
    328, 4, 328
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    328, 328, 6, 'Auto-generated',
    40, 'USD', 2.99, 0.00, 119.60000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    328, '2025-04-07', 3, 0
);
    
    
----- SALE NUMBER: 329 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (329, 3, '2025-04-08', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (329, 329, 5, 26);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    329, NULL, 'USD', 90.74000000000001, 90.74000000000001, 90.74000000000001,
    '2', '2025-04-08', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    329, '2025-04-08', 90.74000000000001, 0.00, 90.74000000000001, 'USD',
    329, 3, 329
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    329, 329, 5, 'Auto-generated',
    26, 'USD', 3.49, 0.00, 90.74000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    329, '2025-04-08', 2, 0
);
    
    
----- SALE NUMBER: 330 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (330, 2, '2025-04-09', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (330, 330, 2, 19);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    330, NULL, 'USD', 66.31, 66.31, 66.31,
    '2', '2025-04-09', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    330, '2025-04-09', 66.31, 0.00, 66.31, 'USD',
    330, 2, 330
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    330, 330, 2, 'Auto-generated',
    19, 'USD', 3.49, 0.00, 66.31
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    330, '2025-04-09', 1, 0
);
    
    
----- SALE NUMBER: 331 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (331, 2, '2025-04-10', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (331, 331, 7, 8);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    331, NULL, 'USD', 31.92, 31.92, 31.92,
    '2', '2025-04-10', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    331, '2025-04-10', 31.92, 0.00, 31.92, 'USD',
    331, 2, 331
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    331, 331, 7, 'Auto-generated',
    8, 'USD', 3.99, 0.00, 31.92
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    331, '2025-04-10', 1, 0
);
    
    
----- SALE NUMBER: 332 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (332, 1, '2025-04-11', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (332, 332, 6, 18);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    332, NULL, 'USD', 53.82000000000001, 53.82000000000001, 53.82000000000001,
    '2', '2025-04-11', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    332, '2025-04-11', 53.82000000000001, 0.00, 53.82000000000001, 'USD',
    332, 1, 332
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    332, 332, 6, 'Auto-generated',
    18, 'USD', 2.99, 0.00, 53.82000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    332, '2025-04-11', 0, 0
);
    
    
----- SALE NUMBER: 333 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (333, 3, '2025-04-12', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (333, 333, 2, 21);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    333, NULL, 'USD', 73.29, 73.29, 73.29,
    '2', '2025-04-12', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    333, '2025-04-12', 73.29, 0.00, 73.29, 'USD',
    333, 3, 333
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    333, 333, 2, 'Auto-generated',
    21, 'USD', 3.49, 0.00, 73.29
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    333, '2025-04-12', 2, 0
);
    
    
----- SALE NUMBER: 334 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (334, 4, '2025-04-13', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (334, 334, 8, 44);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    334, NULL, 'USD', 153.56, 153.56, 153.56,
    '2', '2025-04-13', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    334, '2025-04-13', 153.56, 0.00, 153.56, 'USD',
    334, 4, 334
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    334, 334, 8, 'Auto-generated',
    44, 'USD', 3.49, 0.00, 153.56
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    334, '2025-04-13', 3, 0
);
    
    
----- SALE NUMBER: 335 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (335, 3, '2025-04-14', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (335, 335, 7, 23);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    335, NULL, 'USD', 91.77000000000001, 91.77000000000001, 91.77000000000001,
    '2', '2025-04-14', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    335, '2025-04-14', 91.77000000000001, 0.00, 91.77000000000001, 'USD',
    335, 3, 335
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    335, 335, 7, 'Auto-generated',
    23, 'USD', 3.99, 0.00, 91.77000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    335, '2025-04-14', 2, 0
);
    
    
----- SALE NUMBER: 336 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (336, 3, '2025-04-15', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (336, 336, 5, 26);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    336, NULL, 'USD', 90.74000000000001, 90.74000000000001, 90.74000000000001,
    '2', '2025-04-15', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    336, '2025-04-15', 90.74000000000001, 0.00, 90.74000000000001, 'USD',
    336, 3, 336
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    336, 336, 5, 'Auto-generated',
    26, 'USD', 3.49, 0.00, 90.74000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    336, '2025-04-15', 2, 0
);
    
    
----- SALE NUMBER: 337 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (337, 1, '2025-04-16', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (337, 337, 8, 1);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    337, NULL, 'USD', 3.49, 3.49, 3.49,
    '2', '2025-04-16', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    337, '2025-04-16', 3.49, 0.00, 3.49, 'USD',
    337, 1, 337
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    337, 337, 8, 'Auto-generated',
    1, 'USD', 3.49, 0.00, 3.49
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    337, '2025-04-16', 0, 0
);
    
    
----- SALE NUMBER: 338 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (338, 4, '2025-04-17', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (338, 338, 8, 35);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    338, NULL, 'USD', 122.15, 122.15, 122.15,
    '2', '2025-04-17', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    338, '2025-04-17', 122.15, 0.00, 122.15, 'USD',
    338, 4, 338
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    338, 338, 8, 'Auto-generated',
    35, 'USD', 3.49, 0.00, 122.15
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    338, '2025-04-17', 3, 0
);
    
    
----- SALE NUMBER: 339 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (339, 4, '2025-04-18', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (339, 339, 1, 14);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    339, NULL, 'USD', 55.86, 55.86, 55.86,
    '2', '2025-04-18', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    339, '2025-04-18', 55.86, 0.00, 55.86, 'USD',
    339, 4, 339
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    339, 339, 1, 'Auto-generated',
    14, 'USD', 3.99, 0.00, 55.86
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    339, '2025-04-18', 3, 0
);
    
    
----- SALE NUMBER: 340 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (340, 1, '2025-04-19', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (340, 340, 5, 38);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    340, NULL, 'USD', 132.62, 132.62, 132.62,
    '2', '2025-04-19', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    340, '2025-04-19', 132.62, 0.00, 132.62, 'USD',
    340, 1, 340
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    340, 340, 5, 'Auto-generated',
    38, 'USD', 3.49, 0.00, 132.62
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    340, '2025-04-19', 0, 0
);
    
    
----- SALE NUMBER: 341 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (341, 4, '2025-04-20', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (341, 341, 1, 43);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    341, NULL, 'USD', 171.57000000000002, 171.57000000000002, 171.57000000000002,
    '2', '2025-04-20', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    341, '2025-04-20', 171.57000000000002, 0.00, 171.57000000000002, 'USD',
    341, 4, 341
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    341, 341, 1, 'Auto-generated',
    43, 'USD', 3.99, 0.00, 171.57000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    341, '2025-04-20', 3, 0
);
    
    
----- SALE NUMBER: 342 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (342, 3, '2025-04-21', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (342, 342, 7, 9);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    342, NULL, 'USD', 35.910000000000004, 35.910000000000004, 35.910000000000004,
    '2', '2025-04-21', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    342, '2025-04-21', 35.910000000000004, 0.00, 35.910000000000004, 'USD',
    342, 3, 342
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    342, 342, 7, 'Auto-generated',
    9, 'USD', 3.99, 0.00, 35.910000000000004
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    342, '2025-04-21', 2, 0
);
    
    
----- SALE NUMBER: 343 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (343, 2, '2025-04-22', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (343, 343, 5, 19);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    343, NULL, 'USD', 66.31, 66.31, 66.31,
    '2', '2025-04-22', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    343, '2025-04-22', 66.31, 0.00, 66.31, 'USD',
    343, 2, 343
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    343, 343, 5, 'Auto-generated',
    19, 'USD', 3.49, 0.00, 66.31
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    343, '2025-04-22', 1, 0
);
    
    
----- SALE NUMBER: 344 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (344, 3, '2025-04-23', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (344, 344, 7, 18);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    344, NULL, 'USD', 71.82000000000001, 71.82000000000001, 71.82000000000001,
    '2', '2025-04-23', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    344, '2025-04-23', 71.82000000000001, 0.00, 71.82000000000001, 'USD',
    344, 3, 344
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    344, 344, 7, 'Auto-generated',
    18, 'USD', 3.99, 0.00, 71.82000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    344, '2025-04-23', 2, 0
);
    
    
----- SALE NUMBER: 345 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (345, 4, '2025-04-24', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (345, 345, 8, 19);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    345, NULL, 'USD', 66.31, 66.31, 66.31,
    '2', '2025-04-24', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    345, '2025-04-24', 66.31, 0.00, 66.31, 'USD',
    345, 4, 345
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    345, 345, 8, 'Auto-generated',
    19, 'USD', 3.49, 0.00, 66.31
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    345, '2025-04-24', 3, 0
);
    
    
----- SALE NUMBER: 346 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (346, 4, '2025-04-25', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (346, 346, 4, 9);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    346, NULL, 'USD', 31.410000000000004, 31.410000000000004, 31.410000000000004,
    '2', '2025-04-25', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    346, '2025-04-25', 31.410000000000004, 0.00, 31.410000000000004, 'USD',
    346, 4, 346
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    346, 346, 4, 'Auto-generated',
    9, 'USD', 3.49, 0.00, 31.410000000000004
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    346, '2025-04-25', 3, 0
);
    
    
----- SALE NUMBER: 347 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (347, 3, '2025-04-26', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (347, 347, 4, 42);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    347, NULL, 'USD', 146.58, 146.58, 146.58,
    '2', '2025-04-26', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    347, '2025-04-26', 146.58, 0.00, 146.58, 'USD',
    347, 3, 347
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    347, 347, 4, 'Auto-generated',
    42, 'USD', 3.49, 0.00, 146.58
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    347, '2025-04-26', 2, 0
);
    
    
----- SALE NUMBER: 348 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (348, 4, '2025-04-27', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (348, 348, 5, 1);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    348, NULL, 'USD', 3.49, 3.49, 3.49,
    '2', '2025-04-27', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    348, '2025-04-27', 3.49, 0.00, 3.49, 'USD',
    348, 4, 348
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    348, 348, 5, 'Auto-generated',
    1, 'USD', 3.49, 0.00, 3.49
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    348, '2025-04-27', 3, 0
);
    
    
----- SALE NUMBER: 349 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (349, 2, '2025-04-28', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (349, 349, 6, 37);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    349, NULL, 'USD', 110.63000000000001, 110.63000000000001, 110.63000000000001,
    '2', '2025-04-28', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    349, '2025-04-28', 110.63000000000001, 0.00, 110.63000000000001, 'USD',
    349, 2, 349
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    349, 349, 6, 'Auto-generated',
    37, 'USD', 2.99, 0.00, 110.63000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    349, '2025-04-28', 1, 0
);
    
    
----- SALE NUMBER: 350 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (350, 3, '2025-04-29', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (350, 350, 2, 26);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    350, NULL, 'USD', 90.74000000000001, 90.74000000000001, 90.74000000000001,
    '2', '2025-04-29', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    350, '2025-04-29', 90.74000000000001, 0.00, 90.74000000000001, 'USD',
    350, 3, 350
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    350, 350, 2, 'Auto-generated',
    26, 'USD', 3.49, 0.00, 90.74000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    350, '2025-04-29', 2, 0
);
    
    
----- SALE NUMBER: 351 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (351, 4, '2025-04-30', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (351, 351, 2, 44);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    351, NULL, 'USD', 153.56, 153.56, 153.56,
    '2', '2025-04-30', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    351, '2025-04-30', 153.56, 0.00, 153.56, 'USD',
    351, 4, 351
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    351, 351, 2, 'Auto-generated',
    44, 'USD', 3.49, 0.00, 153.56
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    351, '2025-04-30', 3, 0
);
    
    
----- SALE NUMBER: 352 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (352, 4, '2025-05-01', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (352, 352, 6, 4);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    352, NULL, 'USD', 11.96, 11.96, 11.96,
    '2', '2025-05-01', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    352, '2025-05-01', 11.96, 0.00, 11.96, 'USD',
    352, 4, 352
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    352, 352, 6, 'Auto-generated',
    4, 'USD', 2.99, 0.00, 11.96
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    352, '2025-05-01', 3, 0
);
    
    
----- SALE NUMBER: 353 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (353, 3, '2025-05-02', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (353, 353, 0, 22);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    353, NULL, 'USD', 65.78, 65.78, 65.78,
    '2', '2025-05-02', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    353, '2025-05-02', 65.78, 0.00, 65.78, 'USD',
    353, 3, 353
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    353, 353, 0, 'Auto-generated',
    22, 'USD', 2.99, 0.00, 65.78
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    353, '2025-05-02', 2, 0
);
    
    
----- SALE NUMBER: 354 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (354, 3, '2025-05-03', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (354, 354, 7, 35);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    354, NULL, 'USD', 139.65, 139.65, 139.65,
    '2', '2025-05-03', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    354, '2025-05-03', 139.65, 0.00, 139.65, 'USD',
    354, 3, 354
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    354, 354, 7, 'Auto-generated',
    35, 'USD', 3.99, 0.00, 139.65
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    354, '2025-05-03', 2, 0
);
    
    
----- SALE NUMBER: 355 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (355, 3, '2025-05-04', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (355, 355, 8, 49);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    355, NULL, 'USD', 171.01000000000002, 171.01000000000002, 171.01000000000002,
    '2', '2025-05-04', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    355, '2025-05-04', 171.01000000000002, 0.00, 171.01000000000002, 'USD',
    355, 3, 355
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    355, 355, 8, 'Auto-generated',
    49, 'USD', 3.49, 0.00, 171.01000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    355, '2025-05-04', 2, 0
);
    
    
----- SALE NUMBER: 356 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (356, 3, '2025-05-05', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (356, 356, 0, 13);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    356, NULL, 'USD', 38.870000000000005, 38.870000000000005, 38.870000000000005,
    '2', '2025-05-05', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    356, '2025-05-05', 38.870000000000005, 0.00, 38.870000000000005, 'USD',
    356, 3, 356
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    356, 356, 0, 'Auto-generated',
    13, 'USD', 2.99, 0.00, 38.870000000000005
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    356, '2025-05-05', 2, 0
);
    
    
----- SALE NUMBER: 357 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (357, 1, '2025-05-06', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (357, 357, 1, 36);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    357, NULL, 'USD', 143.64000000000001, 143.64000000000001, 143.64000000000001,
    '2', '2025-05-06', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    357, '2025-05-06', 143.64000000000001, 0.00, 143.64000000000001, 'USD',
    357, 1, 357
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    357, 357, 1, 'Auto-generated',
    36, 'USD', 3.99, 0.00, 143.64000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    357, '2025-05-06', 0, 0
);
    
    
----- SALE NUMBER: 358 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (358, 4, '2025-05-07', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (358, 358, 2, 31);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    358, NULL, 'USD', 108.19000000000001, 108.19000000000001, 108.19000000000001,
    '2', '2025-05-07', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    358, '2025-05-07', 108.19000000000001, 0.00, 108.19000000000001, 'USD',
    358, 4, 358
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    358, 358, 2, 'Auto-generated',
    31, 'USD', 3.49, 0.00, 108.19000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    358, '2025-05-07', 3, 0
);
    
    
----- SALE NUMBER: 359 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (359, 3, '2025-05-08', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (359, 359, 6, 23);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    359, NULL, 'USD', 68.77000000000001, 68.77000000000001, 68.77000000000001,
    '2', '2025-05-08', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    359, '2025-05-08', 68.77000000000001, 0.00, 68.77000000000001, 'USD',
    359, 3, 359
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    359, 359, 6, 'Auto-generated',
    23, 'USD', 2.99, 0.00, 68.77000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    359, '2025-05-08', 2, 0
);
    
    
----- SALE NUMBER: 360 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (360, 4, '2025-05-09', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (360, 360, 4, 12);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    360, NULL, 'USD', 41.88, 41.88, 41.88,
    '2', '2025-05-09', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    360, '2025-05-09', 41.88, 0.00, 41.88, 'USD',
    360, 4, 360
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    360, 360, 4, 'Auto-generated',
    12, 'USD', 3.49, 0.00, 41.88
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    360, '2025-05-09', 3, 0
);
    
    
----- SALE NUMBER: 361 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (361, 1, '2025-05-10', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (361, 361, 7, 20);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    361, NULL, 'USD', 79.80000000000001, 79.80000000000001, 79.80000000000001,
    '2', '2025-05-10', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    361, '2025-05-10', 79.80000000000001, 0.00, 79.80000000000001, 'USD',
    361, 1, 361
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    361, 361, 7, 'Auto-generated',
    20, 'USD', 3.99, 0.00, 79.80000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    361, '2025-05-10', 0, 0
);
    
    
----- SALE NUMBER: 362 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (362, 2, '2025-05-11', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (362, 362, 4, 36);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    362, NULL, 'USD', 125.64000000000001, 125.64000000000001, 125.64000000000001,
    '2', '2025-05-11', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    362, '2025-05-11', 125.64000000000001, 0.00, 125.64000000000001, 'USD',
    362, 2, 362
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    362, 362, 4, 'Auto-generated',
    36, 'USD', 3.49, 0.00, 125.64000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    362, '2025-05-11', 1, 0
);
    
    
----- SALE NUMBER: 363 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (363, 4, '2025-05-12', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (363, 363, 0, 21);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    363, NULL, 'USD', 62.790000000000006, 62.790000000000006, 62.790000000000006,
    '2', '2025-05-12', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    363, '2025-05-12', 62.790000000000006, 0.00, 62.790000000000006, 'USD',
    363, 4, 363
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    363, 363, 0, 'Auto-generated',
    21, 'USD', 2.99, 0.00, 62.790000000000006
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    363, '2025-05-12', 3, 0
);
    
    
----- SALE NUMBER: 364 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (364, 1, '2025-05-13', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (364, 364, 2, 23);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    364, NULL, 'USD', 80.27000000000001, 80.27000000000001, 80.27000000000001,
    '2', '2025-05-13', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    364, '2025-05-13', 80.27000000000001, 0.00, 80.27000000000001, 'USD',
    364, 1, 364
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    364, 364, 2, 'Auto-generated',
    23, 'USD', 3.49, 0.00, 80.27000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    364, '2025-05-13', 0, 0
);
    
    
----- SALE NUMBER: 365 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (365, 1, '2025-05-14', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (365, 365, 5, 32);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    365, NULL, 'USD', 111.68, 111.68, 111.68,
    '2', '2025-05-14', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    365, '2025-05-14', 111.68, 0.00, 111.68, 'USD',
    365, 1, 365
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    365, 365, 5, 'Auto-generated',
    32, 'USD', 3.49, 0.00, 111.68
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    365, '2025-05-14', 0, 0
);
    
    