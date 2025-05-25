-- Active: 1745487748000@@localhost@3306@mydb

-- POPULATE USER ROLES
INSERT INTO `mydb`.`user_role` (
    role_id,
    role_description
) VALUES
    (0, 'Admin'),
    (1, 'Customer');

-- POPULATE USERS
INSERT INTO `mydb`.`users` (
    user_id,
    first_name,
    last_name,
    email,
    phone,
    encrypted_pwd,
    registration_date,
    is_active,
    role_id
) VALUES
    (0,  'Admin',     'Admin',     'admin@gmail.com',             '1234567890',    '1jh234567890',     NOW() - INTERVAL 5 DAY, 1, 0),
    (1,  'Luis',      'Garcia',    'luis@gmail.com',              '1234567890',    'eqwe332',          NOW(),                  1, 1),
    (2,  'Juan',      'Perez',     'juan@gmail.com',              '1234567890',    'qweqwejje',        NOW() - INTERVAL 4 DAY, 1, 1),
    (3,  'Maria',     'Rodriguez', 'maria@gmail.com',             '9876543210',    'pwd123xyz',        NOW() - INTERVAL 1 DAY, 1, 1),
    (4,  'Carlos',    'Martinez',  'carlos@gmail.com',            '5554443333',    'abc987def',        NOW() - INTERVAL 2 DAY, 1, 1),
    (5,  'Luis',      'Fernandez', 'luis.fernandez@example.com',  '6667778888',    'fR4nd3zXyz',       NOW() - INTERVAL 6 DAY, 1, 1),
    (6,  'Sofia',     'Gomez',     'sofia.gomez@example.com',     '7778889990',    's0f1aGom3z',       NOW() - INTERVAL 7 DAY, 1, 1),
    (7,  'Diego',     'Ramirez',   'diego.ramirez@example.com',   '8889990001',    'd1Eg0R4m',         NOW() - INTERVAL 8 DAY, 1, 1),
    (8,  'Lucia',     'Diaz',      'lucia.diaz@example.com',      '9990001112',    'lUc14Dy311z',      NOW() - INTERVAL 9 DAY, 1, 1),
    (9,  'Miguel',    'Hernandez', 'miguel.hernandez@example.com','0001112223',    'm1Gu3lH3rn',       NOW() - INTERVAL 10 DAY,1, 1),
    (10, 'Elena',     'Torres',    'elena.torres@example.com',    '1112223334',    'eL3n4T0rr3s',      NOW() - INTERVAL 11 DAY,0, 1),
    (11, 'Javier',    'Lopez',     'javier.lopez@example.com',    '2223334445',    'j4Vi3rL0p',        NOW() - INTERVAL 12 DAY,1, 1),
    (12, 'Ana',       'Morales',   'ana.morales@example.com',     '3334445556',    'An4M0r413s',       NOW() - INTERVAL 13 DAY,1, 1),
    (13, 'Andres',    'Gonzalez',  'andres.gonzalez@example.com', '4445556667',    'Andr3sG',          NOW() - INTERVAL 14 DAY,1, 1),
    (14, 'Valeria',   'Soto',      'valeria.soto@example.com',    '5556667778',    'v4ler1aS',         NOW() - INTERVAL 2 DAY, 1, 1),
    (15, 'Fernando',  'Vega',      'fernando.vega@example.com',   '6667778889',    'Fern4nd0V',        NOW() - INTERVAL 3 DAY, 0, 1),
    (16, 'Gabriela',  'Reyes',     'gabriela.reyes@example.com',  '7778889991',    'GabR3y3s',         NOW() - INTERVAL 4 DAY, 1, 1),
    (17, 'Roberto',   'Ortega',    'roberto.ortega@example.com',  '8889990002',    'Rob0rtO',          NOW() - INTERVAL 5 DAY, 1, 1),
    (18, 'Patricia',  'Ramirez',   'patricia.ramirez@example.com','9990001113',    'PatR4m!',          NOW() - INTERVAL 1 DAY, 1, 1),
    (19, 'Ricardo',   'Castillo',  'ricardo.castillo@example.com','0001112224',    'RicC4st!11o',      NOW(),                  1, 1);

-- POPULATE ADDRESS TYPES
INSERT INTO `mydb`.`address_type` (
    TYPE_ID,
    DESCRIPTION
) VALUES
    (0, 'Home'),
    (1, 'Work'),
    (2, 'Other');

-- POPULATE ZIPCODES
INSERT INTO `mydb`.`zipcode` (
    ZIPCODE,
    CITY,
    STATE,
    COUNTRY
) VALUES
    (28010,  'Madrid',     'Madrid',          'Spain'),
    (33160,  'Miami',      'Florida',         'USA'),
    (33180,  'Orlando',    'Florida',         'USA'),
    (10001,  'New York',   'New York',        'USA'),
    (90001,  'Los Angeles','California',      'USA'),
    (08001,  'Barcelona',  'Catalunya',       'Spain'),
    (10115,  'Berlin',     'Berlin',          'Germany'),
    (75001,  'Paris',      'Île-de-France',   'France'),
    (2000,   'Sydney',     'New South Wales', 'Australia'),
    (110001, 'New Delhi',  'Delhi',           'India'),
    (101000, 'Moscow',     'Moscow',          'Russia');

-- POPULATE ADDRESSES
INSERT INTO `mydb`.`address` (
    ADDRESS_ID,
    TYPE_ID,
    NAME,
    NUMBER,
    ZIPCODE,
    COUNTRY,
    USER_ID
) VALUES
    (0,  0, 'Calle marques de riscal',  '6',     '28010', 'Spain', 1),
    (1,  0, '18101 collins ave',       '18101', '33160', 'USA',   2),
    (2,  0, '20000 E Country Club Dr', '20000', '33180', 'USA',   3),
    (3,  0, '18120 collins ave',       '18120', '33160', 'USA',   4),
    (4,  0, 'Calle Mayor',             '10',    '28010', 'Spain', 5),
    (5,  0, 'Calle Atocha',            '20',    '28010', 'Spain', 6),
    (6,  0, 'Avenida de America',      '30',    '28010', 'Spain', 7),
    (7,  0, 'Calle Serrano',           '40',    '28010', 'Spain', 8),
    (8,  0, 'Calle Alcalá',            '50',    '28010', 'Spain', 9),
    (9,  0, '18150 collins ave',       '18150', '33160', 'USA',  10),
    (10, 0, '18200 collins ave',       '18200', '33160', 'USA',  11),
    (11, 0, '18300 collins ave',       '18300', '33160', 'USA',  12),
    (12, 0, '18400 collins ave',       '18400', '33160', 'USA',  13),
    (13, 0, '18500 collins ave',       '18500', '33160', 'USA',  14),
    (14, 0, '20050 E Country Club Dr', '20050', '33180', 'USA',  15),
    (15, 0, '20100 E Country Club Dr', '20100', '33180', 'USA',  16),
    (16, 0, '20200 E Country Club Dr', '20200', '33180', 'USA',  17),
    (17, 0, '20300 E Country Club Dr', '20300', '33180', 'USA',  18),
    (18, 0, '20400 E Country Club Dr', '20400', '33180', 'USA',  19),
    (19, 1, '123 Broadway',            '123',   '10001', 'USA',   5),
    (20, 1, '456 Hollywood Blvd',      '456',   '90001', 'USA',   6),
    (21, 1, 'Carrer de Balmes',        '7',     '08001', 'Spain', 7),
    (22, 1, 'Unter den Linden',         '5',     '10115', 'Germany',8),
    (23, 1, 'Rue de Rivoli',            '10',    '75001', 'France', 9),
    (24, 1, '200 George Street',        '200',   '2000',  'Australia',10),
    (25, 1, '1 Connaught Place',        '1',     '110001','India', 11),
    (26, 1, 'Red Square',               '1',     '101000','Russia', 12);

-- POPULATE CCPAYMENT TYPES
INSERT INTO `mydb`.`ccpayment_type` (
    CCTYPE,
    DESCRIPTION
) VALUES
    ('0', 'Visa'),
    ('1', 'Mastercard'),
    ('2', 'American Express');

-- POPULATE CCENTRY METHODS
INSERT INTO `mydb`.`ccentry_methd` (
    CCMETHD,
    DESCRIPTION
) VALUES
    ('0', 'Swipe'),
    ('1', 'Chip'),
    ('2', 'Contactless');

-- POPULATE CCPAYMENT CARD
INSERT INTO `mydb`.`ccpayment_card` (
    user_id,
    PAYMENT_TYPE,
    IS_ENCRYPT,
    CARD_NUMBER,
    BANKNAME,
    CCEXPDATE,
    cc_num_seq
) VALUES
    (1,  '0', '0', '1234567890123456', 'Bank of America', '02/28', '238'),
    (2,  '1', '0', '1234567890123456', 'BBVA',            '05/28', '943'),
    (3,  '2', '0', '1234567890123456', 'Bancaribe',       '06/30', '314'),
    (4,  '0', '0', '1234567890123456', 'BFC',             '07/28', '434'),
    (5,  '1', '1', '4485275742308327', 'Santander',       '03/27', '321'),
    (6,  '0', '0', '6011111111111117', 'Chase',           '11/26', '654'),
    (7,  '2', '1', '3530111333300000', 'Citibank',        '08/29', '987'),
    (8,  '1', '0', '5105105105105100', 'Wells Fargo',     '12/28', '123'),
    (9,  '0', '1', '4111111111111111', 'HSBC',            '07/26', '456'),
    (10, '2', '0', '6011000990139424', 'Deutsche Bank',   '10/27', '246'),
    (11, '1', '1', '4539589763663402', 'Credit Suisse',   '09/26', '579'),
    (12, '0', '0', '4485780453233567', 'Credit Suisse',   '04/29', '864'),
    (13, '1', '1', '4916934623016237', 'Barclays',        '06/30', '753'),
    (14, '2', '0', '4556737586899855', 'Capital One',     '02/28', '159'),
    (15, '1', '0', '4716258050958645', 'Santander',       '11/26', '852'),
    (16, '0', '1', '4532015112830366', 'BBVA',            '03/29', '357'),
    (17, '2', '0', '6011111111111117', 'Bank of America', '09/27', '951'),
    (18, '1', '1', '5105105105105100', 'Bancaribe',       '05/28', '258'),
    (19, '0', '0', '3530111333300000', 'BFC',             '07/28', '654');

-- POPULATE UNIT MEASUREMENT
INSERT INTO `mydb`.`unit_measure` (
    METRIC_CODE,
    NAME,
    DESCRIPTION
) VALUES
    ('p', 'Pieces',      NULL),
    ('l', 'Liters',      NULL),
    ('ml','Milliliters', NULL),
    ('g', 'Grams',       NULL),
    ('kg','Kilograms',   NULL);

-- POPULATE SEGMENTS
INSERT INTO `mydb`.`segment` (
    SEGMENT_ID,
    NAME
) VALUES
    (0, 'Confectionery'),
    (1, 'Condiments'),
    (2, 'Food');

-- POPULATE FAMILIES
INSERT INTO `mydb`.`family` (
    FAMILY_ID,
    NAME,
    SEGMENT_ID
) VALUES
    (0, 'Chocolate', 2),
    (1, 'Candy',     2),
    (2, 'Sauces',    2);

-- POPULATE CLASSES
INSERT INTO `mydb`.`class` (
    CLASS_ID,
    NAME,
    FAMILY_ID
) VALUES
    (0, 'Chocolate Bars',   0),
    (1, 'Chocolate Candies',0),
    (2, 'Ketchup',          2);

-- POPULATE CATEGORIES
INSERT INTO `mydb`.`category` (
    CATEGORY_ID,
    NAME,
    CLASS_ID
) VALUES
    (0, 'Chocolate Bars',   0),
    (1, 'Chocolate Candies',1),
    (2, 'Tomato Ketchup',   2);

-- POPULATE SUPPLIERS
INSERT INTO `mydb`.`supplier` (
    SUPPLIER_ID,
    NAME
) VALUES
    (0, 'Hershey'),
    (1, 'Nestle'),
    (2, 'Heinz'),
    (3, 'M&Ms');

-- POPULATE BRANDS
INSERT INTO `mydb`.`brand` (
    BRAND_ID,
    NAME
) VALUES
    (0, 'Hershey'),
    (1, 'Nestle'),
    (2, 'Heinz'),
    (3, 'M&Ms');

-- POPULATE PRODUCTS
INSERT INTO `mydb`.`product` (
    PRODUCT_ID,
    CATEGORY_ID,
    NAME,
    BRAND_ID,
    SUPPLIER_ID,
    SHORT_DESCRIPTION,
    LONG_DESCRIPTION
) VALUES
    (0, '0', 'Milk Chocolate Bars',          0, 0, 'Milk Chocolate Bars',       'Milk Chocolate Bars'),
    (1, '1', 'Chocolate Coated Candies',     1, 1, 'Chocolate Coated Candies',  'Chocolate Coated Candies'),
    (2, '2', 'Tomato Ketchup',               2, 2, 'Tomato Ketchup',            'Tomato Ketchup'),
    (3, '0', 'Hersheys Kisses',              0, 0, 'Classic milk chocolate drops','Iconic teardrop-shaped milk chocolate pieces wrapped in silver foil'),
    (4, '0', 'Hersheys Symphony',            0, 0, 'Creamy milk chocolate bar',  'Smooth and creamy milk chocolate bar with a rich, distinctive taste'),
    (5, '0', 'Hersheys Cookies and Cream',   0, 0, 'White chocolate with cookie bits','White chocolate bar filled with chocolate cookie pieces'),
    (6, '2', 'Heinz Yellow Mustard',         2, 2, 'Classic yellow mustard',    'Traditional yellow mustard perfect for hot dogs and sandwiches'),
    (7, '2', 'Heinz BBQ Sauce',              2, 2, 'Sweet and smoky BBQ sauce', 'Rich barbecue sauce with a perfect blend of sweet and smoky flavors'),
    (8, '2', 'Heinz Mayo',                   2, 2, 'Creamy mayonnaise',         'Smooth and creamy mayonnaise made with high-quality ingredients');

-- POPULATE CURRENCY
INSERT INTO `mydb`.`currency` (
    CURRENCY_ID,
    CURRENCY_CODE,
    DESCRIPTION
) VALUES
    ('USD', 0, 'United States Dollar');

-- POPULATE PRICES
INSERT INTO `mydb`.`price` (
    PRODUCT_ID,
    cost_currency,
    cost_decimal,
    price_currency,
    price_decimal
) VALUES
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
INSERT INTO `mydb`.`contact` (
    CONTACT_ID,
    NAME
) VALUES
    (0, 'Hershey Contact'),
    (1, 'Nestle Contact'),
    (2, 'Heinz Contact'),
    (3, 'M&Ms Contact');

-- POPULATE CCPAYMENT STATES
INSERT INTO `mydb`.`ccpayment_state` (
    CCSTATE,
    DESCRIPTION
) VALUES
    ('0', 'Initiated'),
    ('1', 'Authorized'),
    ('2', 'Captured'),
    ('3', 'Failed');

-- POPULATE CATEGORY ATTRIBUTES
INSERT INTO `mydb`.`category_attributes` (
    CATEGORY_ID,
    ATTRIBUTE_ID,
    NAME,
    DESCRIPTION
) VALUES
    (0, 0, 'Size',         'Size of bar in grams'),
    (0, 1, 'Milk Content', 'Percentage of milk content'),
    (1, 0, 'Color',        'Candy color'),
    (2, 0, 'Spiciness',    'Heat level');

-- POPULATE CATEGORY ATTRVALUES
INSERT INTO `mydb`.`category_attrvalues` (
    CATEGORY_ID,
    ATTRIBUTE_ID,
    ATTRVALUE_ID,
    VALUE,
    DESCRIPTION
) VALUES
    (0, 0, 0, '100', '100 g'),
    (0, 0, 1, '200', '200 g'),
    (0, 1, 0, 'Milk','Standard milk chocolate'),
    (1, 0, 0, 'Red', 'Red-coated candy'),
    (2, 0, 0, 'Mild','Mild spice');

-- POPULATE PRODUCT ATTRVALUES
INSERT INTO `mydb`.`product_attrvalues` (
    PRODUCT_ID,
    CATEGORY_ID,
    ATTRIBUTE_ID,
    ATTRVALUE_ID
) VALUES
    (0, 0, 0, 0),
    (0, 0, 1, 0),
    (1, 1, 0, 0),
    (2, 2, 0, 0);

-- DO NOT RUN THIS, THE PYTHON SCRIPT WILL DO IT

-- -- POPULATE SHOPPING_CART
-- -- INSERT INTO `mydb`.shopping_cart (
-- --     cart_id, user_id, shopping_date, is_paid, is_cancelled
-- -- ) VALUES
-- --     (100, 1, CURDATE(), 1, 0),
-- --     (101, 2, CURDATE(), 0, 0);

-- -- POPULATE SHOPPING_CART_ITEMS
-- -- INSERT INTO `mydb`.shopping_cart_items (
-- --     cart_id, num_seq, product_id, quantity
-- -- ) VALUES
-- --     (100, 1, 0, 2),
-- --     (100, 2, 3, 1),
-- --     (101, 1, 2, 1);

-- -- POPULATE CCPAYMENT
-- -- INSERT INTO `mydb`.ccpayment (
-- --     CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
-- --     CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
-- -- ) VALUES
-- --     (NULL, 'USD', 9.97, 9.97, 9.97, '2', NOW(), 1, 238);

-- -- POPULATE TICKET
-- -- INSERT INTO `mydb`.ticket (
-- --     TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
-- --     PAYMENT_ID, user_id, cart_id
-- -- ) VALUES
-- --     (NOW(), 9.97, 0.00, 9.97, 'USD', 1, 1, 100);

-- -- POPULATE TICKET_ITEM
-- -- INSERT INTO `mydb`.ticket_item (
-- --     TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
-- --     QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
-- -- ) VALUES
-- --     (1, 1, 0, 'Milk Chocolate Bars', 2, 'USD', 2.99, 0.00, 5.98),
-- --     (1, 2, 3, 'Hersheys Kisses',     1, 'USD', 4.99, 0.00, 4.99);

-- -- POPULATE ITEMS_DELIVERY
-- -- INSERT INTO `mydb`.items_delivery (
-- --     ticket_id, delivery_date, address_id, is_delivered
-- -- ) VALUES
-- --     (1, DATE_ADD(CURDATE(), INTERVAL 2 DAY), 0, 0);

----- SALE NUMBER: 1 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (1, 19, '2024-05-21', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (1, 1, 2, 50);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    1, NULL, 'USD', 174.5, 174.5, 174.5,
    '2', '2024-05-21', 19, 654
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    1, '2024-05-21', 174.5, 0.00, 174.5, 'USD',
    1, 19, 1
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    1, 1, 2, 'Auto-generated',
    50, 'USD', 3.49, 0.00, 174.5
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    1, '2024-05-21', 18, 0
);
    
    
----- SALE NUMBER: 2 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (2, 14, '2024-05-22', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (2, 2, 3, 38);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    2, NULL, 'USD', 189.62, 189.62, 189.62,
    '2', '2024-05-22', 14, 159
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    2, '2024-05-22', 189.62, 0.00, 189.62, 'USD',
    2, 14, 2
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    2, 2, 3, 'Auto-generated',
    38, 'USD', 4.99, 0.00, 189.62
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    2, '2024-05-22', 13, 1
);
    
    
----- SALE NUMBER: 3 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (3, 6, '2024-05-23', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (3, 3, 3, 40);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    3, NULL, 'USD', 199.60000000000002, 199.60000000000002, 199.60000000000002,
    '2', '2024-05-23', 6, 654
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    3, '2024-05-23', 199.60000000000002, 0.00, 199.60000000000002, 'USD',
    3, 6, 3
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    3, 3, 3, 'Auto-generated',
    40, 'USD', 4.99, 0.00, 199.60000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    3, '2024-05-23', 5, 1
);
    
    
----- SALE NUMBER: 4 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (4, 8, '2024-05-24', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (4, 4, 0, 15);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    4, NULL, 'USD', 44.85, 44.85, 44.85,
    '2', '2024-05-24', 8, 123
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    4, '2024-05-24', 44.85, 0.00, 44.85, 'USD',
    4, 8, 4
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    4, 4, 0, 'Auto-generated',
    15, 'USD', 2.99, 0.00, 44.85
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    4, '2024-05-24', 7, 1
);
    
    
----- SALE NUMBER: 5 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (5, 10, '2024-05-25', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (5, 5, 1, 3);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    5, NULL, 'USD', 11.97, 11.97, 11.97,
    '2', '2024-05-25', 10, 246
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    5, '2024-05-25', 11.97, 0.00, 11.97, 'USD',
    5, 10, 5
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    5, 5, 1, 'Auto-generated',
    3, 'USD', 3.99, 0.00, 11.97
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    5, '2024-05-25', 9, 1
);
    
    
----- SALE NUMBER: 6 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (6, 18, '2024-05-26', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (6, 6, 8, 34);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    6, NULL, 'USD', 118.66000000000001, 118.66000000000001, 118.66000000000001,
    '2', '2024-05-26', 18, 258
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    6, '2024-05-26', 118.66000000000001, 0.00, 118.66000000000001, 'USD',
    6, 18, 6
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    6, 6, 8, 'Auto-generated',
    34, 'USD', 3.49, 0.00, 118.66000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    6, '2024-05-26', 17, 1
);
    
    
----- SALE NUMBER: 7 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (7, 17, '2024-05-27', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (7, 7, 3, 24);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    7, NULL, 'USD', 119.76, 119.76, 119.76,
    '2', '2024-05-27', 17, 951
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    7, '2024-05-27', 119.76, 0.00, 119.76, 'USD',
    7, 17, 7
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    7, 7, 3, 'Auto-generated',
    24, 'USD', 4.99, 0.00, 119.76
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    7, '2024-05-27', 16, 1
);
    
    
----- SALE NUMBER: 8 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (8, 9, '2024-05-28', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (8, 8, 1, 32);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    8, NULL, 'USD', 127.68, 127.68, 127.68,
    '2', '2024-05-28', 9, 456
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    8, '2024-05-28', 127.68, 0.00, 127.68, 'USD',
    8, 9, 8
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    8, 8, 1, 'Auto-generated',
    32, 'USD', 3.99, 0.00, 127.68
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    8, '2024-05-28', 8, 1
);
    
    
----- SALE NUMBER: 9 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (9, 16, '2024-05-29', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (9, 9, 0, 17);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    9, NULL, 'USD', 50.830000000000005, 50.830000000000005, 50.830000000000005,
    '2', '2024-05-29', 16, 357
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    9, '2024-05-29', 50.830000000000005, 0.00, 50.830000000000005, 'USD',
    9, 16, 9
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    9, 9, 0, 'Auto-generated',
    17, 'USD', 2.99, 0.00, 50.830000000000005
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    9, '2024-05-29', 15, 1
);
    
    
----- SALE NUMBER: 10 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (10, 19, '2024-05-30', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (10, 10, 8, 23);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    10, NULL, 'USD', 80.27000000000001, 80.27000000000001, 80.27000000000001,
    '2', '2024-05-30', 19, 654
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    10, '2024-05-30', 80.27000000000001, 0.00, 80.27000000000001, 'USD',
    10, 19, 10
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    10, 10, 8, 'Auto-generated',
    23, 'USD', 3.49, 0.00, 80.27000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    10, '2024-05-30', 18, 1
);
    
    
----- SALE NUMBER: 11 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (11, 10, '2024-05-31', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (11, 11, 5, 7);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    11, NULL, 'USD', 24.43, 24.43, 24.43,
    '2', '2024-05-31', 10, 246
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    11, '2024-05-31', 24.43, 0.00, 24.43, 'USD',
    11, 10, 11
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    11, 11, 5, 'Auto-generated',
    7, 'USD', 3.49, 0.00, 24.43
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    11, '2024-05-31', 9, 1
);
    
    
----- SALE NUMBER: 12 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (12, 13, '2024-06-01', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (12, 12, 3, 8);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    12, NULL, 'USD', 39.92, 39.92, 39.92,
    '2', '2024-06-01', 13, 753
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    12, '2024-06-01', 39.92, 0.00, 39.92, 'USD',
    12, 13, 12
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    12, 12, 3, 'Auto-generated',
    8, 'USD', 4.99, 0.00, 39.92
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    12, '2024-06-01', 12, 1
);
    
    
----- SALE NUMBER: 13 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (13, 12, '2024-06-02', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (13, 13, 1, 41);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    13, NULL, 'USD', 163.59, 163.59, 163.59,
    '2', '2024-06-02', 12, 864
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    13, '2024-06-02', 163.59, 0.00, 163.59, 'USD',
    13, 12, 13
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    13, 13, 1, 'Auto-generated',
    41, 'USD', 3.99, 0.00, 163.59
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    13, '2024-06-02', 11, 1
);
    
    
----- SALE NUMBER: 14 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (14, 18, '2024-06-03', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (14, 14, 5, 5);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    14, NULL, 'USD', 17.450000000000003, 17.450000000000003, 17.450000000000003,
    '2', '2024-06-03', 18, 258
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    14, '2024-06-03', 17.450000000000003, 0.00, 17.450000000000003, 'USD',
    14, 18, 14
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    14, 14, 5, 'Auto-generated',
    5, 'USD', 3.49, 0.00, 17.450000000000003
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    14, '2024-06-03', 17, 1
);
    
    
----- SALE NUMBER: 15 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (15, 7, '2024-06-04', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (15, 15, 1, 45);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    15, NULL, 'USD', 179.55, 179.55, 179.55,
    '2', '2024-06-04', 7, 987
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    15, '2024-06-04', 179.55, 0.00, 179.55, 'USD',
    15, 7, 15
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    15, 15, 1, 'Auto-generated',
    45, 'USD', 3.99, 0.00, 179.55
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    15, '2024-06-04', 6, 1
);
    
    
----- SALE NUMBER: 16 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (16, 5, '2024-06-05', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (16, 16, 7, 23);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    16, NULL, 'USD', 91.77000000000001, 91.77000000000001, 91.77000000000001,
    '2', '2024-06-05', 5, 321
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    16, '2024-06-05', 91.77000000000001, 0.00, 91.77000000000001, 'USD',
    16, 5, 16
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    16, 16, 7, 'Auto-generated',
    23, 'USD', 3.99, 0.00, 91.77000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    16, '2024-06-05', 4, 1
);
    
    
----- SALE NUMBER: 17 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (17, 16, '2024-06-06', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (17, 17, 2, 14);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    17, NULL, 'USD', 48.86, 48.86, 48.86,
    '2', '2024-06-06', 16, 357
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    17, '2024-06-06', 48.86, 0.00, 48.86, 'USD',
    17, 16, 17
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    17, 17, 2, 'Auto-generated',
    14, 'USD', 3.49, 0.00, 48.86
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    17, '2024-06-06', 15, 1
);
    
    
----- SALE NUMBER: 18 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (18, 3, '2024-06-07', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (18, 18, 8, 31);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    18, NULL, 'USD', 108.19000000000001, 108.19000000000001, 108.19000000000001,
    '2', '2024-06-07', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    18, '2024-06-07', 108.19000000000001, 0.00, 108.19000000000001, 'USD',
    18, 3, 18
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    18, 18, 8, 'Auto-generated',
    31, 'USD', 3.49, 0.00, 108.19000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    18, '2024-06-07', 2, 1
);
    
    
----- SALE NUMBER: 19 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (19, 4, '2024-06-08', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (19, 19, 7, 17);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    19, NULL, 'USD', 67.83, 67.83, 67.83,
    '2', '2024-06-08', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    19, '2024-06-08', 67.83, 0.00, 67.83, 'USD',
    19, 4, 19
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    19, 19, 7, 'Auto-generated',
    17, 'USD', 3.99, 0.00, 67.83
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    19, '2024-06-08', 3, 1
);
    
    
----- SALE NUMBER: 20 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (20, 16, '2024-06-09', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (20, 20, 7, 44);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    20, NULL, 'USD', 175.56, 175.56, 175.56,
    '2', '2024-06-09', 16, 357
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    20, '2024-06-09', 175.56, 0.00, 175.56, 'USD',
    20, 16, 20
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    20, 20, 7, 'Auto-generated',
    44, 'USD', 3.99, 0.00, 175.56
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    20, '2024-06-09', 15, 1
);
    
    
----- SALE NUMBER: 21 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (21, 1, '2024-06-10', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (21, 21, 6, 9);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    21, NULL, 'USD', 26.910000000000004, 26.910000000000004, 26.910000000000004,
    '2', '2024-06-10', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    21, '2024-06-10', 26.910000000000004, 0.00, 26.910000000000004, 'USD',
    21, 1, 21
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    21, 21, 6, 'Auto-generated',
    9, 'USD', 2.99, 0.00, 26.910000000000004
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    21, '2024-06-10', 0, 1
);
    
    
----- SALE NUMBER: 22 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (22, 6, '2024-06-11', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (22, 22, 7, 32);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    22, NULL, 'USD', 127.68, 127.68, 127.68,
    '2', '2024-06-11', 6, 654
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    22, '2024-06-11', 127.68, 0.00, 127.68, 'USD',
    22, 6, 22
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    22, 22, 7, 'Auto-generated',
    32, 'USD', 3.99, 0.00, 127.68
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    22, '2024-06-11', 5, 1
);
    
    
----- SALE NUMBER: 23 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (23, 11, '2024-06-12', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (23, 23, 8, 35);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    23, NULL, 'USD', 122.15, 122.15, 122.15,
    '2', '2024-06-12', 11, 579
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    23, '2024-06-12', 122.15, 0.00, 122.15, 'USD',
    23, 11, 23
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    23, 23, 8, 'Auto-generated',
    35, 'USD', 3.49, 0.00, 122.15
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    23, '2024-06-12', 10, 1
);
    
    
----- SALE NUMBER: 24 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (24, 18, '2024-06-13', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (24, 24, 8, 12);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    24, NULL, 'USD', 41.88, 41.88, 41.88,
    '2', '2024-06-13', 18, 258
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    24, '2024-06-13', 41.88, 0.00, 41.88, 'USD',
    24, 18, 24
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    24, 24, 8, 'Auto-generated',
    12, 'USD', 3.49, 0.00, 41.88
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    24, '2024-06-13', 17, 1
);
    
    
----- SALE NUMBER: 25 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (25, 1, '2024-06-14', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (25, 25, 3, 14);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    25, NULL, 'USD', 69.86, 69.86, 69.86,
    '2', '2024-06-14', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    25, '2024-06-14', 69.86, 0.00, 69.86, 'USD',
    25, 1, 25
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    25, 25, 3, 'Auto-generated',
    14, 'USD', 4.99, 0.00, 69.86
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    25, '2024-06-14', 0, 1
);
    
    
----- SALE NUMBER: 26 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (26, 12, '2024-06-15', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (26, 26, 7, 14);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    26, NULL, 'USD', 55.86, 55.86, 55.86,
    '2', '2024-06-15', 12, 864
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    26, '2024-06-15', 55.86, 0.00, 55.86, 'USD',
    26, 12, 26
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    26, 26, 7, 'Auto-generated',
    14, 'USD', 3.99, 0.00, 55.86
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    26, '2024-06-15', 11, 1
);
    
    
----- SALE NUMBER: 27 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (27, 19, '2024-06-16', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (27, 27, 7, 40);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    27, NULL, 'USD', 159.60000000000002, 159.60000000000002, 159.60000000000002,
    '2', '2024-06-16', 19, 654
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    27, '2024-06-16', 159.60000000000002, 0.00, 159.60000000000002, 'USD',
    27, 19, 27
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    27, 27, 7, 'Auto-generated',
    40, 'USD', 3.99, 0.00, 159.60000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    27, '2024-06-16', 18, 1
);
    
    
----- SALE NUMBER: 28 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (28, 1, '2024-06-17', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (28, 28, 5, 2);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    28, NULL, 'USD', 6.98, 6.98, 6.98,
    '2', '2024-06-17', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    28, '2024-06-17', 6.98, 0.00, 6.98, 'USD',
    28, 1, 28
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    28, 28, 5, 'Auto-generated',
    2, 'USD', 3.49, 0.00, 6.98
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    28, '2024-06-17', 0, 1
);
    
    
----- SALE NUMBER: 29 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (29, 4, '2024-06-18', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (29, 29, 4, 49);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    29, NULL, 'USD', 171.01000000000002, 171.01000000000002, 171.01000000000002,
    '2', '2024-06-18', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    29, '2024-06-18', 171.01000000000002, 0.00, 171.01000000000002, 'USD',
    29, 4, 29
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    29, 29, 4, 'Auto-generated',
    49, 'USD', 3.49, 0.00, 171.01000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    29, '2024-06-18', 3, 1
);
    
    
----- SALE NUMBER: 30 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (30, 10, '2024-06-19', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (30, 30, 0, 24);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    30, NULL, 'USD', 71.76, 71.76, 71.76,
    '2', '2024-06-19', 10, 246
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    30, '2024-06-19', 71.76, 0.00, 71.76, 'USD',
    30, 10, 30
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    30, 30, 0, 'Auto-generated',
    24, 'USD', 2.99, 0.00, 71.76
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    30, '2024-06-19', 9, 1
);
    
    
----- SALE NUMBER: 31 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (31, 16, '2024-06-20', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (31, 31, 3, 40);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    31, NULL, 'USD', 199.60000000000002, 199.60000000000002, 199.60000000000002,
    '2', '2024-06-20', 16, 357
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    31, '2024-06-20', 199.60000000000002, 0.00, 199.60000000000002, 'USD',
    31, 16, 31
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    31, 31, 3, 'Auto-generated',
    40, 'USD', 4.99, 0.00, 199.60000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    31, '2024-06-20', 15, 1
);
    
    
----- SALE NUMBER: 32 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (32, 6, '2024-06-21', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (32, 32, 7, 39);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    32, NULL, 'USD', 155.61, 155.61, 155.61,
    '2', '2024-06-21', 6, 654
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    32, '2024-06-21', 155.61, 0.00, 155.61, 'USD',
    32, 6, 32
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    32, 32, 7, 'Auto-generated',
    39, 'USD', 3.99, 0.00, 155.61
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    32, '2024-06-21', 5, 1
);
    
    
----- SALE NUMBER: 33 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (33, 2, '2024-06-22', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (33, 33, 0, 14);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    33, NULL, 'USD', 41.86, 41.86, 41.86,
    '2', '2024-06-22', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    33, '2024-06-22', 41.86, 0.00, 41.86, 'USD',
    33, 2, 33
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    33, 33, 0, 'Auto-generated',
    14, 'USD', 2.99, 0.00, 41.86
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    33, '2024-06-22', 1, 1
);
    
    
----- SALE NUMBER: 34 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (34, 2, '2024-06-23', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (34, 34, 0, 39);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    34, NULL, 'USD', 116.61000000000001, 116.61000000000001, 116.61000000000001,
    '2', '2024-06-23', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    34, '2024-06-23', 116.61000000000001, 0.00, 116.61000000000001, 'USD',
    34, 2, 34
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    34, 34, 0, 'Auto-generated',
    39, 'USD', 2.99, 0.00, 116.61000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    34, '2024-06-23', 1, 1
);
    
    
----- SALE NUMBER: 35 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (35, 18, '2024-06-24', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (35, 35, 4, 20);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    35, NULL, 'USD', 69.80000000000001, 69.80000000000001, 69.80000000000001,
    '2', '2024-06-24', 18, 258
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    35, '2024-06-24', 69.80000000000001, 0.00, 69.80000000000001, 'USD',
    35, 18, 35
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    35, 35, 4, 'Auto-generated',
    20, 'USD', 3.49, 0.00, 69.80000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    35, '2024-06-24', 17, 1
);
    
    
----- SALE NUMBER: 36 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (36, 4, '2024-06-25', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (36, 36, 6, 15);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    36, NULL, 'USD', 44.85, 44.85, 44.85,
    '2', '2024-06-25', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    36, '2024-06-25', 44.85, 0.00, 44.85, 'USD',
    36, 4, 36
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    36, 36, 6, 'Auto-generated',
    15, 'USD', 2.99, 0.00, 44.85
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    36, '2024-06-25', 3, 1
);
    
    
----- SALE NUMBER: 37 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (37, 7, '2024-06-26', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (37, 37, 7, 34);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    37, NULL, 'USD', 135.66, 135.66, 135.66,
    '2', '2024-06-26', 7, 987
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    37, '2024-06-26', 135.66, 0.00, 135.66, 'USD',
    37, 7, 37
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    37, 37, 7, 'Auto-generated',
    34, 'USD', 3.99, 0.00, 135.66
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    37, '2024-06-26', 6, 1
);
    
    
----- SALE NUMBER: 38 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (38, 6, '2024-06-27', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (38, 38, 0, 20);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    38, NULL, 'USD', 59.800000000000004, 59.800000000000004, 59.800000000000004,
    '2', '2024-06-27', 6, 654
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    38, '2024-06-27', 59.800000000000004, 0.00, 59.800000000000004, 'USD',
    38, 6, 38
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    38, 38, 0, 'Auto-generated',
    20, 'USD', 2.99, 0.00, 59.800000000000004
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    38, '2024-06-27', 5, 1
);
    
    
----- SALE NUMBER: 39 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (39, 5, '2024-06-28', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (39, 39, 5, 45);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    39, NULL, 'USD', 157.05, 157.05, 157.05,
    '2', '2024-06-28', 5, 321
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    39, '2024-06-28', 157.05, 0.00, 157.05, 'USD',
    39, 5, 39
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    39, 39, 5, 'Auto-generated',
    45, 'USD', 3.49, 0.00, 157.05
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    39, '2024-06-28', 4, 1
);
    
    
----- SALE NUMBER: 40 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (40, 7, '2024-06-29', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (40, 40, 2, 2);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    40, NULL, 'USD', 6.98, 6.98, 6.98,
    '2', '2024-06-29', 7, 987
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    40, '2024-06-29', 6.98, 0.00, 6.98, 'USD',
    40, 7, 40
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    40, 40, 2, 'Auto-generated',
    2, 'USD', 3.49, 0.00, 6.98
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    40, '2024-06-29', 6, 1
);
    
    
----- SALE NUMBER: 41 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (41, 16, '2024-06-30', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (41, 41, 6, 44);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    41, NULL, 'USD', 131.56, 131.56, 131.56,
    '2', '2024-06-30', 16, 357
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    41, '2024-06-30', 131.56, 0.00, 131.56, 'USD',
    41, 16, 41
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    41, 41, 6, 'Auto-generated',
    44, 'USD', 2.99, 0.00, 131.56
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    41, '2024-06-30', 15, 1
);
    
    
----- SALE NUMBER: 42 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (42, 2, '2024-07-01', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (42, 42, 0, 7);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    42, NULL, 'USD', 20.93, 20.93, 20.93,
    '2', '2024-07-01', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    42, '2024-07-01', 20.93, 0.00, 20.93, 'USD',
    42, 2, 42
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    42, 42, 0, 'Auto-generated',
    7, 'USD', 2.99, 0.00, 20.93
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    42, '2024-07-01', 1, 1
);
    
    
----- SALE NUMBER: 43 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (43, 7, '2024-07-02', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (43, 43, 0, 43);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    43, NULL, 'USD', 128.57000000000002, 128.57000000000002, 128.57000000000002,
    '2', '2024-07-02', 7, 987
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    43, '2024-07-02', 128.57000000000002, 0.00, 128.57000000000002, 'USD',
    43, 7, 43
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    43, 43, 0, 'Auto-generated',
    43, 'USD', 2.99, 0.00, 128.57000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    43, '2024-07-02', 6, 1
);
    
    
----- SALE NUMBER: 44 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (44, 9, '2024-07-03', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (44, 44, 4, 13);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    44, NULL, 'USD', 45.370000000000005, 45.370000000000005, 45.370000000000005,
    '2', '2024-07-03', 9, 456
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    44, '2024-07-03', 45.370000000000005, 0.00, 45.370000000000005, 'USD',
    44, 9, 44
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    44, 44, 4, 'Auto-generated',
    13, 'USD', 3.49, 0.00, 45.370000000000005
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    44, '2024-07-03', 8, 1
);
    
    
----- SALE NUMBER: 45 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (45, 17, '2024-07-04', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (45, 45, 1, 32);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    45, NULL, 'USD', 127.68, 127.68, 127.68,
    '2', '2024-07-04', 17, 951
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    45, '2024-07-04', 127.68, 0.00, 127.68, 'USD',
    45, 17, 45
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    45, 45, 1, 'Auto-generated',
    32, 'USD', 3.99, 0.00, 127.68
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    45, '2024-07-04', 16, 1
);
    
    
----- SALE NUMBER: 46 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (46, 5, '2024-07-05', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (46, 46, 1, 3);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    46, NULL, 'USD', 11.97, 11.97, 11.97,
    '2', '2024-07-05', 5, 321
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    46, '2024-07-05', 11.97, 0.00, 11.97, 'USD',
    46, 5, 46
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    46, 46, 1, 'Auto-generated',
    3, 'USD', 3.99, 0.00, 11.97
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    46, '2024-07-05', 4, 1
);
    
    
----- SALE NUMBER: 47 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (47, 14, '2024-07-06', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (47, 47, 6, 30);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    47, NULL, 'USD', 89.7, 89.7, 89.7,
    '2', '2024-07-06', 14, 159
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    47, '2024-07-06', 89.7, 0.00, 89.7, 'USD',
    47, 14, 47
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    47, 47, 6, 'Auto-generated',
    30, 'USD', 2.99, 0.00, 89.7
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    47, '2024-07-06', 13, 1
);
    
    
----- SALE NUMBER: 48 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (48, 6, '2024-07-07', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (48, 48, 3, 4);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    48, NULL, 'USD', 19.96, 19.96, 19.96,
    '2', '2024-07-07', 6, 654
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    48, '2024-07-07', 19.96, 0.00, 19.96, 'USD',
    48, 6, 48
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    48, 48, 3, 'Auto-generated',
    4, 'USD', 4.99, 0.00, 19.96
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    48, '2024-07-07', 5, 1
);
    
    
----- SALE NUMBER: 49 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (49, 14, '2024-07-08', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (49, 49, 4, 47);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    49, NULL, 'USD', 164.03, 164.03, 164.03,
    '2', '2024-07-08', 14, 159
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    49, '2024-07-08', 164.03, 0.00, 164.03, 'USD',
    49, 14, 49
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    49, 49, 4, 'Auto-generated',
    47, 'USD', 3.49, 0.00, 164.03
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    49, '2024-07-08', 13, 1
);
    
    
----- SALE NUMBER: 50 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (50, 18, '2024-07-09', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (50, 50, 7, 46);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    50, NULL, 'USD', 183.54000000000002, 183.54000000000002, 183.54000000000002,
    '2', '2024-07-09', 18, 258
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    50, '2024-07-09', 183.54000000000002, 0.00, 183.54000000000002, 'USD',
    50, 18, 50
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    50, 50, 7, 'Auto-generated',
    46, 'USD', 3.99, 0.00, 183.54000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    50, '2024-07-09', 17, 1
);
    
    
----- SALE NUMBER: 51 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (51, 3, '2024-07-10', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (51, 51, 2, 9);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    51, NULL, 'USD', 31.410000000000004, 31.410000000000004, 31.410000000000004,
    '2', '2024-07-10', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    51, '2024-07-10', 31.410000000000004, 0.00, 31.410000000000004, 'USD',
    51, 3, 51
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    51, 51, 2, 'Auto-generated',
    9, 'USD', 3.49, 0.00, 31.410000000000004
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    51, '2024-07-10', 2, 1
);
    
    
----- SALE NUMBER: 52 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (52, 2, '2024-07-11', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (52, 52, 4, 20);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    52, NULL, 'USD', 69.80000000000001, 69.80000000000001, 69.80000000000001,
    '2', '2024-07-11', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    52, '2024-07-11', 69.80000000000001, 0.00, 69.80000000000001, 'USD',
    52, 2, 52
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    52, 52, 4, 'Auto-generated',
    20, 'USD', 3.49, 0.00, 69.80000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    52, '2024-07-11', 1, 1
);
    
    
----- SALE NUMBER: 53 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (53, 7, '2024-07-12', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (53, 53, 3, 9);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    53, NULL, 'USD', 44.910000000000004, 44.910000000000004, 44.910000000000004,
    '2', '2024-07-12', 7, 987
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    53, '2024-07-12', 44.910000000000004, 0.00, 44.910000000000004, 'USD',
    53, 7, 53
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    53, 53, 3, 'Auto-generated',
    9, 'USD', 4.99, 0.00, 44.910000000000004
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    53, '2024-07-12', 6, 1
);
    
    
----- SALE NUMBER: 54 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (54, 18, '2024-07-13', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (54, 54, 4, 9);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    54, NULL, 'USD', 31.410000000000004, 31.410000000000004, 31.410000000000004,
    '2', '2024-07-13', 18, 258
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    54, '2024-07-13', 31.410000000000004, 0.00, 31.410000000000004, 'USD',
    54, 18, 54
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    54, 54, 4, 'Auto-generated',
    9, 'USD', 3.49, 0.00, 31.410000000000004
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    54, '2024-07-13', 17, 1
);
    
    
----- SALE NUMBER: 55 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (55, 8, '2024-07-14', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (55, 55, 1, 37);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    55, NULL, 'USD', 147.63, 147.63, 147.63,
    '2', '2024-07-14', 8, 123
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    55, '2024-07-14', 147.63, 0.00, 147.63, 'USD',
    55, 8, 55
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    55, 55, 1, 'Auto-generated',
    37, 'USD', 3.99, 0.00, 147.63
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    55, '2024-07-14', 7, 1
);
    
    
----- SALE NUMBER: 56 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (56, 18, '2024-07-15', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (56, 56, 3, 8);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    56, NULL, 'USD', 39.92, 39.92, 39.92,
    '2', '2024-07-15', 18, 258
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    56, '2024-07-15', 39.92, 0.00, 39.92, 'USD',
    56, 18, 56
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    56, 56, 3, 'Auto-generated',
    8, 'USD', 4.99, 0.00, 39.92
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    56, '2024-07-15', 17, 1
);
    
    
----- SALE NUMBER: 57 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (57, 3, '2024-07-16', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (57, 57, 4, 28);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    57, NULL, 'USD', 97.72, 97.72, 97.72,
    '2', '2024-07-16', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    57, '2024-07-16', 97.72, 0.00, 97.72, 'USD',
    57, 3, 57
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    57, 57, 4, 'Auto-generated',
    28, 'USD', 3.49, 0.00, 97.72
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    57, '2024-07-16', 2, 1
);
    
    
----- SALE NUMBER: 58 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (58, 8, '2024-07-17', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (58, 58, 8, 13);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    58, NULL, 'USD', 45.370000000000005, 45.370000000000005, 45.370000000000005,
    '2', '2024-07-17', 8, 123
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    58, '2024-07-17', 45.370000000000005, 0.00, 45.370000000000005, 'USD',
    58, 8, 58
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    58, 58, 8, 'Auto-generated',
    13, 'USD', 3.49, 0.00, 45.370000000000005
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    58, '2024-07-17', 7, 1
);
    
    
----- SALE NUMBER: 59 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (59, 4, '2024-07-18', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (59, 59, 7, 36);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    59, NULL, 'USD', 143.64000000000001, 143.64000000000001, 143.64000000000001,
    '2', '2024-07-18', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    59, '2024-07-18', 143.64000000000001, 0.00, 143.64000000000001, 'USD',
    59, 4, 59
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    59, 59, 7, 'Auto-generated',
    36, 'USD', 3.99, 0.00, 143.64000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    59, '2024-07-18', 3, 1
);
    
    
----- SALE NUMBER: 60 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (60, 7, '2024-07-19', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (60, 60, 5, 26);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    60, NULL, 'USD', 90.74000000000001, 90.74000000000001, 90.74000000000001,
    '2', '2024-07-19', 7, 987
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    60, '2024-07-19', 90.74000000000001, 0.00, 90.74000000000001, 'USD',
    60, 7, 60
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    60, 60, 5, 'Auto-generated',
    26, 'USD', 3.49, 0.00, 90.74000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    60, '2024-07-19', 6, 1
);
    
    
----- SALE NUMBER: 61 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (61, 19, '2024-07-20', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (61, 61, 7, 28);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    61, NULL, 'USD', 111.72, 111.72, 111.72,
    '2', '2024-07-20', 19, 654
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    61, '2024-07-20', 111.72, 0.00, 111.72, 'USD',
    61, 19, 61
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    61, 61, 7, 'Auto-generated',
    28, 'USD', 3.99, 0.00, 111.72
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    61, '2024-07-20', 18, 1
);
    
    
----- SALE NUMBER: 62 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (62, 12, '2024-07-21', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (62, 62, 8, 7);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    62, NULL, 'USD', 24.43, 24.43, 24.43,
    '2', '2024-07-21', 12, 864
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    62, '2024-07-21', 24.43, 0.00, 24.43, 'USD',
    62, 12, 62
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    62, 62, 8, 'Auto-generated',
    7, 'USD', 3.49, 0.00, 24.43
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    62, '2024-07-21', 11, 1
);
    
    
----- SALE NUMBER: 63 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (63, 6, '2024-07-22', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (63, 63, 8, 11);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    63, NULL, 'USD', 38.39, 38.39, 38.39,
    '2', '2024-07-22', 6, 654
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    63, '2024-07-22', 38.39, 0.00, 38.39, 'USD',
    63, 6, 63
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    63, 63, 8, 'Auto-generated',
    11, 'USD', 3.49, 0.00, 38.39
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    63, '2024-07-22', 5, 1
);
    
    
----- SALE NUMBER: 64 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (64, 5, '2024-07-23', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (64, 64, 6, 5);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    64, NULL, 'USD', 14.950000000000001, 14.950000000000001, 14.950000000000001,
    '2', '2024-07-23', 5, 321
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    64, '2024-07-23', 14.950000000000001, 0.00, 14.950000000000001, 'USD',
    64, 5, 64
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    64, 64, 6, 'Auto-generated',
    5, 'USD', 2.99, 0.00, 14.950000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    64, '2024-07-23', 4, 1
);
    
    
----- SALE NUMBER: 65 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (65, 18, '2024-07-24', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (65, 65, 5, 7);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    65, NULL, 'USD', 24.43, 24.43, 24.43,
    '2', '2024-07-24', 18, 258
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    65, '2024-07-24', 24.43, 0.00, 24.43, 'USD',
    65, 18, 65
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    65, 65, 5, 'Auto-generated',
    7, 'USD', 3.49, 0.00, 24.43
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    65, '2024-07-24', 17, 1
);
    
    
----- SALE NUMBER: 66 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (66, 8, '2024-07-25', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (66, 66, 6, 10);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    66, NULL, 'USD', 29.900000000000002, 29.900000000000002, 29.900000000000002,
    '2', '2024-07-25', 8, 123
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    66, '2024-07-25', 29.900000000000002, 0.00, 29.900000000000002, 'USD',
    66, 8, 66
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    66, 66, 6, 'Auto-generated',
    10, 'USD', 2.99, 0.00, 29.900000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    66, '2024-07-25', 7, 1
);
    
    
----- SALE NUMBER: 67 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (67, 4, '2024-07-26', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (67, 67, 1, 1);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    67, NULL, 'USD', 3.99, 3.99, 3.99,
    '2', '2024-07-26', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    67, '2024-07-26', 3.99, 0.00, 3.99, 'USD',
    67, 4, 67
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    67, 67, 1, 'Auto-generated',
    1, 'USD', 3.99, 0.00, 3.99
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    67, '2024-07-26', 3, 1
);
    
    
----- SALE NUMBER: 68 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (68, 18, '2024-07-27', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (68, 68, 0, 26);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    68, NULL, 'USD', 77.74000000000001, 77.74000000000001, 77.74000000000001,
    '2', '2024-07-27', 18, 258
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    68, '2024-07-27', 77.74000000000001, 0.00, 77.74000000000001, 'USD',
    68, 18, 68
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    68, 68, 0, 'Auto-generated',
    26, 'USD', 2.99, 0.00, 77.74000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    68, '2024-07-27', 17, 1
);
    
    
----- SALE NUMBER: 69 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (69, 19, '2024-07-28', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (69, 69, 2, 39);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    69, NULL, 'USD', 136.11, 136.11, 136.11,
    '2', '2024-07-28', 19, 654
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    69, '2024-07-28', 136.11, 0.00, 136.11, 'USD',
    69, 19, 69
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    69, 69, 2, 'Auto-generated',
    39, 'USD', 3.49, 0.00, 136.11
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    69, '2024-07-28', 18, 1
);
    
    
----- SALE NUMBER: 70 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (70, 3, '2024-07-29', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (70, 70, 4, 18);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    70, NULL, 'USD', 62.82000000000001, 62.82000000000001, 62.82000000000001,
    '2', '2024-07-29', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    70, '2024-07-29', 62.82000000000001, 0.00, 62.82000000000001, 'USD',
    70, 3, 70
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    70, 70, 4, 'Auto-generated',
    18, 'USD', 3.49, 0.00, 62.82000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    70, '2024-07-29', 2, 1
);
    
    
----- SALE NUMBER: 71 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (71, 6, '2024-07-30', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (71, 71, 4, 11);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    71, NULL, 'USD', 38.39, 38.39, 38.39,
    '2', '2024-07-30', 6, 654
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    71, '2024-07-30', 38.39, 0.00, 38.39, 'USD',
    71, 6, 71
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    71, 71, 4, 'Auto-generated',
    11, 'USD', 3.49, 0.00, 38.39
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    71, '2024-07-30', 5, 1
);
    
    
----- SALE NUMBER: 72 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (72, 1, '2024-07-31', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (72, 72, 7, 19);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    72, NULL, 'USD', 75.81, 75.81, 75.81,
    '2', '2024-07-31', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    72, '2024-07-31', 75.81, 0.00, 75.81, 'USD',
    72, 1, 72
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    72, 72, 7, 'Auto-generated',
    19, 'USD', 3.99, 0.00, 75.81
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    72, '2024-07-31', 0, 1
);
    
    
----- SALE NUMBER: 73 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (73, 17, '2024-08-01', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (73, 73, 5, 8);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    73, NULL, 'USD', 27.92, 27.92, 27.92,
    '2', '2024-08-01', 17, 951
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    73, '2024-08-01', 27.92, 0.00, 27.92, 'USD',
    73, 17, 73
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    73, 73, 5, 'Auto-generated',
    8, 'USD', 3.49, 0.00, 27.92
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    73, '2024-08-01', 16, 1
);
    
    
----- SALE NUMBER: 74 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (74, 18, '2024-08-02', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (74, 74, 4, 19);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    74, NULL, 'USD', 66.31, 66.31, 66.31,
    '2', '2024-08-02', 18, 258
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    74, '2024-08-02', 66.31, 0.00, 66.31, 'USD',
    74, 18, 74
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    74, 74, 4, 'Auto-generated',
    19, 'USD', 3.49, 0.00, 66.31
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    74, '2024-08-02', 17, 1
);
    
    
----- SALE NUMBER: 75 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (75, 14, '2024-08-03', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (75, 75, 2, 20);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    75, NULL, 'USD', 69.80000000000001, 69.80000000000001, 69.80000000000001,
    '2', '2024-08-03', 14, 159
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    75, '2024-08-03', 69.80000000000001, 0.00, 69.80000000000001, 'USD',
    75, 14, 75
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    75, 75, 2, 'Auto-generated',
    20, 'USD', 3.49, 0.00, 69.80000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    75, '2024-08-03', 13, 1
);
    
    
----- SALE NUMBER: 76 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (76, 1, '2024-08-04', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (76, 76, 3, 18);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    76, NULL, 'USD', 89.82000000000001, 89.82000000000001, 89.82000000000001,
    '2', '2024-08-04', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    76, '2024-08-04', 89.82000000000001, 0.00, 89.82000000000001, 'USD',
    76, 1, 76
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    76, 76, 3, 'Auto-generated',
    18, 'USD', 4.99, 0.00, 89.82000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    76, '2024-08-04', 0, 1
);
    
    
----- SALE NUMBER: 77 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (77, 17, '2024-08-05', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (77, 77, 8, 43);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    77, NULL, 'USD', 150.07000000000002, 150.07000000000002, 150.07000000000002,
    '2', '2024-08-05', 17, 951
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    77, '2024-08-05', 150.07000000000002, 0.00, 150.07000000000002, 'USD',
    77, 17, 77
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    77, 77, 8, 'Auto-generated',
    43, 'USD', 3.49, 0.00, 150.07000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    77, '2024-08-05', 16, 1
);
    
    
----- SALE NUMBER: 78 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (78, 7, '2024-08-06', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (78, 78, 3, 34);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    78, NULL, 'USD', 169.66, 169.66, 169.66,
    '2', '2024-08-06', 7, 987
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    78, '2024-08-06', 169.66, 0.00, 169.66, 'USD',
    78, 7, 78
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    78, 78, 3, 'Auto-generated',
    34, 'USD', 4.99, 0.00, 169.66
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    78, '2024-08-06', 6, 1
);
    
    
----- SALE NUMBER: 79 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (79, 6, '2024-08-07', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (79, 79, 8, 15);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    79, NULL, 'USD', 52.35, 52.35, 52.35,
    '2', '2024-08-07', 6, 654
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    79, '2024-08-07', 52.35, 0.00, 52.35, 'USD',
    79, 6, 79
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    79, 79, 8, 'Auto-generated',
    15, 'USD', 3.49, 0.00, 52.35
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    79, '2024-08-07', 5, 1
);
    
    
----- SALE NUMBER: 80 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (80, 15, '2024-08-08', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (80, 80, 6, 3);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    80, NULL, 'USD', 8.97, 8.97, 8.97,
    '2', '2024-08-08', 15, 852
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    80, '2024-08-08', 8.97, 0.00, 8.97, 'USD',
    80, 15, 80
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    80, 80, 6, 'Auto-generated',
    3, 'USD', 2.99, 0.00, 8.97
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    80, '2024-08-08', 14, 1
);
    
    
----- SALE NUMBER: 81 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (81, 5, '2024-08-09', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (81, 81, 8, 5);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    81, NULL, 'USD', 17.450000000000003, 17.450000000000003, 17.450000000000003,
    '2', '2024-08-09', 5, 321
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    81, '2024-08-09', 17.450000000000003, 0.00, 17.450000000000003, 'USD',
    81, 5, 81
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    81, 81, 8, 'Auto-generated',
    5, 'USD', 3.49, 0.00, 17.450000000000003
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    81, '2024-08-09', 4, 1
);
    
    
----- SALE NUMBER: 82 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (82, 19, '2024-08-10', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (82, 82, 6, 50);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    82, NULL, 'USD', 149.5, 149.5, 149.5,
    '2', '2024-08-10', 19, 654
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    82, '2024-08-10', 149.5, 0.00, 149.5, 'USD',
    82, 19, 82
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    82, 82, 6, 'Auto-generated',
    50, 'USD', 2.99, 0.00, 149.5
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    82, '2024-08-10', 18, 1
);
    
    
----- SALE NUMBER: 83 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (83, 3, '2024-08-11', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (83, 83, 2, 14);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    83, NULL, 'USD', 48.86, 48.86, 48.86,
    '2', '2024-08-11', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    83, '2024-08-11', 48.86, 0.00, 48.86, 'USD',
    83, 3, 83
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    83, 83, 2, 'Auto-generated',
    14, 'USD', 3.49, 0.00, 48.86
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    83, '2024-08-11', 2, 1
);
    
    
----- SALE NUMBER: 84 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (84, 15, '2024-08-12', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (84, 84, 8, 27);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    84, NULL, 'USD', 94.23, 94.23, 94.23,
    '2', '2024-08-12', 15, 852
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    84, '2024-08-12', 94.23, 0.00, 94.23, 'USD',
    84, 15, 84
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    84, 84, 8, 'Auto-generated',
    27, 'USD', 3.49, 0.00, 94.23
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    84, '2024-08-12', 14, 1
);
    
    
----- SALE NUMBER: 85 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (85, 11, '2024-08-13', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (85, 85, 4, 46);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    85, NULL, 'USD', 160.54000000000002, 160.54000000000002, 160.54000000000002,
    '2', '2024-08-13', 11, 579
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    85, '2024-08-13', 160.54000000000002, 0.00, 160.54000000000002, 'USD',
    85, 11, 85
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    85, 85, 4, 'Auto-generated',
    46, 'USD', 3.49, 0.00, 160.54000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    85, '2024-08-13', 10, 1
);
    
    
----- SALE NUMBER: 86 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (86, 4, '2024-08-14', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (86, 86, 8, 26);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    86, NULL, 'USD', 90.74000000000001, 90.74000000000001, 90.74000000000001,
    '2', '2024-08-14', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    86, '2024-08-14', 90.74000000000001, 0.00, 90.74000000000001, 'USD',
    86, 4, 86
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    86, 86, 8, 'Auto-generated',
    26, 'USD', 3.49, 0.00, 90.74000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    86, '2024-08-14', 3, 1
);
    
    
----- SALE NUMBER: 87 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (87, 16, '2024-08-15', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (87, 87, 8, 40);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    87, NULL, 'USD', 139.60000000000002, 139.60000000000002, 139.60000000000002,
    '2', '2024-08-15', 16, 357
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    87, '2024-08-15', 139.60000000000002, 0.00, 139.60000000000002, 'USD',
    87, 16, 87
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    87, 87, 8, 'Auto-generated',
    40, 'USD', 3.49, 0.00, 139.60000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    87, '2024-08-15', 15, 1
);
    
    
----- SALE NUMBER: 88 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (88, 1, '2024-08-16', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (88, 88, 8, 9);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    88, NULL, 'USD', 31.410000000000004, 31.410000000000004, 31.410000000000004,
    '2', '2024-08-16', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    88, '2024-08-16', 31.410000000000004, 0.00, 31.410000000000004, 'USD',
    88, 1, 88
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    88, 88, 8, 'Auto-generated',
    9, 'USD', 3.49, 0.00, 31.410000000000004
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    88, '2024-08-16', 0, 1
);
    
    
----- SALE NUMBER: 89 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (89, 1, '2024-08-17', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (89, 89, 8, 8);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    89, NULL, 'USD', 27.92, 27.92, 27.92,
    '2', '2024-08-17', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    89, '2024-08-17', 27.92, 0.00, 27.92, 'USD',
    89, 1, 89
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    89, 89, 8, 'Auto-generated',
    8, 'USD', 3.49, 0.00, 27.92
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    89, '2024-08-17', 0, 1
);
    
    
----- SALE NUMBER: 90 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (90, 5, '2024-08-18', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (90, 90, 3, 8);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    90, NULL, 'USD', 39.92, 39.92, 39.92,
    '2', '2024-08-18', 5, 321
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    90, '2024-08-18', 39.92, 0.00, 39.92, 'USD',
    90, 5, 90
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    90, 90, 3, 'Auto-generated',
    8, 'USD', 4.99, 0.00, 39.92
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    90, '2024-08-18', 4, 1
);
    
    
----- SALE NUMBER: 91 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (91, 4, '2024-08-19', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (91, 91, 3, 44);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    91, NULL, 'USD', 219.56, 219.56, 219.56,
    '2', '2024-08-19', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    91, '2024-08-19', 219.56, 0.00, 219.56, 'USD',
    91, 4, 91
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    91, 91, 3, 'Auto-generated',
    44, 'USD', 4.99, 0.00, 219.56
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    91, '2024-08-19', 3, 1
);
    
    
----- SALE NUMBER: 92 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (92, 14, '2024-08-20', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (92, 92, 3, 14);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    92, NULL, 'USD', 69.86, 69.86, 69.86,
    '2', '2024-08-20', 14, 159
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    92, '2024-08-20', 69.86, 0.00, 69.86, 'USD',
    92, 14, 92
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    92, 92, 3, 'Auto-generated',
    14, 'USD', 4.99, 0.00, 69.86
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    92, '2024-08-20', 13, 1
);
    
    
----- SALE NUMBER: 93 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (93, 9, '2024-08-21', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (93, 93, 6, 1);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    93, NULL, 'USD', 2.99, 2.99, 2.99,
    '2', '2024-08-21', 9, 456
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    93, '2024-08-21', 2.99, 0.00, 2.99, 'USD',
    93, 9, 93
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    93, 93, 6, 'Auto-generated',
    1, 'USD', 2.99, 0.00, 2.99
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    93, '2024-08-21', 8, 1
);
    
    
----- SALE NUMBER: 94 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (94, 5, '2024-08-22', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (94, 94, 1, 18);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    94, NULL, 'USD', 71.82000000000001, 71.82000000000001, 71.82000000000001,
    '2', '2024-08-22', 5, 321
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    94, '2024-08-22', 71.82000000000001, 0.00, 71.82000000000001, 'USD',
    94, 5, 94
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    94, 94, 1, 'Auto-generated',
    18, 'USD', 3.99, 0.00, 71.82000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    94, '2024-08-22', 4, 1
);
    
    
----- SALE NUMBER: 95 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (95, 17, '2024-08-23', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (95, 95, 7, 29);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    95, NULL, 'USD', 115.71000000000001, 115.71000000000001, 115.71000000000001,
    '2', '2024-08-23', 17, 951
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    95, '2024-08-23', 115.71000000000001, 0.00, 115.71000000000001, 'USD',
    95, 17, 95
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    95, 95, 7, 'Auto-generated',
    29, 'USD', 3.99, 0.00, 115.71000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    95, '2024-08-23', 16, 1
);
    
    
----- SALE NUMBER: 96 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (96, 15, '2024-08-24', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (96, 96, 1, 14);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    96, NULL, 'USD', 55.86, 55.86, 55.86,
    '2', '2024-08-24', 15, 852
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    96, '2024-08-24', 55.86, 0.00, 55.86, 'USD',
    96, 15, 96
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    96, 96, 1, 'Auto-generated',
    14, 'USD', 3.99, 0.00, 55.86
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    96, '2024-08-24', 14, 1
);
    
    
----- SALE NUMBER: 97 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (97, 3, '2024-08-25', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (97, 97, 6, 44);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    97, NULL, 'USD', 131.56, 131.56, 131.56,
    '2', '2024-08-25', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    97, '2024-08-25', 131.56, 0.00, 131.56, 'USD',
    97, 3, 97
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    97, 97, 6, 'Auto-generated',
    44, 'USD', 2.99, 0.00, 131.56
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    97, '2024-08-25', 2, 1
);
    
    
----- SALE NUMBER: 98 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (98, 15, '2024-08-26', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (98, 98, 6, 5);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    98, NULL, 'USD', 14.950000000000001, 14.950000000000001, 14.950000000000001,
    '2', '2024-08-26', 15, 852
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    98, '2024-08-26', 14.950000000000001, 0.00, 14.950000000000001, 'USD',
    98, 15, 98
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    98, 98, 6, 'Auto-generated',
    5, 'USD', 2.99, 0.00, 14.950000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    98, '2024-08-26', 14, 1
);
    
    
----- SALE NUMBER: 99 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (99, 12, '2024-08-27', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (99, 99, 7, 13);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    99, NULL, 'USD', 51.870000000000005, 51.870000000000005, 51.870000000000005,
    '2', '2024-08-27', 12, 864
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    99, '2024-08-27', 51.870000000000005, 0.00, 51.870000000000005, 'USD',
    99, 12, 99
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    99, 99, 7, 'Auto-generated',
    13, 'USD', 3.99, 0.00, 51.870000000000005
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    99, '2024-08-27', 11, 1
);
    
    
----- SALE NUMBER: 100 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (100, 1, '2024-08-28', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (100, 100, 7, 44);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    100, NULL, 'USD', 175.56, 175.56, 175.56,
    '2', '2024-08-28', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    100, '2024-08-28', 175.56, 0.00, 175.56, 'USD',
    100, 1, 100
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    100, 100, 7, 'Auto-generated',
    44, 'USD', 3.99, 0.00, 175.56
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    100, '2024-08-28', 0, 1
);
    
    
----- SALE NUMBER: 101 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (101, 14, '2024-08-29', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (101, 101, 7, 10);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    101, NULL, 'USD', 39.900000000000006, 39.900000000000006, 39.900000000000006,
    '2', '2024-08-29', 14, 159
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    101, '2024-08-29', 39.900000000000006, 0.00, 39.900000000000006, 'USD',
    101, 14, 101
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    101, 101, 7, 'Auto-generated',
    10, 'USD', 3.99, 0.00, 39.900000000000006
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    101, '2024-08-29', 13, 1
);
    
    
----- SALE NUMBER: 102 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (102, 1, '2024-08-30', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (102, 102, 6, 23);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    102, NULL, 'USD', 68.77000000000001, 68.77000000000001, 68.77000000000001,
    '2', '2024-08-30', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    102, '2024-08-30', 68.77000000000001, 0.00, 68.77000000000001, 'USD',
    102, 1, 102
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    102, 102, 6, 'Auto-generated',
    23, 'USD', 2.99, 0.00, 68.77000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    102, '2024-08-30', 0, 1
);
    
    
----- SALE NUMBER: 103 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (103, 15, '2024-08-31', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (103, 103, 8, 8);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    103, NULL, 'USD', 27.92, 27.92, 27.92,
    '2', '2024-08-31', 15, 852
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    103, '2024-08-31', 27.92, 0.00, 27.92, 'USD',
    103, 15, 103
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    103, 103, 8, 'Auto-generated',
    8, 'USD', 3.49, 0.00, 27.92
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    103, '2024-08-31', 14, 1
);
    
    
----- SALE NUMBER: 104 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (104, 13, '2024-09-01', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (104, 104, 6, 50);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    104, NULL, 'USD', 149.5, 149.5, 149.5,
    '2', '2024-09-01', 13, 753
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    104, '2024-09-01', 149.5, 0.00, 149.5, 'USD',
    104, 13, 104
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    104, 104, 6, 'Auto-generated',
    50, 'USD', 2.99, 0.00, 149.5
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    104, '2024-09-01', 12, 1
);
    
    
----- SALE NUMBER: 105 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (105, 18, '2024-09-02', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (105, 105, 1, 12);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    105, NULL, 'USD', 47.88, 47.88, 47.88,
    '2', '2024-09-02', 18, 258
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    105, '2024-09-02', 47.88, 0.00, 47.88, 'USD',
    105, 18, 105
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    105, 105, 1, 'Auto-generated',
    12, 'USD', 3.99, 0.00, 47.88
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    105, '2024-09-02', 17, 1
);
    
    
----- SALE NUMBER: 106 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (106, 13, '2024-09-03', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (106, 106, 4, 19);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    106, NULL, 'USD', 66.31, 66.31, 66.31,
    '2', '2024-09-03', 13, 753
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    106, '2024-09-03', 66.31, 0.00, 66.31, 'USD',
    106, 13, 106
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    106, 106, 4, 'Auto-generated',
    19, 'USD', 3.49, 0.00, 66.31
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    106, '2024-09-03', 12, 1
);
    
    
----- SALE NUMBER: 107 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (107, 18, '2024-09-04', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (107, 107, 2, 19);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    107, NULL, 'USD', 66.31, 66.31, 66.31,
    '2', '2024-09-04', 18, 258
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    107, '2024-09-04', 66.31, 0.00, 66.31, 'USD',
    107, 18, 107
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    107, 107, 2, 'Auto-generated',
    19, 'USD', 3.49, 0.00, 66.31
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    107, '2024-09-04', 17, 1
);
    
    
----- SALE NUMBER: 108 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (108, 13, '2024-09-05', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (108, 108, 0, 19);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    108, NULL, 'USD', 56.81, 56.81, 56.81,
    '2', '2024-09-05', 13, 753
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    108, '2024-09-05', 56.81, 0.00, 56.81, 'USD',
    108, 13, 108
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    108, 108, 0, 'Auto-generated',
    19, 'USD', 2.99, 0.00, 56.81
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    108, '2024-09-05', 12, 1
);
    
    
----- SALE NUMBER: 109 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (109, 8, '2024-09-06', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (109, 109, 5, 24);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    109, NULL, 'USD', 83.76, 83.76, 83.76,
    '2', '2024-09-06', 8, 123
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    109, '2024-09-06', 83.76, 0.00, 83.76, 'USD',
    109, 8, 109
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    109, 109, 5, 'Auto-generated',
    24, 'USD', 3.49, 0.00, 83.76
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    109, '2024-09-06', 7, 1
);
    
    
----- SALE NUMBER: 110 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (110, 2, '2024-09-07', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (110, 110, 2, 45);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    110, NULL, 'USD', 157.05, 157.05, 157.05,
    '2', '2024-09-07', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    110, '2024-09-07', 157.05, 0.00, 157.05, 'USD',
    110, 2, 110
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    110, 110, 2, 'Auto-generated',
    45, 'USD', 3.49, 0.00, 157.05
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    110, '2024-09-07', 1, 1
);
    
    
----- SALE NUMBER: 111 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (111, 14, '2024-09-08', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (111, 111, 1, 21);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    111, NULL, 'USD', 83.79, 83.79, 83.79,
    '2', '2024-09-08', 14, 159
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    111, '2024-09-08', 83.79, 0.00, 83.79, 'USD',
    111, 14, 111
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    111, 111, 1, 'Auto-generated',
    21, 'USD', 3.99, 0.00, 83.79
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    111, '2024-09-08', 13, 1
);
    
    
----- SALE NUMBER: 112 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (112, 13, '2024-09-09', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (112, 112, 3, 47);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    112, NULL, 'USD', 234.53, 234.53, 234.53,
    '2', '2024-09-09', 13, 753
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    112, '2024-09-09', 234.53, 0.00, 234.53, 'USD',
    112, 13, 112
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    112, 112, 3, 'Auto-generated',
    47, 'USD', 4.99, 0.00, 234.53
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    112, '2024-09-09', 12, 1
);
    
    
----- SALE NUMBER: 113 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (113, 19, '2024-09-10', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (113, 113, 6, 21);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    113, NULL, 'USD', 62.790000000000006, 62.790000000000006, 62.790000000000006,
    '2', '2024-09-10', 19, 654
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    113, '2024-09-10', 62.790000000000006, 0.00, 62.790000000000006, 'USD',
    113, 19, 113
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    113, 113, 6, 'Auto-generated',
    21, 'USD', 2.99, 0.00, 62.790000000000006
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    113, '2024-09-10', 18, 1
);
    
    
----- SALE NUMBER: 114 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (114, 7, '2024-09-11', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (114, 114, 7, 19);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    114, NULL, 'USD', 75.81, 75.81, 75.81,
    '2', '2024-09-11', 7, 987
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    114, '2024-09-11', 75.81, 0.00, 75.81, 'USD',
    114, 7, 114
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    114, 114, 7, 'Auto-generated',
    19, 'USD', 3.99, 0.00, 75.81
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    114, '2024-09-11', 6, 1
);
    
    
----- SALE NUMBER: 115 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (115, 16, '2024-09-12', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (115, 115, 3, 42);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    115, NULL, 'USD', 209.58, 209.58, 209.58,
    '2', '2024-09-12', 16, 357
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    115, '2024-09-12', 209.58, 0.00, 209.58, 'USD',
    115, 16, 115
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    115, 115, 3, 'Auto-generated',
    42, 'USD', 4.99, 0.00, 209.58
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    115, '2024-09-12', 15, 1
);
    
    
----- SALE NUMBER: 116 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (116, 17, '2024-09-13', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (116, 116, 5, 18);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    116, NULL, 'USD', 62.82000000000001, 62.82000000000001, 62.82000000000001,
    '2', '2024-09-13', 17, 951
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    116, '2024-09-13', 62.82000000000001, 0.00, 62.82000000000001, 'USD',
    116, 17, 116
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    116, 116, 5, 'Auto-generated',
    18, 'USD', 3.49, 0.00, 62.82000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    116, '2024-09-13', 16, 1
);
    
    
----- SALE NUMBER: 117 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (117, 13, '2024-09-14', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (117, 117, 4, 33);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    117, NULL, 'USD', 115.17, 115.17, 115.17,
    '2', '2024-09-14', 13, 753
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    117, '2024-09-14', 115.17, 0.00, 115.17, 'USD',
    117, 13, 117
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    117, 117, 4, 'Auto-generated',
    33, 'USD', 3.49, 0.00, 115.17
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    117, '2024-09-14', 12, 1
);
    
    
----- SALE NUMBER: 118 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (118, 19, '2024-09-15', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (118, 118, 4, 36);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    118, NULL, 'USD', 125.64000000000001, 125.64000000000001, 125.64000000000001,
    '2', '2024-09-15', 19, 654
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    118, '2024-09-15', 125.64000000000001, 0.00, 125.64000000000001, 'USD',
    118, 19, 118
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    118, 118, 4, 'Auto-generated',
    36, 'USD', 3.49, 0.00, 125.64000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    118, '2024-09-15', 18, 1
);
    
    
----- SALE NUMBER: 119 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (119, 18, '2024-09-16', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (119, 119, 1, 42);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    119, NULL, 'USD', 167.58, 167.58, 167.58,
    '2', '2024-09-16', 18, 258
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    119, '2024-09-16', 167.58, 0.00, 167.58, 'USD',
    119, 18, 119
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    119, 119, 1, 'Auto-generated',
    42, 'USD', 3.99, 0.00, 167.58
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    119, '2024-09-16', 17, 1
);
    
    
----- SALE NUMBER: 120 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (120, 14, '2024-09-17', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (120, 120, 3, 45);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    120, NULL, 'USD', 224.55, 224.55, 224.55,
    '2', '2024-09-17', 14, 159
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    120, '2024-09-17', 224.55, 0.00, 224.55, 'USD',
    120, 14, 120
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    120, 120, 3, 'Auto-generated',
    45, 'USD', 4.99, 0.00, 224.55
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    120, '2024-09-17', 13, 1
);
    
    
----- SALE NUMBER: 121 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (121, 6, '2024-09-18', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (121, 121, 0, 36);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    121, NULL, 'USD', 107.64000000000001, 107.64000000000001, 107.64000000000001,
    '2', '2024-09-18', 6, 654
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    121, '2024-09-18', 107.64000000000001, 0.00, 107.64000000000001, 'USD',
    121, 6, 121
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    121, 121, 0, 'Auto-generated',
    36, 'USD', 2.99, 0.00, 107.64000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    121, '2024-09-18', 5, 1
);
    
    
----- SALE NUMBER: 122 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (122, 5, '2024-09-19', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (122, 122, 8, 22);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    122, NULL, 'USD', 76.78, 76.78, 76.78,
    '2', '2024-09-19', 5, 321
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    122, '2024-09-19', 76.78, 0.00, 76.78, 'USD',
    122, 5, 122
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    122, 122, 8, 'Auto-generated',
    22, 'USD', 3.49, 0.00, 76.78
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    122, '2024-09-19', 4, 1
);
    
    
----- SALE NUMBER: 123 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (123, 6, '2024-09-20', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (123, 123, 2, 45);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    123, NULL, 'USD', 157.05, 157.05, 157.05,
    '2', '2024-09-20', 6, 654
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    123, '2024-09-20', 157.05, 0.00, 157.05, 'USD',
    123, 6, 123
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    123, 123, 2, 'Auto-generated',
    45, 'USD', 3.49, 0.00, 157.05
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    123, '2024-09-20', 5, 1
);
    
    
----- SALE NUMBER: 124 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (124, 12, '2024-09-21', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (124, 124, 5, 12);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    124, NULL, 'USD', 41.88, 41.88, 41.88,
    '2', '2024-09-21', 12, 864
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    124, '2024-09-21', 41.88, 0.00, 41.88, 'USD',
    124, 12, 124
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    124, 124, 5, 'Auto-generated',
    12, 'USD', 3.49, 0.00, 41.88
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    124, '2024-09-21', 11, 1
);
    
    
----- SALE NUMBER: 125 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (125, 5, '2024-09-22', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (125, 125, 4, 22);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    125, NULL, 'USD', 76.78, 76.78, 76.78,
    '2', '2024-09-22', 5, 321
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    125, '2024-09-22', 76.78, 0.00, 76.78, 'USD',
    125, 5, 125
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    125, 125, 4, 'Auto-generated',
    22, 'USD', 3.49, 0.00, 76.78
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    125, '2024-09-22', 4, 1
);
    
    
----- SALE NUMBER: 126 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (126, 8, '2024-09-23', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (126, 126, 2, 42);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    126, NULL, 'USD', 146.58, 146.58, 146.58,
    '2', '2024-09-23', 8, 123
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    126, '2024-09-23', 146.58, 0.00, 146.58, 'USD',
    126, 8, 126
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    126, 126, 2, 'Auto-generated',
    42, 'USD', 3.49, 0.00, 146.58
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    126, '2024-09-23', 7, 1
);
    
    
----- SALE NUMBER: 127 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (127, 2, '2024-09-24', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (127, 127, 1, 23);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    127, NULL, 'USD', 91.77000000000001, 91.77000000000001, 91.77000000000001,
    '2', '2024-09-24', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    127, '2024-09-24', 91.77000000000001, 0.00, 91.77000000000001, 'USD',
    127, 2, 127
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    127, 127, 1, 'Auto-generated',
    23, 'USD', 3.99, 0.00, 91.77000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    127, '2024-09-24', 1, 1
);
    
    
----- SALE NUMBER: 128 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (128, 15, '2024-09-25', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (128, 128, 1, 2);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    128, NULL, 'USD', 7.98, 7.98, 7.98,
    '2', '2024-09-25', 15, 852
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    128, '2024-09-25', 7.98, 0.00, 7.98, 'USD',
    128, 15, 128
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    128, 128, 1, 'Auto-generated',
    2, 'USD', 3.99, 0.00, 7.98
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    128, '2024-09-25', 14, 1
);
    
    
----- SALE NUMBER: 129 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (129, 1, '2024-09-26', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (129, 129, 5, 23);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    129, NULL, 'USD', 80.27000000000001, 80.27000000000001, 80.27000000000001,
    '2', '2024-09-26', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    129, '2024-09-26', 80.27000000000001, 0.00, 80.27000000000001, 'USD',
    129, 1, 129
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    129, 129, 5, 'Auto-generated',
    23, 'USD', 3.49, 0.00, 80.27000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    129, '2024-09-26', 0, 1
);
    
    
----- SALE NUMBER: 130 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (130, 17, '2024-09-27', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (130, 130, 0, 31);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    130, NULL, 'USD', 92.69000000000001, 92.69000000000001, 92.69000000000001,
    '2', '2024-09-27', 17, 951
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    130, '2024-09-27', 92.69000000000001, 0.00, 92.69000000000001, 'USD',
    130, 17, 130
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    130, 130, 0, 'Auto-generated',
    31, 'USD', 2.99, 0.00, 92.69000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    130, '2024-09-27', 16, 1
);
    
    
----- SALE NUMBER: 131 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (131, 5, '2024-09-28', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (131, 131, 3, 32);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    131, NULL, 'USD', 159.68, 159.68, 159.68,
    '2', '2024-09-28', 5, 321
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    131, '2024-09-28', 159.68, 0.00, 159.68, 'USD',
    131, 5, 131
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    131, 131, 3, 'Auto-generated',
    32, 'USD', 4.99, 0.00, 159.68
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    131, '2024-09-28', 4, 1
);
    
    
----- SALE NUMBER: 132 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (132, 1, '2024-09-29', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (132, 132, 7, 9);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    132, NULL, 'USD', 35.910000000000004, 35.910000000000004, 35.910000000000004,
    '2', '2024-09-29', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    132, '2024-09-29', 35.910000000000004, 0.00, 35.910000000000004, 'USD',
    132, 1, 132
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    132, 132, 7, 'Auto-generated',
    9, 'USD', 3.99, 0.00, 35.910000000000004
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    132, '2024-09-29', 0, 1
);
    
    
----- SALE NUMBER: 133 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (133, 4, '2024-09-30', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (133, 133, 8, 10);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    133, NULL, 'USD', 34.900000000000006, 34.900000000000006, 34.900000000000006,
    '2', '2024-09-30', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    133, '2024-09-30', 34.900000000000006, 0.00, 34.900000000000006, 'USD',
    133, 4, 133
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    133, 133, 8, 'Auto-generated',
    10, 'USD', 3.49, 0.00, 34.900000000000006
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    133, '2024-09-30', 3, 1
);
    
    
----- SALE NUMBER: 134 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (134, 14, '2024-10-01', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (134, 134, 4, 2);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    134, NULL, 'USD', 6.98, 6.98, 6.98,
    '2', '2024-10-01', 14, 159
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    134, '2024-10-01', 6.98, 0.00, 6.98, 'USD',
    134, 14, 134
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    134, 134, 4, 'Auto-generated',
    2, 'USD', 3.49, 0.00, 6.98
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    134, '2024-10-01', 13, 1
);
    
    
----- SALE NUMBER: 135 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (135, 19, '2024-10-02', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (135, 135, 4, 38);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    135, NULL, 'USD', 132.62, 132.62, 132.62,
    '2', '2024-10-02', 19, 654
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    135, '2024-10-02', 132.62, 0.00, 132.62, 'USD',
    135, 19, 135
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    135, 135, 4, 'Auto-generated',
    38, 'USD', 3.49, 0.00, 132.62
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    135, '2024-10-02', 18, 1
);
    
    
----- SALE NUMBER: 136 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (136, 9, '2024-10-03', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (136, 136, 3, 13);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    136, NULL, 'USD', 64.87, 64.87, 64.87,
    '2', '2024-10-03', 9, 456
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    136, '2024-10-03', 64.87, 0.00, 64.87, 'USD',
    136, 9, 136
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    136, 136, 3, 'Auto-generated',
    13, 'USD', 4.99, 0.00, 64.87
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    136, '2024-10-03', 8, 1
);
    
    
----- SALE NUMBER: 137 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (137, 9, '2024-10-04', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (137, 137, 5, 2);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    137, NULL, 'USD', 6.98, 6.98, 6.98,
    '2', '2024-10-04', 9, 456
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    137, '2024-10-04', 6.98, 0.00, 6.98, 'USD',
    137, 9, 137
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    137, 137, 5, 'Auto-generated',
    2, 'USD', 3.49, 0.00, 6.98
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    137, '2024-10-04', 8, 1
);
    
    
----- SALE NUMBER: 138 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (138, 18, '2024-10-05', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (138, 138, 2, 16);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    138, NULL, 'USD', 55.84, 55.84, 55.84,
    '2', '2024-10-05', 18, 258
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    138, '2024-10-05', 55.84, 0.00, 55.84, 'USD',
    138, 18, 138
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    138, 138, 2, 'Auto-generated',
    16, 'USD', 3.49, 0.00, 55.84
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    138, '2024-10-05', 17, 1
);
    
    
----- SALE NUMBER: 139 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (139, 4, '2024-10-06', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (139, 139, 5, 39);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    139, NULL, 'USD', 136.11, 136.11, 136.11,
    '2', '2024-10-06', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    139, '2024-10-06', 136.11, 0.00, 136.11, 'USD',
    139, 4, 139
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    139, 139, 5, 'Auto-generated',
    39, 'USD', 3.49, 0.00, 136.11
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    139, '2024-10-06', 3, 1
);
    
    
----- SALE NUMBER: 140 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (140, 12, '2024-10-07', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (140, 140, 4, 8);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    140, NULL, 'USD', 27.92, 27.92, 27.92,
    '2', '2024-10-07', 12, 864
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    140, '2024-10-07', 27.92, 0.00, 27.92, 'USD',
    140, 12, 140
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    140, 140, 4, 'Auto-generated',
    8, 'USD', 3.49, 0.00, 27.92
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    140, '2024-10-07', 11, 1
);
    
    
----- SALE NUMBER: 141 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (141, 16, '2024-10-08', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (141, 141, 7, 46);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    141, NULL, 'USD', 183.54000000000002, 183.54000000000002, 183.54000000000002,
    '2', '2024-10-08', 16, 357
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    141, '2024-10-08', 183.54000000000002, 0.00, 183.54000000000002, 'USD',
    141, 16, 141
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    141, 141, 7, 'Auto-generated',
    46, 'USD', 3.99, 0.00, 183.54000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    141, '2024-10-08', 15, 0
);
    
    
----- SALE NUMBER: 142 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (142, 14, '2024-10-09', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (142, 142, 7, 5);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    142, NULL, 'USD', 19.950000000000003, 19.950000000000003, 19.950000000000003,
    '2', '2024-10-09', 14, 159
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    142, '2024-10-09', 19.950000000000003, 0.00, 19.950000000000003, 'USD',
    142, 14, 142
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    142, 142, 7, 'Auto-generated',
    5, 'USD', 3.99, 0.00, 19.950000000000003
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    142, '2024-10-09', 13, 1
);
    
    
----- SALE NUMBER: 143 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (143, 8, '2024-10-10', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (143, 143, 7, 28);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    143, NULL, 'USD', 111.72, 111.72, 111.72,
    '2', '2024-10-10', 8, 123
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    143, '2024-10-10', 111.72, 0.00, 111.72, 'USD',
    143, 8, 143
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    143, 143, 7, 'Auto-generated',
    28, 'USD', 3.99, 0.00, 111.72
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    143, '2024-10-10', 7, 1
);
    
    
----- SALE NUMBER: 144 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (144, 14, '2024-10-11', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (144, 144, 0, 20);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    144, NULL, 'USD', 59.800000000000004, 59.800000000000004, 59.800000000000004,
    '2', '2024-10-11', 14, 159
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    144, '2024-10-11', 59.800000000000004, 0.00, 59.800000000000004, 'USD',
    144, 14, 144
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    144, 144, 0, 'Auto-generated',
    20, 'USD', 2.99, 0.00, 59.800000000000004
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    144, '2024-10-11', 13, 1
);
    
    
----- SALE NUMBER: 145 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (145, 19, '2024-10-12', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (145, 145, 6, 5);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    145, NULL, 'USD', 14.950000000000001, 14.950000000000001, 14.950000000000001,
    '2', '2024-10-12', 19, 654
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    145, '2024-10-12', 14.950000000000001, 0.00, 14.950000000000001, 'USD',
    145, 19, 145
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    145, 145, 6, 'Auto-generated',
    5, 'USD', 2.99, 0.00, 14.950000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    145, '2024-10-12', 18, 1
);
    
    
----- SALE NUMBER: 146 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (146, 14, '2024-10-13', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (146, 146, 1, 49);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    146, NULL, 'USD', 195.51000000000002, 195.51000000000002, 195.51000000000002,
    '2', '2024-10-13', 14, 159
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    146, '2024-10-13', 195.51000000000002, 0.00, 195.51000000000002, 'USD',
    146, 14, 146
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    146, 146, 1, 'Auto-generated',
    49, 'USD', 3.99, 0.00, 195.51000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    146, '2024-10-13', 13, 1
);
    
    
----- SALE NUMBER: 147 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (147, 3, '2024-10-14', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (147, 147, 0, 12);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    147, NULL, 'USD', 35.88, 35.88, 35.88,
    '2', '2024-10-14', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    147, '2024-10-14', 35.88, 0.00, 35.88, 'USD',
    147, 3, 147
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    147, 147, 0, 'Auto-generated',
    12, 'USD', 2.99, 0.00, 35.88
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    147, '2024-10-14', 2, 1
);
    
    
----- SALE NUMBER: 148 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (148, 7, '2024-10-15', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (148, 148, 6, 2);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    148, NULL, 'USD', 5.98, 5.98, 5.98,
    '2', '2024-10-15', 7, 987
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    148, '2024-10-15', 5.98, 0.00, 5.98, 'USD',
    148, 7, 148
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    148, 148, 6, 'Auto-generated',
    2, 'USD', 2.99, 0.00, 5.98
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    148, '2024-10-15', 6, 1
);
    
    
----- SALE NUMBER: 149 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (149, 5, '2024-10-16', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (149, 149, 8, 16);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    149, NULL, 'USD', 55.84, 55.84, 55.84,
    '2', '2024-10-16', 5, 321
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    149, '2024-10-16', 55.84, 0.00, 55.84, 'USD',
    149, 5, 149
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    149, 149, 8, 'Auto-generated',
    16, 'USD', 3.49, 0.00, 55.84
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    149, '2024-10-16', 4, 1
);
    
    
----- SALE NUMBER: 150 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (150, 9, '2024-10-17', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (150, 150, 3, 24);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    150, NULL, 'USD', 119.76, 119.76, 119.76,
    '2', '2024-10-17', 9, 456
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    150, '2024-10-17', 119.76, 0.00, 119.76, 'USD',
    150, 9, 150
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    150, 150, 3, 'Auto-generated',
    24, 'USD', 4.99, 0.00, 119.76
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    150, '2024-10-17', 8, 1
);
    
    
----- SALE NUMBER: 151 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (151, 3, '2024-10-18', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (151, 151, 4, 14);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    151, NULL, 'USD', 48.86, 48.86, 48.86,
    '2', '2024-10-18', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    151, '2024-10-18', 48.86, 0.00, 48.86, 'USD',
    151, 3, 151
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    151, 151, 4, 'Auto-generated',
    14, 'USD', 3.49, 0.00, 48.86
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    151, '2024-10-18', 2, 1
);
    
    
----- SALE NUMBER: 152 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (152, 9, '2024-10-19', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (152, 152, 0, 22);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    152, NULL, 'USD', 65.78, 65.78, 65.78,
    '2', '2024-10-19', 9, 456
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    152, '2024-10-19', 65.78, 0.00, 65.78, 'USD',
    152, 9, 152
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    152, 152, 0, 'Auto-generated',
    22, 'USD', 2.99, 0.00, 65.78
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    152, '2024-10-19', 8, 1
);
    
    
----- SALE NUMBER: 153 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (153, 12, '2024-10-20', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (153, 153, 4, 9);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    153, NULL, 'USD', 31.410000000000004, 31.410000000000004, 31.410000000000004,
    '2', '2024-10-20', 12, 864
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    153, '2024-10-20', 31.410000000000004, 0.00, 31.410000000000004, 'USD',
    153, 12, 153
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    153, 153, 4, 'Auto-generated',
    9, 'USD', 3.49, 0.00, 31.410000000000004
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    153, '2024-10-20', 11, 1
);
    
    
----- SALE NUMBER: 154 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (154, 15, '2024-10-21', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (154, 154, 4, 49);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    154, NULL, 'USD', 171.01000000000002, 171.01000000000002, 171.01000000000002,
    '2', '2024-10-21', 15, 852
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    154, '2024-10-21', 171.01000000000002, 0.00, 171.01000000000002, 'USD',
    154, 15, 154
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    154, 154, 4, 'Auto-generated',
    49, 'USD', 3.49, 0.00, 171.01000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    154, '2024-10-21', 14, 1
);
    
    
----- SALE NUMBER: 155 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (155, 5, '2024-10-22', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (155, 155, 8, 50);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    155, NULL, 'USD', 174.5, 174.5, 174.5,
    '2', '2024-10-22', 5, 321
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    155, '2024-10-22', 174.5, 0.00, 174.5, 'USD',
    155, 5, 155
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    155, 155, 8, 'Auto-generated',
    50, 'USD', 3.49, 0.00, 174.5
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    155, '2024-10-22', 4, 1
);
    
    
----- SALE NUMBER: 156 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (156, 6, '2024-10-23', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (156, 156, 0, 1);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    156, NULL, 'USD', 2.99, 2.99, 2.99,
    '2', '2024-10-23', 6, 654
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    156, '2024-10-23', 2.99, 0.00, 2.99, 'USD',
    156, 6, 156
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    156, 156, 0, 'Auto-generated',
    1, 'USD', 2.99, 0.00, 2.99
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    156, '2024-10-23', 5, 1
);
    
    
----- SALE NUMBER: 157 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (157, 11, '2024-10-24', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (157, 157, 6, 16);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    157, NULL, 'USD', 47.84, 47.84, 47.84,
    '2', '2024-10-24', 11, 579
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    157, '2024-10-24', 47.84, 0.00, 47.84, 'USD',
    157, 11, 157
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    157, 157, 6, 'Auto-generated',
    16, 'USD', 2.99, 0.00, 47.84
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    157, '2024-10-24', 10, 1
);
    
    
----- SALE NUMBER: 158 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (158, 17, '2024-10-25', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (158, 158, 4, 27);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    158, NULL, 'USD', 94.23, 94.23, 94.23,
    '2', '2024-10-25', 17, 951
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    158, '2024-10-25', 94.23, 0.00, 94.23, 'USD',
    158, 17, 158
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    158, 158, 4, 'Auto-generated',
    27, 'USD', 3.49, 0.00, 94.23
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    158, '2024-10-25', 16, 1
);
    
    
----- SALE NUMBER: 159 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (159, 3, '2024-10-26', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (159, 159, 4, 24);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    159, NULL, 'USD', 83.76, 83.76, 83.76,
    '2', '2024-10-26', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    159, '2024-10-26', 83.76, 0.00, 83.76, 'USD',
    159, 3, 159
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    159, 159, 4, 'Auto-generated',
    24, 'USD', 3.49, 0.00, 83.76
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    159, '2024-10-26', 2, 1
);
    
    
----- SALE NUMBER: 160 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (160, 16, '2024-10-27', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (160, 160, 1, 13);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    160, NULL, 'USD', 51.870000000000005, 51.870000000000005, 51.870000000000005,
    '2', '2024-10-27', 16, 357
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    160, '2024-10-27', 51.870000000000005, 0.00, 51.870000000000005, 'USD',
    160, 16, 160
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    160, 160, 1, 'Auto-generated',
    13, 'USD', 3.99, 0.00, 51.870000000000005
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    160, '2024-10-27', 15, 1
);
    
    
----- SALE NUMBER: 161 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (161, 15, '2024-10-28', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (161, 161, 0, 15);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    161, NULL, 'USD', 44.85, 44.85, 44.85,
    '2', '2024-10-28', 15, 852
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    161, '2024-10-28', 44.85, 0.00, 44.85, 'USD',
    161, 15, 161
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    161, 161, 0, 'Auto-generated',
    15, 'USD', 2.99, 0.00, 44.85
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    161, '2024-10-28', 14, 1
);
    
    
----- SALE NUMBER: 162 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (162, 9, '2024-10-29', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (162, 162, 5, 32);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    162, NULL, 'USD', 111.68, 111.68, 111.68,
    '2', '2024-10-29', 9, 456
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    162, '2024-10-29', 111.68, 0.00, 111.68, 'USD',
    162, 9, 162
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    162, 162, 5, 'Auto-generated',
    32, 'USD', 3.49, 0.00, 111.68
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    162, '2024-10-29', 8, 1
);
    
    
----- SALE NUMBER: 163 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (163, 13, '2024-10-30', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (163, 163, 2, 15);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    163, NULL, 'USD', 52.35, 52.35, 52.35,
    '2', '2024-10-30', 13, 753
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    163, '2024-10-30', 52.35, 0.00, 52.35, 'USD',
    163, 13, 163
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    163, 163, 2, 'Auto-generated',
    15, 'USD', 3.49, 0.00, 52.35
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    163, '2024-10-30', 12, 1
);
    
    
----- SALE NUMBER: 164 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (164, 10, '2024-10-31', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (164, 164, 7, 12);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    164, NULL, 'USD', 47.88, 47.88, 47.88,
    '2', '2024-10-31', 10, 246
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    164, '2024-10-31', 47.88, 0.00, 47.88, 'USD',
    164, 10, 164
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    164, 164, 7, 'Auto-generated',
    12, 'USD', 3.99, 0.00, 47.88
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    164, '2024-10-31', 9, 1
);
    
    
----- SALE NUMBER: 165 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (165, 14, '2024-11-01', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (165, 165, 6, 3);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    165, NULL, 'USD', 8.97, 8.97, 8.97,
    '2', '2024-11-01', 14, 159
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    165, '2024-11-01', 8.97, 0.00, 8.97, 'USD',
    165, 14, 165
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    165, 165, 6, 'Auto-generated',
    3, 'USD', 2.99, 0.00, 8.97
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    165, '2024-11-01', 13, 1
);
    
    
----- SALE NUMBER: 166 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (166, 1, '2024-11-02', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (166, 166, 6, 42);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    166, NULL, 'USD', 125.58000000000001, 125.58000000000001, 125.58000000000001,
    '2', '2024-11-02', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    166, '2024-11-02', 125.58000000000001, 0.00, 125.58000000000001, 'USD',
    166, 1, 166
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    166, 166, 6, 'Auto-generated',
    42, 'USD', 2.99, 0.00, 125.58000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    166, '2024-11-02', 0, 1
);
    
    
----- SALE NUMBER: 167 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (167, 4, '2024-11-03', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (167, 167, 3, 33);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    167, NULL, 'USD', 164.67000000000002, 164.67000000000002, 164.67000000000002,
    '2', '2024-11-03', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    167, '2024-11-03', 164.67000000000002, 0.00, 164.67000000000002, 'USD',
    167, 4, 167
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    167, 167, 3, 'Auto-generated',
    33, 'USD', 4.99, 0.00, 164.67000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    167, '2024-11-03', 3, 1
);
    
    
----- SALE NUMBER: 168 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (168, 15, '2024-11-04', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (168, 168, 7, 41);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    168, NULL, 'USD', 163.59, 163.59, 163.59,
    '2', '2024-11-04', 15, 852
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    168, '2024-11-04', 163.59, 0.00, 163.59, 'USD',
    168, 15, 168
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    168, 168, 7, 'Auto-generated',
    41, 'USD', 3.99, 0.00, 163.59
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    168, '2024-11-04', 14, 1
);
    
    
----- SALE NUMBER: 169 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (169, 6, '2024-11-05', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (169, 169, 7, 43);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    169, NULL, 'USD', 171.57000000000002, 171.57000000000002, 171.57000000000002,
    '2', '2024-11-05', 6, 654
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    169, '2024-11-05', 171.57000000000002, 0.00, 171.57000000000002, 'USD',
    169, 6, 169
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    169, 169, 7, 'Auto-generated',
    43, 'USD', 3.99, 0.00, 171.57000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    169, '2024-11-05', 5, 1
);
    
    
----- SALE NUMBER: 170 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (170, 16, '2024-11-06', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (170, 170, 0, 24);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    170, NULL, 'USD', 71.76, 71.76, 71.76,
    '2', '2024-11-06', 16, 357
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    170, '2024-11-06', 71.76, 0.00, 71.76, 'USD',
    170, 16, 170
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    170, 170, 0, 'Auto-generated',
    24, 'USD', 2.99, 0.00, 71.76
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    170, '2024-11-06', 15, 1
);
    
    
----- SALE NUMBER: 171 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (171, 16, '2024-11-07', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (171, 171, 1, 15);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    171, NULL, 'USD', 59.85, 59.85, 59.85,
    '2', '2024-11-07', 16, 357
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    171, '2024-11-07', 59.85, 0.00, 59.85, 'USD',
    171, 16, 171
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    171, 171, 1, 'Auto-generated',
    15, 'USD', 3.99, 0.00, 59.85
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    171, '2024-11-07', 15, 1
);
    
    
----- SALE NUMBER: 172 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (172, 14, '2024-11-08', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (172, 172, 8, 25);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    172, NULL, 'USD', 87.25, 87.25, 87.25,
    '2', '2024-11-08', 14, 159
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    172, '2024-11-08', 87.25, 0.00, 87.25, 'USD',
    172, 14, 172
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    172, 172, 8, 'Auto-generated',
    25, 'USD', 3.49, 0.00, 87.25
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    172, '2024-11-08', 13, 1
);
    
    
----- SALE NUMBER: 173 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (173, 8, '2024-11-09', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (173, 173, 0, 33);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    173, NULL, 'USD', 98.67, 98.67, 98.67,
    '2', '2024-11-09', 8, 123
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    173, '2024-11-09', 98.67, 0.00, 98.67, 'USD',
    173, 8, 173
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    173, 173, 0, 'Auto-generated',
    33, 'USD', 2.99, 0.00, 98.67
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    173, '2024-11-09', 7, 1
);
    
    
----- SALE NUMBER: 174 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (174, 12, '2024-11-10', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (174, 174, 1, 31);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    174, NULL, 'USD', 123.69000000000001, 123.69000000000001, 123.69000000000001,
    '2', '2024-11-10', 12, 864
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    174, '2024-11-10', 123.69000000000001, 0.00, 123.69000000000001, 'USD',
    174, 12, 174
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    174, 174, 1, 'Auto-generated',
    31, 'USD', 3.99, 0.00, 123.69000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    174, '2024-11-10', 11, 1
);
    
    
----- SALE NUMBER: 175 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (175, 2, '2024-11-11', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (175, 175, 3, 16);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    175, NULL, 'USD', 79.84, 79.84, 79.84,
    '2', '2024-11-11', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    175, '2024-11-11', 79.84, 0.00, 79.84, 'USD',
    175, 2, 175
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    175, 175, 3, 'Auto-generated',
    16, 'USD', 4.99, 0.00, 79.84
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    175, '2024-11-11', 1, 1
);
    
    
----- SALE NUMBER: 176 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (176, 13, '2024-11-12', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (176, 176, 7, 21);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    176, NULL, 'USD', 83.79, 83.79, 83.79,
    '2', '2024-11-12', 13, 753
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    176, '2024-11-12', 83.79, 0.00, 83.79, 'USD',
    176, 13, 176
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    176, 176, 7, 'Auto-generated',
    21, 'USD', 3.99, 0.00, 83.79
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    176, '2024-11-12', 12, 1
);
    
    
----- SALE NUMBER: 177 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (177, 6, '2024-11-13', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (177, 177, 2, 23);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    177, NULL, 'USD', 80.27000000000001, 80.27000000000001, 80.27000000000001,
    '2', '2024-11-13', 6, 654
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    177, '2024-11-13', 80.27000000000001, 0.00, 80.27000000000001, 'USD',
    177, 6, 177
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    177, 177, 2, 'Auto-generated',
    23, 'USD', 3.49, 0.00, 80.27000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    177, '2024-11-13', 5, 1
);
    
    
----- SALE NUMBER: 178 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (178, 7, '2024-11-14', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (178, 178, 6, 38);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    178, NULL, 'USD', 113.62, 113.62, 113.62,
    '2', '2024-11-14', 7, 987
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    178, '2024-11-14', 113.62, 0.00, 113.62, 'USD',
    178, 7, 178
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    178, 178, 6, 'Auto-generated',
    38, 'USD', 2.99, 0.00, 113.62
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    178, '2024-11-14', 6, 1
);
    
    
----- SALE NUMBER: 179 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (179, 16, '2024-11-15', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (179, 179, 8, 50);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    179, NULL, 'USD', 174.5, 174.5, 174.5,
    '2', '2024-11-15', 16, 357
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    179, '2024-11-15', 174.5, 0.00, 174.5, 'USD',
    179, 16, 179
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    179, 179, 8, 'Auto-generated',
    50, 'USD', 3.49, 0.00, 174.5
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    179, '2024-11-15', 15, 1
);
    
    
----- SALE NUMBER: 180 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (180, 13, '2024-11-16', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (180, 180, 0, 9);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    180, NULL, 'USD', 26.910000000000004, 26.910000000000004, 26.910000000000004,
    '2', '2024-11-16', 13, 753
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    180, '2024-11-16', 26.910000000000004, 0.00, 26.910000000000004, 'USD',
    180, 13, 180
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    180, 180, 0, 'Auto-generated',
    9, 'USD', 2.99, 0.00, 26.910000000000004
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    180, '2024-11-16', 12, 1
);
    
    
----- SALE NUMBER: 181 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (181, 1, '2024-11-17', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (181, 181, 1, 17);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    181, NULL, 'USD', 67.83, 67.83, 67.83,
    '2', '2024-11-17', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    181, '2024-11-17', 67.83, 0.00, 67.83, 'USD',
    181, 1, 181
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    181, 181, 1, 'Auto-generated',
    17, 'USD', 3.99, 0.00, 67.83
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    181, '2024-11-17', 0, 1
);
    
    
----- SALE NUMBER: 182 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (182, 10, '2024-11-18', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (182, 182, 6, 48);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    182, NULL, 'USD', 143.52, 143.52, 143.52,
    '2', '2024-11-18', 10, 246
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    182, '2024-11-18', 143.52, 0.00, 143.52, 'USD',
    182, 10, 182
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    182, 182, 6, 'Auto-generated',
    48, 'USD', 2.99, 0.00, 143.52
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    182, '2024-11-18', 9, 1
);
    
    
----- SALE NUMBER: 183 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (183, 1, '2024-11-19', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (183, 183, 3, 37);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    183, NULL, 'USD', 184.63, 184.63, 184.63,
    '2', '2024-11-19', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    183, '2024-11-19', 184.63, 0.00, 184.63, 'USD',
    183, 1, 183
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    183, 183, 3, 'Auto-generated',
    37, 'USD', 4.99, 0.00, 184.63
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    183, '2024-11-19', 0, 1
);
    
    
----- SALE NUMBER: 184 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (184, 1, '2024-11-20', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (184, 184, 8, 37);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    184, NULL, 'USD', 129.13, 129.13, 129.13,
    '2', '2024-11-20', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    184, '2024-11-20', 129.13, 0.00, 129.13, 'USD',
    184, 1, 184
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    184, 184, 8, 'Auto-generated',
    37, 'USD', 3.49, 0.00, 129.13
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    184, '2024-11-20', 0, 1
);
    
    
----- SALE NUMBER: 185 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (185, 14, '2024-11-21', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (185, 185, 7, 42);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    185, NULL, 'USD', 167.58, 167.58, 167.58,
    '2', '2024-11-21', 14, 159
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    185, '2024-11-21', 167.58, 0.00, 167.58, 'USD',
    185, 14, 185
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    185, 185, 7, 'Auto-generated',
    42, 'USD', 3.99, 0.00, 167.58
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    185, '2024-11-21', 13, 1
);
    
    
----- SALE NUMBER: 186 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (186, 19, '2024-11-22', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (186, 186, 2, 4);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    186, NULL, 'USD', 13.96, 13.96, 13.96,
    '2', '2024-11-22', 19, 654
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    186, '2024-11-22', 13.96, 0.00, 13.96, 'USD',
    186, 19, 186
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    186, 186, 2, 'Auto-generated',
    4, 'USD', 3.49, 0.00, 13.96
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    186, '2024-11-22', 18, 1
);
    
    
----- SALE NUMBER: 187 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (187, 18, '2024-11-23', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (187, 187, 4, 19);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    187, NULL, 'USD', 66.31, 66.31, 66.31,
    '2', '2024-11-23', 18, 258
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    187, '2024-11-23', 66.31, 0.00, 66.31, 'USD',
    187, 18, 187
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    187, 187, 4, 'Auto-generated',
    19, 'USD', 3.49, 0.00, 66.31
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    187, '2024-11-23', 17, 1
);
    
    
----- SALE NUMBER: 188 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (188, 3, '2024-11-24', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (188, 188, 2, 43);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    188, NULL, 'USD', 150.07000000000002, 150.07000000000002, 150.07000000000002,
    '2', '2024-11-24', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    188, '2024-11-24', 150.07000000000002, 0.00, 150.07000000000002, 'USD',
    188, 3, 188
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    188, 188, 2, 'Auto-generated',
    43, 'USD', 3.49, 0.00, 150.07000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    188, '2024-11-24', 2, 1
);
    
    
----- SALE NUMBER: 189 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (189, 9, '2024-11-25', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (189, 189, 3, 29);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    189, NULL, 'USD', 144.71, 144.71, 144.71,
    '2', '2024-11-25', 9, 456
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    189, '2024-11-25', 144.71, 0.00, 144.71, 'USD',
    189, 9, 189
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    189, 189, 3, 'Auto-generated',
    29, 'USD', 4.99, 0.00, 144.71
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    189, '2024-11-25', 8, 1
);
    
    
----- SALE NUMBER: 190 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (190, 17, '2024-11-26', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (190, 190, 2, 50);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    190, NULL, 'USD', 174.5, 174.5, 174.5,
    '2', '2024-11-26', 17, 951
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    190, '2024-11-26', 174.5, 0.00, 174.5, 'USD',
    190, 17, 190
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    190, 190, 2, 'Auto-generated',
    50, 'USD', 3.49, 0.00, 174.5
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    190, '2024-11-26', 16, 1
);
    
    
----- SALE NUMBER: 191 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (191, 5, '2024-11-27', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (191, 191, 2, 45);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    191, NULL, 'USD', 157.05, 157.05, 157.05,
    '2', '2024-11-27', 5, 321
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    191, '2024-11-27', 157.05, 0.00, 157.05, 'USD',
    191, 5, 191
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    191, 191, 2, 'Auto-generated',
    45, 'USD', 3.49, 0.00, 157.05
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    191, '2024-11-27', 4, 1
);
    
    
----- SALE NUMBER: 192 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (192, 10, '2024-11-28', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (192, 192, 0, 22);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    192, NULL, 'USD', 65.78, 65.78, 65.78,
    '2', '2024-11-28', 10, 246
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    192, '2024-11-28', 65.78, 0.00, 65.78, 'USD',
    192, 10, 192
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    192, 192, 0, 'Auto-generated',
    22, 'USD', 2.99, 0.00, 65.78
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    192, '2024-11-28', 9, 1
);
    
    
----- SALE NUMBER: 193 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (193, 17, '2024-11-29', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (193, 193, 6, 27);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    193, NULL, 'USD', 80.73, 80.73, 80.73,
    '2', '2024-11-29', 17, 951
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    193, '2024-11-29', 80.73, 0.00, 80.73, 'USD',
    193, 17, 193
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    193, 193, 6, 'Auto-generated',
    27, 'USD', 2.99, 0.00, 80.73
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    193, '2024-11-29', 16, 1
);
    
    
----- SALE NUMBER: 194 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (194, 2, '2024-11-30', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (194, 194, 3, 15);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    194, NULL, 'USD', 74.85000000000001, 74.85000000000001, 74.85000000000001,
    '2', '2024-11-30', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    194, '2024-11-30', 74.85000000000001, 0.00, 74.85000000000001, 'USD',
    194, 2, 194
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    194, 194, 3, 'Auto-generated',
    15, 'USD', 4.99, 0.00, 74.85000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    194, '2024-11-30', 1, 1
);
    
    
----- SALE NUMBER: 195 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (195, 15, '2024-12-01', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (195, 195, 7, 33);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    195, NULL, 'USD', 131.67000000000002, 131.67000000000002, 131.67000000000002,
    '2', '2024-12-01', 15, 852
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    195, '2024-12-01', 131.67000000000002, 0.00, 131.67000000000002, 'USD',
    195, 15, 195
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    195, 195, 7, 'Auto-generated',
    33, 'USD', 3.99, 0.00, 131.67000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    195, '2024-12-01', 14, 1
);
    
    
----- SALE NUMBER: 196 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (196, 12, '2024-12-02', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (196, 196, 5, 31);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    196, NULL, 'USD', 108.19000000000001, 108.19000000000001, 108.19000000000001,
    '2', '2024-12-02', 12, 864
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    196, '2024-12-02', 108.19000000000001, 0.00, 108.19000000000001, 'USD',
    196, 12, 196
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    196, 196, 5, 'Auto-generated',
    31, 'USD', 3.49, 0.00, 108.19000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    196, '2024-12-02', 11, 1
);
    
    
----- SALE NUMBER: 197 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (197, 2, '2024-12-03', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (197, 197, 4, 18);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    197, NULL, 'USD', 62.82000000000001, 62.82000000000001, 62.82000000000001,
    '2', '2024-12-03', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    197, '2024-12-03', 62.82000000000001, 0.00, 62.82000000000001, 'USD',
    197, 2, 197
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    197, 197, 4, 'Auto-generated',
    18, 'USD', 3.49, 0.00, 62.82000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    197, '2024-12-03', 1, 1
);
    
    
----- SALE NUMBER: 198 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (198, 1, '2024-12-04', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (198, 198, 6, 21);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    198, NULL, 'USD', 62.790000000000006, 62.790000000000006, 62.790000000000006,
    '2', '2024-12-04', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    198, '2024-12-04', 62.790000000000006, 0.00, 62.790000000000006, 'USD',
    198, 1, 198
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    198, 198, 6, 'Auto-generated',
    21, 'USD', 2.99, 0.00, 62.790000000000006
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    198, '2024-12-04', 0, 1
);
    
    
----- SALE NUMBER: 199 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (199, 19, '2024-12-05', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (199, 199, 1, 46);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    199, NULL, 'USD', 183.54000000000002, 183.54000000000002, 183.54000000000002,
    '2', '2024-12-05', 19, 654
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    199, '2024-12-05', 183.54000000000002, 0.00, 183.54000000000002, 'USD',
    199, 19, 199
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    199, 199, 1, 'Auto-generated',
    46, 'USD', 3.99, 0.00, 183.54000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    199, '2024-12-05', 18, 1
);
    
    
----- SALE NUMBER: 200 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (200, 12, '2024-12-06', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (200, 200, 2, 24);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    200, NULL, 'USD', 83.76, 83.76, 83.76,
    '2', '2024-12-06', 12, 864
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    200, '2024-12-06', 83.76, 0.00, 83.76, 'USD',
    200, 12, 200
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    200, 200, 2, 'Auto-generated',
    24, 'USD', 3.49, 0.00, 83.76
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    200, '2024-12-06', 11, 1
);
    
    
----- SALE NUMBER: 201 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (201, 7, '2024-12-07', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (201, 201, 3, 49);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    201, NULL, 'USD', 244.51000000000002, 244.51000000000002, 244.51000000000002,
    '2', '2024-12-07', 7, 987
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    201, '2024-12-07', 244.51000000000002, 0.00, 244.51000000000002, 'USD',
    201, 7, 201
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    201, 201, 3, 'Auto-generated',
    49, 'USD', 4.99, 0.00, 244.51000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    201, '2024-12-07', 6, 1
);
    
    
----- SALE NUMBER: 202 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (202, 7, '2024-12-08', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (202, 202, 2, 17);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    202, NULL, 'USD', 59.330000000000005, 59.330000000000005, 59.330000000000005,
    '2', '2024-12-08', 7, 987
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    202, '2024-12-08', 59.330000000000005, 0.00, 59.330000000000005, 'USD',
    202, 7, 202
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    202, 202, 2, 'Auto-generated',
    17, 'USD', 3.49, 0.00, 59.330000000000005
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    202, '2024-12-08', 6, 1
);
    
    
----- SALE NUMBER: 203 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (203, 7, '2024-12-09', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (203, 203, 0, 26);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    203, NULL, 'USD', 77.74000000000001, 77.74000000000001, 77.74000000000001,
    '2', '2024-12-09', 7, 987
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    203, '2024-12-09', 77.74000000000001, 0.00, 77.74000000000001, 'USD',
    203, 7, 203
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    203, 203, 0, 'Auto-generated',
    26, 'USD', 2.99, 0.00, 77.74000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    203, '2024-12-09', 6, 1
);
    
    
----- SALE NUMBER: 204 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (204, 13, '2024-12-10', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (204, 204, 0, 22);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    204, NULL, 'USD', 65.78, 65.78, 65.78,
    '2', '2024-12-10', 13, 753
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    204, '2024-12-10', 65.78, 0.00, 65.78, 'USD',
    204, 13, 204
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    204, 204, 0, 'Auto-generated',
    22, 'USD', 2.99, 0.00, 65.78
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    204, '2024-12-10', 12, 1
);
    
    
----- SALE NUMBER: 205 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (205, 5, '2024-12-11', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (205, 205, 7, 32);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    205, NULL, 'USD', 127.68, 127.68, 127.68,
    '2', '2024-12-11', 5, 321
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    205, '2024-12-11', 127.68, 0.00, 127.68, 'USD',
    205, 5, 205
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    205, 205, 7, 'Auto-generated',
    32, 'USD', 3.99, 0.00, 127.68
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    205, '2024-12-11', 4, 1
);
    
    
----- SALE NUMBER: 206 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (206, 1, '2024-12-12', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (206, 206, 1, 38);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    206, NULL, 'USD', 151.62, 151.62, 151.62,
    '2', '2024-12-12', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    206, '2024-12-12', 151.62, 0.00, 151.62, 'USD',
    206, 1, 206
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    206, 206, 1, 'Auto-generated',
    38, 'USD', 3.99, 0.00, 151.62
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    206, '2024-12-12', 0, 1
);
    
    
----- SALE NUMBER: 207 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (207, 7, '2024-12-13', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (207, 207, 8, 50);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    207, NULL, 'USD', 174.5, 174.5, 174.5,
    '2', '2024-12-13', 7, 987
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    207, '2024-12-13', 174.5, 0.00, 174.5, 'USD',
    207, 7, 207
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    207, 207, 8, 'Auto-generated',
    50, 'USD', 3.49, 0.00, 174.5
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    207, '2024-12-13', 6, 1
);
    
    
----- SALE NUMBER: 208 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (208, 15, '2024-12-14', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (208, 208, 1, 49);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    208, NULL, 'USD', 195.51000000000002, 195.51000000000002, 195.51000000000002,
    '2', '2024-12-14', 15, 852
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    208, '2024-12-14', 195.51000000000002, 0.00, 195.51000000000002, 'USD',
    208, 15, 208
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    208, 208, 1, 'Auto-generated',
    49, 'USD', 3.99, 0.00, 195.51000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    208, '2024-12-14', 14, 1
);
    
    
----- SALE NUMBER: 209 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (209, 5, '2024-12-15', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (209, 209, 3, 39);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    209, NULL, 'USD', 194.61, 194.61, 194.61,
    '2', '2024-12-15', 5, 321
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    209, '2024-12-15', 194.61, 0.00, 194.61, 'USD',
    209, 5, 209
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    209, 209, 3, 'Auto-generated',
    39, 'USD', 4.99, 0.00, 194.61
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    209, '2024-12-15', 4, 1
);
    
    
----- SALE NUMBER: 210 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (210, 2, '2024-12-16', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (210, 210, 8, 44);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    210, NULL, 'USD', 153.56, 153.56, 153.56,
    '2', '2024-12-16', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    210, '2024-12-16', 153.56, 0.00, 153.56, 'USD',
    210, 2, 210
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    210, 210, 8, 'Auto-generated',
    44, 'USD', 3.49, 0.00, 153.56
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    210, '2024-12-16', 1, 1
);
    
    
----- SALE NUMBER: 211 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (211, 3, '2024-12-17', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (211, 211, 4, 19);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    211, NULL, 'USD', 66.31, 66.31, 66.31,
    '2', '2024-12-17', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    211, '2024-12-17', 66.31, 0.00, 66.31, 'USD',
    211, 3, 211
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    211, 211, 4, 'Auto-generated',
    19, 'USD', 3.49, 0.00, 66.31
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    211, '2024-12-17', 2, 1
);
    
    
----- SALE NUMBER: 212 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (212, 8, '2024-12-18', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (212, 212, 5, 21);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    212, NULL, 'USD', 73.29, 73.29, 73.29,
    '2', '2024-12-18', 8, 123
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    212, '2024-12-18', 73.29, 0.00, 73.29, 'USD',
    212, 8, 212
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    212, 212, 5, 'Auto-generated',
    21, 'USD', 3.49, 0.00, 73.29
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    212, '2024-12-18', 7, 1
);
    
    
----- SALE NUMBER: 213 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (213, 10, '2024-12-19', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (213, 213, 4, 1);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    213, NULL, 'USD', 3.49, 3.49, 3.49,
    '2', '2024-12-19', 10, 246
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    213, '2024-12-19', 3.49, 0.00, 3.49, 'USD',
    213, 10, 213
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    213, 213, 4, 'Auto-generated',
    1, 'USD', 3.49, 0.00, 3.49
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    213, '2024-12-19', 9, 1
);
    
    
----- SALE NUMBER: 214 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (214, 3, '2024-12-20', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (214, 214, 4, 41);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    214, NULL, 'USD', 143.09, 143.09, 143.09,
    '2', '2024-12-20', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    214, '2024-12-20', 143.09, 0.00, 143.09, 'USD',
    214, 3, 214
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    214, 214, 4, 'Auto-generated',
    41, 'USD', 3.49, 0.00, 143.09
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    214, '2024-12-20', 2, 1
);
    
    
----- SALE NUMBER: 215 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (215, 9, '2024-12-21', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (215, 215, 6, 13);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    215, NULL, 'USD', 38.870000000000005, 38.870000000000005, 38.870000000000005,
    '2', '2024-12-21', 9, 456
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    215, '2024-12-21', 38.870000000000005, 0.00, 38.870000000000005, 'USD',
    215, 9, 215
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    215, 215, 6, 'Auto-generated',
    13, 'USD', 2.99, 0.00, 38.870000000000005
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    215, '2024-12-21', 8, 1
);
    
    
----- SALE NUMBER: 216 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (216, 15, '2024-12-22', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (216, 216, 8, 25);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    216, NULL, 'USD', 87.25, 87.25, 87.25,
    '2', '2024-12-22', 15, 852
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    216, '2024-12-22', 87.25, 0.00, 87.25, 'USD',
    216, 15, 216
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    216, 216, 8, 'Auto-generated',
    25, 'USD', 3.49, 0.00, 87.25
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    216, '2024-12-22', 14, 1
);
    
    
----- SALE NUMBER: 217 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (217, 14, '2024-12-23', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (217, 217, 0, 41);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    217, NULL, 'USD', 122.59, 122.59, 122.59,
    '2', '2024-12-23', 14, 159
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    217, '2024-12-23', 122.59, 0.00, 122.59, 'USD',
    217, 14, 217
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    217, 217, 0, 'Auto-generated',
    41, 'USD', 2.99, 0.00, 122.59
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    217, '2024-12-23', 13, 1
);
    
    
----- SALE NUMBER: 218 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (218, 15, '2024-12-24', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (218, 218, 2, 7);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    218, NULL, 'USD', 24.43, 24.43, 24.43,
    '2', '2024-12-24', 15, 852
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    218, '2024-12-24', 24.43, 0.00, 24.43, 'USD',
    218, 15, 218
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    218, 218, 2, 'Auto-generated',
    7, 'USD', 3.49, 0.00, 24.43
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    218, '2024-12-24', 14, 1
);
    
    
----- SALE NUMBER: 219 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (219, 8, '2024-12-25', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (219, 219, 1, 32);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    219, NULL, 'USD', 127.68, 127.68, 127.68,
    '2', '2024-12-25', 8, 123
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    219, '2024-12-25', 127.68, 0.00, 127.68, 'USD',
    219, 8, 219
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    219, 219, 1, 'Auto-generated',
    32, 'USD', 3.99, 0.00, 127.68
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    219, '2024-12-25', 7, 1
);
    
    
----- SALE NUMBER: 220 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (220, 15, '2024-12-26', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (220, 220, 8, 10);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    220, NULL, 'USD', 34.900000000000006, 34.900000000000006, 34.900000000000006,
    '2', '2024-12-26', 15, 852
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    220, '2024-12-26', 34.900000000000006, 0.00, 34.900000000000006, 'USD',
    220, 15, 220
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    220, 220, 8, 'Auto-generated',
    10, 'USD', 3.49, 0.00, 34.900000000000006
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    220, '2024-12-26', 14, 1
);
    
    
----- SALE NUMBER: 221 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (221, 8, '2024-12-27', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (221, 221, 5, 29);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    221, NULL, 'USD', 101.21000000000001, 101.21000000000001, 101.21000000000001,
    '2', '2024-12-27', 8, 123
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    221, '2024-12-27', 101.21000000000001, 0.00, 101.21000000000001, 'USD',
    221, 8, 221
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    221, 221, 5, 'Auto-generated',
    29, 'USD', 3.49, 0.00, 101.21000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    221, '2024-12-27', 7, 1
);
    
    
----- SALE NUMBER: 222 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (222, 12, '2024-12-28', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (222, 222, 2, 49);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    222, NULL, 'USD', 171.01000000000002, 171.01000000000002, 171.01000000000002,
    '2', '2024-12-28', 12, 864
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    222, '2024-12-28', 171.01000000000002, 0.00, 171.01000000000002, 'USD',
    222, 12, 222
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    222, 222, 2, 'Auto-generated',
    49, 'USD', 3.49, 0.00, 171.01000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    222, '2024-12-28', 11, 1
);
    
    
----- SALE NUMBER: 223 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (223, 15, '2024-12-29', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (223, 223, 7, 28);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    223, NULL, 'USD', 111.72, 111.72, 111.72,
    '2', '2024-12-29', 15, 852
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    223, '2024-12-29', 111.72, 0.00, 111.72, 'USD',
    223, 15, 223
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    223, 223, 7, 'Auto-generated',
    28, 'USD', 3.99, 0.00, 111.72
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    223, '2024-12-29', 14, 1
);
    
    
----- SALE NUMBER: 224 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (224, 17, '2024-12-30', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (224, 224, 1, 46);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    224, NULL, 'USD', 183.54000000000002, 183.54000000000002, 183.54000000000002,
    '2', '2024-12-30', 17, 951
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    224, '2024-12-30', 183.54000000000002, 0.00, 183.54000000000002, 'USD',
    224, 17, 224
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    224, 224, 1, 'Auto-generated',
    46, 'USD', 3.99, 0.00, 183.54000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    224, '2024-12-30', 16, 1
);
    
    
----- SALE NUMBER: 225 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (225, 4, '2024-12-31', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (225, 225, 6, 8);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    225, NULL, 'USD', 23.92, 23.92, 23.92,
    '2', '2024-12-31', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    225, '2024-12-31', 23.92, 0.00, 23.92, 'USD',
    225, 4, 225
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    225, 225, 6, 'Auto-generated',
    8, 'USD', 2.99, 0.00, 23.92
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    225, '2024-12-31', 3, 1
);
    
    
----- SALE NUMBER: 226 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (226, 19, '2025-01-01', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (226, 226, 4, 9);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    226, NULL, 'USD', 31.410000000000004, 31.410000000000004, 31.410000000000004,
    '2', '2025-01-01', 19, 654
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    226, '2025-01-01', 31.410000000000004, 0.00, 31.410000000000004, 'USD',
    226, 19, 226
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    226, 226, 4, 'Auto-generated',
    9, 'USD', 3.49, 0.00, 31.410000000000004
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    226, '2025-01-01', 18, 1
);
    
    
----- SALE NUMBER: 227 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (227, 10, '2025-01-02', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (227, 227, 4, 14);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    227, NULL, 'USD', 48.86, 48.86, 48.86,
    '2', '2025-01-02', 10, 246
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    227, '2025-01-02', 48.86, 0.00, 48.86, 'USD',
    227, 10, 227
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    227, 227, 4, 'Auto-generated',
    14, 'USD', 3.49, 0.00, 48.86
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    227, '2025-01-02', 9, 1
);
    
    
----- SALE NUMBER: 228 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (228, 9, '2025-01-03', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (228, 228, 3, 47);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    228, NULL, 'USD', 234.53, 234.53, 234.53,
    '2', '2025-01-03', 9, 456
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    228, '2025-01-03', 234.53, 0.00, 234.53, 'USD',
    228, 9, 228
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    228, 228, 3, 'Auto-generated',
    47, 'USD', 4.99, 0.00, 234.53
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    228, '2025-01-03', 8, 1
);
    
    
----- SALE NUMBER: 229 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (229, 10, '2025-01-04', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (229, 229, 5, 26);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    229, NULL, 'USD', 90.74000000000001, 90.74000000000001, 90.74000000000001,
    '2', '2025-01-04', 10, 246
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    229, '2025-01-04', 90.74000000000001, 0.00, 90.74000000000001, 'USD',
    229, 10, 229
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    229, 229, 5, 'Auto-generated',
    26, 'USD', 3.49, 0.00, 90.74000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    229, '2025-01-04', 9, 1
);
    
    
----- SALE NUMBER: 230 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (230, 10, '2025-01-05', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (230, 230, 1, 37);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    230, NULL, 'USD', 147.63, 147.63, 147.63,
    '2', '2025-01-05', 10, 246
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    230, '2025-01-05', 147.63, 0.00, 147.63, 'USD',
    230, 10, 230
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    230, 230, 1, 'Auto-generated',
    37, 'USD', 3.99, 0.00, 147.63
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    230, '2025-01-05', 9, 1
);
    
    
----- SALE NUMBER: 231 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (231, 6, '2025-01-06', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (231, 231, 0, 29);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    231, NULL, 'USD', 86.71000000000001, 86.71000000000001, 86.71000000000001,
    '2', '2025-01-06', 6, 654
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    231, '2025-01-06', 86.71000000000001, 0.00, 86.71000000000001, 'USD',
    231, 6, 231
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    231, 231, 0, 'Auto-generated',
    29, 'USD', 2.99, 0.00, 86.71000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    231, '2025-01-06', 5, 1
);
    
    
----- SALE NUMBER: 232 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (232, 5, '2025-01-07', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (232, 232, 0, 27);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    232, NULL, 'USD', 80.73, 80.73, 80.73,
    '2', '2025-01-07', 5, 321
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    232, '2025-01-07', 80.73, 0.00, 80.73, 'USD',
    232, 5, 232
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    232, 232, 0, 'Auto-generated',
    27, 'USD', 2.99, 0.00, 80.73
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    232, '2025-01-07', 4, 1
);
    
    
----- SALE NUMBER: 233 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (233, 6, '2025-01-08', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (233, 233, 3, 38);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    233, NULL, 'USD', 189.62, 189.62, 189.62,
    '2', '2025-01-08', 6, 654
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    233, '2025-01-08', 189.62, 0.00, 189.62, 'USD',
    233, 6, 233
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    233, 233, 3, 'Auto-generated',
    38, 'USD', 4.99, 0.00, 189.62
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    233, '2025-01-08', 5, 1
);
    
    
----- SALE NUMBER: 234 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (234, 15, '2025-01-09', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (234, 234, 7, 24);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    234, NULL, 'USD', 95.76, 95.76, 95.76,
    '2', '2025-01-09', 15, 852
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    234, '2025-01-09', 95.76, 0.00, 95.76, 'USD',
    234, 15, 234
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    234, 234, 7, 'Auto-generated',
    24, 'USD', 3.99, 0.00, 95.76
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    234, '2025-01-09', 14, 1
);
    
    
----- SALE NUMBER: 235 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (235, 4, '2025-01-10', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (235, 235, 6, 45);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    235, NULL, 'USD', 134.55, 134.55, 134.55,
    '2', '2025-01-10', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    235, '2025-01-10', 134.55, 0.00, 134.55, 'USD',
    235, 4, 235
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    235, 235, 6, 'Auto-generated',
    45, 'USD', 2.99, 0.00, 134.55
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    235, '2025-01-10', 3, 1
);
    
    
----- SALE NUMBER: 236 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (236, 7, '2025-01-11', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (236, 236, 7, 1);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    236, NULL, 'USD', 3.99, 3.99, 3.99,
    '2', '2025-01-11', 7, 987
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    236, '2025-01-11', 3.99, 0.00, 3.99, 'USD',
    236, 7, 236
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    236, 236, 7, 'Auto-generated',
    1, 'USD', 3.99, 0.00, 3.99
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    236, '2025-01-11', 6, 1
);
    
    
----- SALE NUMBER: 237 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (237, 10, '2025-01-12', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (237, 237, 8, 24);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    237, NULL, 'USD', 83.76, 83.76, 83.76,
    '2', '2025-01-12', 10, 246
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    237, '2025-01-12', 83.76, 0.00, 83.76, 'USD',
    237, 10, 237
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    237, 237, 8, 'Auto-generated',
    24, 'USD', 3.49, 0.00, 83.76
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    237, '2025-01-12', 9, 1
);
    
    
----- SALE NUMBER: 238 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (238, 16, '2025-01-13', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (238, 238, 7, 10);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    238, NULL, 'USD', 39.900000000000006, 39.900000000000006, 39.900000000000006,
    '2', '2025-01-13', 16, 357
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    238, '2025-01-13', 39.900000000000006, 0.00, 39.900000000000006, 'USD',
    238, 16, 238
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    238, 238, 7, 'Auto-generated',
    10, 'USD', 3.99, 0.00, 39.900000000000006
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    238, '2025-01-13', 15, 1
);
    
    
----- SALE NUMBER: 239 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (239, 7, '2025-01-14', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (239, 239, 8, 30);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    239, NULL, 'USD', 104.7, 104.7, 104.7,
    '2', '2025-01-14', 7, 987
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    239, '2025-01-14', 104.7, 0.00, 104.7, 'USD',
    239, 7, 239
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    239, 239, 8, 'Auto-generated',
    30, 'USD', 3.49, 0.00, 104.7
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    239, '2025-01-14', 6, 1
);
    
    
----- SALE NUMBER: 240 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (240, 3, '2025-01-15', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (240, 240, 5, 22);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    240, NULL, 'USD', 76.78, 76.78, 76.78,
    '2', '2025-01-15', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    240, '2025-01-15', 76.78, 0.00, 76.78, 'USD',
    240, 3, 240
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    240, 240, 5, 'Auto-generated',
    22, 'USD', 3.49, 0.00, 76.78
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    240, '2025-01-15', 2, 1
);
    
    
----- SALE NUMBER: 241 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (241, 1, '2025-01-16', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (241, 241, 8, 33);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    241, NULL, 'USD', 115.17, 115.17, 115.17,
    '2', '2025-01-16', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    241, '2025-01-16', 115.17, 0.00, 115.17, 'USD',
    241, 1, 241
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    241, 241, 8, 'Auto-generated',
    33, 'USD', 3.49, 0.00, 115.17
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    241, '2025-01-16', 0, 1
);
    
    
----- SALE NUMBER: 242 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (242, 2, '2025-01-17', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (242, 242, 2, 17);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    242, NULL, 'USD', 59.330000000000005, 59.330000000000005, 59.330000000000005,
    '2', '2025-01-17', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    242, '2025-01-17', 59.330000000000005, 0.00, 59.330000000000005, 'USD',
    242, 2, 242
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    242, 242, 2, 'Auto-generated',
    17, 'USD', 3.49, 0.00, 59.330000000000005
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    242, '2025-01-17', 1, 1
);
    
    
----- SALE NUMBER: 243 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (243, 9, '2025-01-18', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (243, 243, 8, 37);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    243, NULL, 'USD', 129.13, 129.13, 129.13,
    '2', '2025-01-18', 9, 456
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    243, '2025-01-18', 129.13, 0.00, 129.13, 'USD',
    243, 9, 243
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    243, 243, 8, 'Auto-generated',
    37, 'USD', 3.49, 0.00, 129.13
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    243, '2025-01-18', 8, 1
);
    
    
----- SALE NUMBER: 244 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (244, 8, '2025-01-19', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (244, 244, 5, 3);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    244, NULL, 'USD', 10.47, 10.47, 10.47,
    '2', '2025-01-19', 8, 123
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    244, '2025-01-19', 10.47, 0.00, 10.47, 'USD',
    244, 8, 244
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    244, 244, 5, 'Auto-generated',
    3, 'USD', 3.49, 0.00, 10.47
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    244, '2025-01-19', 7, 1
);
    
    
----- SALE NUMBER: 245 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (245, 5, '2025-01-20', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (245, 245, 2, 19);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    245, NULL, 'USD', 66.31, 66.31, 66.31,
    '2', '2025-01-20', 5, 321
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    245, '2025-01-20', 66.31, 0.00, 66.31, 'USD',
    245, 5, 245
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    245, 245, 2, 'Auto-generated',
    19, 'USD', 3.49, 0.00, 66.31
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    245, '2025-01-20', 4, 1
);
    
    
----- SALE NUMBER: 246 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (246, 6, '2025-01-21', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (246, 246, 2, 13);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    246, NULL, 'USD', 45.370000000000005, 45.370000000000005, 45.370000000000005,
    '2', '2025-01-21', 6, 654
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    246, '2025-01-21', 45.370000000000005, 0.00, 45.370000000000005, 'USD',
    246, 6, 246
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    246, 246, 2, 'Auto-generated',
    13, 'USD', 3.49, 0.00, 45.370000000000005
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    246, '2025-01-21', 5, 1
);
    
    
----- SALE NUMBER: 247 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (247, 10, '2025-01-22', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (247, 247, 8, 36);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    247, NULL, 'USD', 125.64000000000001, 125.64000000000001, 125.64000000000001,
    '2', '2025-01-22', 10, 246
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    247, '2025-01-22', 125.64000000000001, 0.00, 125.64000000000001, 'USD',
    247, 10, 247
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    247, 247, 8, 'Auto-generated',
    36, 'USD', 3.49, 0.00, 125.64000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    247, '2025-01-22', 9, 1
);
    
    
----- SALE NUMBER: 248 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (248, 1, '2025-01-23', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (248, 248, 0, 22);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    248, NULL, 'USD', 65.78, 65.78, 65.78,
    '2', '2025-01-23', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    248, '2025-01-23', 65.78, 0.00, 65.78, 'USD',
    248, 1, 248
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    248, 248, 0, 'Auto-generated',
    22, 'USD', 2.99, 0.00, 65.78
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    248, '2025-01-23', 0, 1
);
    
    
----- SALE NUMBER: 249 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (249, 18, '2025-01-24', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (249, 249, 4, 32);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    249, NULL, 'USD', 111.68, 111.68, 111.68,
    '2', '2025-01-24', 18, 258
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    249, '2025-01-24', 111.68, 0.00, 111.68, 'USD',
    249, 18, 249
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    249, 249, 4, 'Auto-generated',
    32, 'USD', 3.49, 0.00, 111.68
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    249, '2025-01-24', 17, 1
);
    
    
----- SALE NUMBER: 250 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (250, 16, '2025-01-25', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (250, 250, 1, 29);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    250, NULL, 'USD', 115.71000000000001, 115.71000000000001, 115.71000000000001,
    '2', '2025-01-25', 16, 357
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    250, '2025-01-25', 115.71000000000001, 0.00, 115.71000000000001, 'USD',
    250, 16, 250
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    250, 250, 1, 'Auto-generated',
    29, 'USD', 3.99, 0.00, 115.71000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    250, '2025-01-25', 15, 1
);
    
    
----- SALE NUMBER: 251 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (251, 3, '2025-01-26', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (251, 251, 0, 39);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    251, NULL, 'USD', 116.61000000000001, 116.61000000000001, 116.61000000000001,
    '2', '2025-01-26', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    251, '2025-01-26', 116.61000000000001, 0.00, 116.61000000000001, 'USD',
    251, 3, 251
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    251, 251, 0, 'Auto-generated',
    39, 'USD', 2.99, 0.00, 116.61000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    251, '2025-01-26', 2, 1
);
    
    
----- SALE NUMBER: 252 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (252, 9, '2025-01-27', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (252, 252, 6, 17);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    252, NULL, 'USD', 50.830000000000005, 50.830000000000005, 50.830000000000005,
    '2', '2025-01-27', 9, 456
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    252, '2025-01-27', 50.830000000000005, 0.00, 50.830000000000005, 'USD',
    252, 9, 252
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    252, 252, 6, 'Auto-generated',
    17, 'USD', 2.99, 0.00, 50.830000000000005
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    252, '2025-01-27', 8, 1
);
    
    
----- SALE NUMBER: 253 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (253, 11, '2025-01-28', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (253, 253, 6, 18);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    253, NULL, 'USD', 53.82000000000001, 53.82000000000001, 53.82000000000001,
    '2', '2025-01-28', 11, 579
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    253, '2025-01-28', 53.82000000000001, 0.00, 53.82000000000001, 'USD',
    253, 11, 253
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    253, 253, 6, 'Auto-generated',
    18, 'USD', 2.99, 0.00, 53.82000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    253, '2025-01-28', 10, 1
);
    
    
----- SALE NUMBER: 254 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (254, 12, '2025-01-29', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (254, 254, 5, 34);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    254, NULL, 'USD', 118.66000000000001, 118.66000000000001, 118.66000000000001,
    '2', '2025-01-29', 12, 864
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    254, '2025-01-29', 118.66000000000001, 0.00, 118.66000000000001, 'USD',
    254, 12, 254
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    254, 254, 5, 'Auto-generated',
    34, 'USD', 3.49, 0.00, 118.66000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    254, '2025-01-29', 11, 1
);
    
    
----- SALE NUMBER: 255 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (255, 1, '2025-01-30', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (255, 255, 5, 26);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    255, NULL, 'USD', 90.74000000000001, 90.74000000000001, 90.74000000000001,
    '2', '2025-01-30', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    255, '2025-01-30', 90.74000000000001, 0.00, 90.74000000000001, 'USD',
    255, 1, 255
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    255, 255, 5, 'Auto-generated',
    26, 'USD', 3.49, 0.00, 90.74000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    255, '2025-01-30', 0, 1
);
    
    
----- SALE NUMBER: 256 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (256, 19, '2025-01-31', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (256, 256, 7, 2);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    256, NULL, 'USD', 7.98, 7.98, 7.98,
    '2', '2025-01-31', 19, 654
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    256, '2025-01-31', 7.98, 0.00, 7.98, 'USD',
    256, 19, 256
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    256, 256, 7, 'Auto-generated',
    2, 'USD', 3.99, 0.00, 7.98
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    256, '2025-01-31', 18, 1
);
    
    
----- SALE NUMBER: 257 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (257, 19, '2025-02-01', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (257, 257, 6, 46);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    257, NULL, 'USD', 137.54000000000002, 137.54000000000002, 137.54000000000002,
    '2', '2025-02-01', 19, 654
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    257, '2025-02-01', 137.54000000000002, 0.00, 137.54000000000002, 'USD',
    257, 19, 257
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    257, 257, 6, 'Auto-generated',
    46, 'USD', 2.99, 0.00, 137.54000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    257, '2025-02-01', 18, 1
);
    
    
----- SALE NUMBER: 258 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (258, 9, '2025-02-02', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (258, 258, 8, 18);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    258, NULL, 'USD', 62.82000000000001, 62.82000000000001, 62.82000000000001,
    '2', '2025-02-02', 9, 456
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    258, '2025-02-02', 62.82000000000001, 0.00, 62.82000000000001, 'USD',
    258, 9, 258
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    258, 258, 8, 'Auto-generated',
    18, 'USD', 3.49, 0.00, 62.82000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    258, '2025-02-02', 8, 1
);
    
    
----- SALE NUMBER: 259 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (259, 19, '2025-02-03', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (259, 259, 1, 32);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    259, NULL, 'USD', 127.68, 127.68, 127.68,
    '2', '2025-02-03', 19, 654
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    259, '2025-02-03', 127.68, 0.00, 127.68, 'USD',
    259, 19, 259
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    259, 259, 1, 'Auto-generated',
    32, 'USD', 3.99, 0.00, 127.68
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    259, '2025-02-03', 18, 1
);
    
    
----- SALE NUMBER: 260 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (260, 16, '2025-02-04', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (260, 260, 8, 42);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    260, NULL, 'USD', 146.58, 146.58, 146.58,
    '2', '2025-02-04', 16, 357
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    260, '2025-02-04', 146.58, 0.00, 146.58, 'USD',
    260, 16, 260
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    260, 260, 8, 'Auto-generated',
    42, 'USD', 3.49, 0.00, 146.58
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    260, '2025-02-04', 15, 1
);
    
    
----- SALE NUMBER: 261 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (261, 3, '2025-02-05', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (261, 261, 8, 7);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    261, NULL, 'USD', 24.43, 24.43, 24.43,
    '2', '2025-02-05', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    261, '2025-02-05', 24.43, 0.00, 24.43, 'USD',
    261, 3, 261
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    261, 261, 8, 'Auto-generated',
    7, 'USD', 3.49, 0.00, 24.43
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    261, '2025-02-05', 2, 1
);
    
    
----- SALE NUMBER: 262 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (262, 19, '2025-02-06', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (262, 262, 7, 33);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    262, NULL, 'USD', 131.67000000000002, 131.67000000000002, 131.67000000000002,
    '2', '2025-02-06', 19, 654
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    262, '2025-02-06', 131.67000000000002, 0.00, 131.67000000000002, 'USD',
    262, 19, 262
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    262, 262, 7, 'Auto-generated',
    33, 'USD', 3.99, 0.00, 131.67000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    262, '2025-02-06', 18, 1
);
    
    
----- SALE NUMBER: 263 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (263, 5, '2025-02-07', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (263, 263, 4, 28);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    263, NULL, 'USD', 97.72, 97.72, 97.72,
    '2', '2025-02-07', 5, 321
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    263, '2025-02-07', 97.72, 0.00, 97.72, 'USD',
    263, 5, 263
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    263, 263, 4, 'Auto-generated',
    28, 'USD', 3.49, 0.00, 97.72
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    263, '2025-02-07', 4, 1
);
    
    
----- SALE NUMBER: 264 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (264, 1, '2025-02-08', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (264, 264, 5, 36);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    264, NULL, 'USD', 125.64000000000001, 125.64000000000001, 125.64000000000001,
    '2', '2025-02-08', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    264, '2025-02-08', 125.64000000000001, 0.00, 125.64000000000001, 'USD',
    264, 1, 264
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    264, 264, 5, 'Auto-generated',
    36, 'USD', 3.49, 0.00, 125.64000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    264, '2025-02-08', 0, 1
);
    
    
----- SALE NUMBER: 265 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (265, 6, '2025-02-09', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (265, 265, 4, 37);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    265, NULL, 'USD', 129.13, 129.13, 129.13,
    '2', '2025-02-09', 6, 654
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    265, '2025-02-09', 129.13, 0.00, 129.13, 'USD',
    265, 6, 265
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    265, 265, 4, 'Auto-generated',
    37, 'USD', 3.49, 0.00, 129.13
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    265, '2025-02-09', 5, 1
);
    
    
----- SALE NUMBER: 266 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (266, 13, '2025-02-10', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (266, 266, 8, 11);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    266, NULL, 'USD', 38.39, 38.39, 38.39,
    '2', '2025-02-10', 13, 753
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    266, '2025-02-10', 38.39, 0.00, 38.39, 'USD',
    266, 13, 266
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    266, 266, 8, 'Auto-generated',
    11, 'USD', 3.49, 0.00, 38.39
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    266, '2025-02-10', 12, 1
);
    
    
----- SALE NUMBER: 267 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (267, 13, '2025-02-11', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (267, 267, 0, 46);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    267, NULL, 'USD', 137.54000000000002, 137.54000000000002, 137.54000000000002,
    '2', '2025-02-11', 13, 753
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    267, '2025-02-11', 137.54000000000002, 0.00, 137.54000000000002, 'USD',
    267, 13, 267
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    267, 267, 0, 'Auto-generated',
    46, 'USD', 2.99, 0.00, 137.54000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    267, '2025-02-11', 12, 1
);
    
    
----- SALE NUMBER: 268 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (268, 6, '2025-02-12', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (268, 268, 6, 18);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    268, NULL, 'USD', 53.82000000000001, 53.82000000000001, 53.82000000000001,
    '2', '2025-02-12', 6, 654
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    268, '2025-02-12', 53.82000000000001, 0.00, 53.82000000000001, 'USD',
    268, 6, 268
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    268, 268, 6, 'Auto-generated',
    18, 'USD', 2.99, 0.00, 53.82000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    268, '2025-02-12', 5, 1
);
    
    
----- SALE NUMBER: 269 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (269, 11, '2025-02-13', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (269, 269, 0, 18);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    269, NULL, 'USD', 53.82000000000001, 53.82000000000001, 53.82000000000001,
    '2', '2025-02-13', 11, 579
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    269, '2025-02-13', 53.82000000000001, 0.00, 53.82000000000001, 'USD',
    269, 11, 269
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    269, 269, 0, 'Auto-generated',
    18, 'USD', 2.99, 0.00, 53.82000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    269, '2025-02-13', 10, 1
);
    
    
----- SALE NUMBER: 270 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (270, 15, '2025-02-14', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (270, 270, 7, 15);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    270, NULL, 'USD', 59.85, 59.85, 59.85,
    '2', '2025-02-14', 15, 852
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    270, '2025-02-14', 59.85, 0.00, 59.85, 'USD',
    270, 15, 270
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    270, 270, 7, 'Auto-generated',
    15, 'USD', 3.99, 0.00, 59.85
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    270, '2025-02-14', 14, 1
);
    
    
----- SALE NUMBER: 271 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (271, 4, '2025-02-15', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (271, 271, 3, 47);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    271, NULL, 'USD', 234.53, 234.53, 234.53,
    '2', '2025-02-15', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    271, '2025-02-15', 234.53, 0.00, 234.53, 'USD',
    271, 4, 271
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    271, 271, 3, 'Auto-generated',
    47, 'USD', 4.99, 0.00, 234.53
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    271, '2025-02-15', 3, 1
);
    
    
----- SALE NUMBER: 272 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (272, 15, '2025-02-16', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (272, 272, 1, 49);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    272, NULL, 'USD', 195.51000000000002, 195.51000000000002, 195.51000000000002,
    '2', '2025-02-16', 15, 852
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    272, '2025-02-16', 195.51000000000002, 0.00, 195.51000000000002, 'USD',
    272, 15, 272
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    272, 272, 1, 'Auto-generated',
    49, 'USD', 3.99, 0.00, 195.51000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    272, '2025-02-16', 14, 1
);
    
    
----- SALE NUMBER: 273 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (273, 14, '2025-02-17', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (273, 273, 8, 25);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    273, NULL, 'USD', 87.25, 87.25, 87.25,
    '2', '2025-02-17', 14, 159
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    273, '2025-02-17', 87.25, 0.00, 87.25, 'USD',
    273, 14, 273
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    273, 273, 8, 'Auto-generated',
    25, 'USD', 3.49, 0.00, 87.25
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    273, '2025-02-17', 13, 1
);
    
    
----- SALE NUMBER: 274 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (274, 7, '2025-02-18', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (274, 274, 5, 24);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    274, NULL, 'USD', 83.76, 83.76, 83.76,
    '2', '2025-02-18', 7, 987
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    274, '2025-02-18', 83.76, 0.00, 83.76, 'USD',
    274, 7, 274
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    274, 274, 5, 'Auto-generated',
    24, 'USD', 3.49, 0.00, 83.76
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    274, '2025-02-18', 6, 1
);
    
    
----- SALE NUMBER: 275 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (275, 3, '2025-02-19', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (275, 275, 8, 7);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    275, NULL, 'USD', 24.43, 24.43, 24.43,
    '2', '2025-02-19', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    275, '2025-02-19', 24.43, 0.00, 24.43, 'USD',
    275, 3, 275
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    275, 275, 8, 'Auto-generated',
    7, 'USD', 3.49, 0.00, 24.43
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    275, '2025-02-19', 2, 1
);
    
    
----- SALE NUMBER: 276 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (276, 12, '2025-02-20', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (276, 276, 7, 9);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    276, NULL, 'USD', 35.910000000000004, 35.910000000000004, 35.910000000000004,
    '2', '2025-02-20', 12, 864
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    276, '2025-02-20', 35.910000000000004, 0.00, 35.910000000000004, 'USD',
    276, 12, 276
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    276, 276, 7, 'Auto-generated',
    9, 'USD', 3.99, 0.00, 35.910000000000004
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    276, '2025-02-20', 11, 1
);
    
    
----- SALE NUMBER: 277 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (277, 11, '2025-02-21', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (277, 277, 7, 19);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    277, NULL, 'USD', 75.81, 75.81, 75.81,
    '2', '2025-02-21', 11, 579
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    277, '2025-02-21', 75.81, 0.00, 75.81, 'USD',
    277, 11, 277
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    277, 277, 7, 'Auto-generated',
    19, 'USD', 3.99, 0.00, 75.81
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    277, '2025-02-21', 10, 1
);
    
    
----- SALE NUMBER: 278 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (278, 14, '2025-02-22', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (278, 278, 1, 41);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    278, NULL, 'USD', 163.59, 163.59, 163.59,
    '2', '2025-02-22', 14, 159
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    278, '2025-02-22', 163.59, 0.00, 163.59, 'USD',
    278, 14, 278
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    278, 278, 1, 'Auto-generated',
    41, 'USD', 3.99, 0.00, 163.59
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    278, '2025-02-22', 13, 1
);
    
    
----- SALE NUMBER: 279 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (279, 3, '2025-02-23', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (279, 279, 8, 5);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    279, NULL, 'USD', 17.450000000000003, 17.450000000000003, 17.450000000000003,
    '2', '2025-02-23', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    279, '2025-02-23', 17.450000000000003, 0.00, 17.450000000000003, 'USD',
    279, 3, 279
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    279, 279, 8, 'Auto-generated',
    5, 'USD', 3.49, 0.00, 17.450000000000003
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    279, '2025-02-23', 2, 1
);
    
    
----- SALE NUMBER: 280 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (280, 16, '2025-02-24', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (280, 280, 6, 3);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    280, NULL, 'USD', 8.97, 8.97, 8.97,
    '2', '2025-02-24', 16, 357
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    280, '2025-02-24', 8.97, 0.00, 8.97, 'USD',
    280, 16, 280
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    280, 280, 6, 'Auto-generated',
    3, 'USD', 2.99, 0.00, 8.97
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    280, '2025-02-24', 15, 1
);
    
    
----- SALE NUMBER: 281 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (281, 8, '2025-02-25', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (281, 281, 5, 35);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    281, NULL, 'USD', 122.15, 122.15, 122.15,
    '2', '2025-02-25', 8, 123
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    281, '2025-02-25', 122.15, 0.00, 122.15, 'USD',
    281, 8, 281
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    281, 281, 5, 'Auto-generated',
    35, 'USD', 3.49, 0.00, 122.15
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    281, '2025-02-25', 7, 1
);
    
    
----- SALE NUMBER: 282 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (282, 17, '2025-02-26', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (282, 282, 7, 29);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    282, NULL, 'USD', 115.71000000000001, 115.71000000000001, 115.71000000000001,
    '2', '2025-02-26', 17, 951
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    282, '2025-02-26', 115.71000000000001, 0.00, 115.71000000000001, 'USD',
    282, 17, 282
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    282, 282, 7, 'Auto-generated',
    29, 'USD', 3.99, 0.00, 115.71000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    282, '2025-02-26', 16, 1
);
    
    
----- SALE NUMBER: 283 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (283, 3, '2025-02-27', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (283, 283, 0, 36);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    283, NULL, 'USD', 107.64000000000001, 107.64000000000001, 107.64000000000001,
    '2', '2025-02-27', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    283, '2025-02-27', 107.64000000000001, 0.00, 107.64000000000001, 'USD',
    283, 3, 283
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    283, 283, 0, 'Auto-generated',
    36, 'USD', 2.99, 0.00, 107.64000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    283, '2025-02-27', 2, 1
);
    
    
----- SALE NUMBER: 284 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (284, 6, '2025-02-28', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (284, 284, 8, 12);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    284, NULL, 'USD', 41.88, 41.88, 41.88,
    '2', '2025-02-28', 6, 654
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    284, '2025-02-28', 41.88, 0.00, 41.88, 'USD',
    284, 6, 284
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    284, 284, 8, 'Auto-generated',
    12, 'USD', 3.49, 0.00, 41.88
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    284, '2025-02-28', 5, 1
);
    
    
----- SALE NUMBER: 285 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (285, 3, '2025-03-01', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (285, 285, 2, 8);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    285, NULL, 'USD', 27.92, 27.92, 27.92,
    '2', '2025-03-01', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    285, '2025-03-01', 27.92, 0.00, 27.92, 'USD',
    285, 3, 285
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    285, 285, 2, 'Auto-generated',
    8, 'USD', 3.49, 0.00, 27.92
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    285, '2025-03-01', 2, 1
);
    
    
----- SALE NUMBER: 286 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (286, 5, '2025-03-02', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (286, 286, 3, 13);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    286, NULL, 'USD', 64.87, 64.87, 64.87,
    '2', '2025-03-02', 5, 321
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    286, '2025-03-02', 64.87, 0.00, 64.87, 'USD',
    286, 5, 286
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    286, 286, 3, 'Auto-generated',
    13, 'USD', 4.99, 0.00, 64.87
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    286, '2025-03-02', 4, 1
);
    
    
----- SALE NUMBER: 287 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (287, 13, '2025-03-03', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (287, 287, 8, 26);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    287, NULL, 'USD', 90.74000000000001, 90.74000000000001, 90.74000000000001,
    '2', '2025-03-03', 13, 753
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    287, '2025-03-03', 90.74000000000001, 0.00, 90.74000000000001, 'USD',
    287, 13, 287
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    287, 287, 8, 'Auto-generated',
    26, 'USD', 3.49, 0.00, 90.74000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    287, '2025-03-03', 12, 1
);
    
    
----- SALE NUMBER: 288 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (288, 6, '2025-03-04', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (288, 288, 1, 38);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    288, NULL, 'USD', 151.62, 151.62, 151.62,
    '2', '2025-03-04', 6, 654
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    288, '2025-03-04', 151.62, 0.00, 151.62, 'USD',
    288, 6, 288
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    288, 288, 1, 'Auto-generated',
    38, 'USD', 3.99, 0.00, 151.62
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    288, '2025-03-04', 5, 1
);
    
    
----- SALE NUMBER: 289 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (289, 13, '2025-03-05', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (289, 289, 8, 2);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    289, NULL, 'USD', 6.98, 6.98, 6.98,
    '2', '2025-03-05', 13, 753
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    289, '2025-03-05', 6.98, 0.00, 6.98, 'USD',
    289, 13, 289
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    289, 289, 8, 'Auto-generated',
    2, 'USD', 3.49, 0.00, 6.98
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    289, '2025-03-05', 12, 1
);
    
    
----- SALE NUMBER: 290 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (290, 11, '2025-03-06', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (290, 290, 3, 31);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    290, NULL, 'USD', 154.69, 154.69, 154.69,
    '2', '2025-03-06', 11, 579
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    290, '2025-03-06', 154.69, 0.00, 154.69, 'USD',
    290, 11, 290
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    290, 290, 3, 'Auto-generated',
    31, 'USD', 4.99, 0.00, 154.69
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    290, '2025-03-06', 10, 1
);
    
    
----- SALE NUMBER: 291 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (291, 18, '2025-03-07', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (291, 291, 2, 12);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    291, NULL, 'USD', 41.88, 41.88, 41.88,
    '2', '2025-03-07', 18, 258
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    291, '2025-03-07', 41.88, 0.00, 41.88, 'USD',
    291, 18, 291
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    291, 291, 2, 'Auto-generated',
    12, 'USD', 3.49, 0.00, 41.88
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    291, '2025-03-07', 17, 1
);
    
    
----- SALE NUMBER: 292 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (292, 10, '2025-03-08', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (292, 292, 1, 14);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    292, NULL, 'USD', 55.86, 55.86, 55.86,
    '2', '2025-03-08', 10, 246
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    292, '2025-03-08', 55.86, 0.00, 55.86, 'USD',
    292, 10, 292
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    292, 292, 1, 'Auto-generated',
    14, 'USD', 3.99, 0.00, 55.86
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    292, '2025-03-08', 9, 1
);
    
    
----- SALE NUMBER: 293 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (293, 15, '2025-03-09', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (293, 293, 0, 23);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    293, NULL, 'USD', 68.77000000000001, 68.77000000000001, 68.77000000000001,
    '2', '2025-03-09', 15, 852
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    293, '2025-03-09', 68.77000000000001, 0.00, 68.77000000000001, 'USD',
    293, 15, 293
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    293, 293, 0, 'Auto-generated',
    23, 'USD', 2.99, 0.00, 68.77000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    293, '2025-03-09', 14, 1
);
    
    
----- SALE NUMBER: 294 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (294, 14, '2025-03-10', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (294, 294, 5, 26);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    294, NULL, 'USD', 90.74000000000001, 90.74000000000001, 90.74000000000001,
    '2', '2025-03-10', 14, 159
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    294, '2025-03-10', 90.74000000000001, 0.00, 90.74000000000001, 'USD',
    294, 14, 294
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    294, 294, 5, 'Auto-generated',
    26, 'USD', 3.49, 0.00, 90.74000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    294, '2025-03-10', 13, 1
);
    
    
----- SALE NUMBER: 295 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (295, 18, '2025-03-11', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (295, 295, 2, 29);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    295, NULL, 'USD', 101.21000000000001, 101.21000000000001, 101.21000000000001,
    '2', '2025-03-11', 18, 258
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    295, '2025-03-11', 101.21000000000001, 0.00, 101.21000000000001, 'USD',
    295, 18, 295
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    295, 295, 2, 'Auto-generated',
    29, 'USD', 3.49, 0.00, 101.21000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    295, '2025-03-11', 17, 1
);
    
    
----- SALE NUMBER: 296 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (296, 18, '2025-03-12', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (296, 296, 3, 22);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    296, NULL, 'USD', 109.78, 109.78, 109.78,
    '2', '2025-03-12', 18, 258
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    296, '2025-03-12', 109.78, 0.00, 109.78, 'USD',
    296, 18, 296
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    296, 296, 3, 'Auto-generated',
    22, 'USD', 4.99, 0.00, 109.78
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    296, '2025-03-12', 17, 1
);
    
    
----- SALE NUMBER: 297 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (297, 5, '2025-03-13', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (297, 297, 5, 3);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    297, NULL, 'USD', 10.47, 10.47, 10.47,
    '2', '2025-03-13', 5, 321
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    297, '2025-03-13', 10.47, 0.00, 10.47, 'USD',
    297, 5, 297
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    297, 297, 5, 'Auto-generated',
    3, 'USD', 3.49, 0.00, 10.47
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    297, '2025-03-13', 4, 1
);
    
    
----- SALE NUMBER: 298 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (298, 3, '2025-03-14', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (298, 298, 2, 6);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    298, NULL, 'USD', 20.94, 20.94, 20.94,
    '2', '2025-03-14', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    298, '2025-03-14', 20.94, 0.00, 20.94, 'USD',
    298, 3, 298
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    298, 298, 2, 'Auto-generated',
    6, 'USD', 3.49, 0.00, 20.94
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    298, '2025-03-14', 2, 1
);
    
    
----- SALE NUMBER: 299 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (299, 4, '2025-03-15', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (299, 299, 6, 33);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    299, NULL, 'USD', 98.67, 98.67, 98.67,
    '2', '2025-03-15', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    299, '2025-03-15', 98.67, 0.00, 98.67, 'USD',
    299, 4, 299
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    299, 299, 6, 'Auto-generated',
    33, 'USD', 2.99, 0.00, 98.67
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    299, '2025-03-15', 3, 1
);
    
    
----- SALE NUMBER: 300 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (300, 11, '2025-03-16', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (300, 300, 6, 21);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    300, NULL, 'USD', 62.790000000000006, 62.790000000000006, 62.790000000000006,
    '2', '2025-03-16', 11, 579
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    300, '2025-03-16', 62.790000000000006, 0.00, 62.790000000000006, 'USD',
    300, 11, 300
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    300, 300, 6, 'Auto-generated',
    21, 'USD', 2.99, 0.00, 62.790000000000006
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    300, '2025-03-16', 10, 1
);
    
    
----- SALE NUMBER: 301 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (301, 8, '2025-03-17', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (301, 301, 3, 14);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    301, NULL, 'USD', 69.86, 69.86, 69.86,
    '2', '2025-03-17', 8, 123
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    301, '2025-03-17', 69.86, 0.00, 69.86, 'USD',
    301, 8, 301
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    301, 301, 3, 'Auto-generated',
    14, 'USD', 4.99, 0.00, 69.86
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    301, '2025-03-17', 7, 1
);
    
    
----- SALE NUMBER: 302 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (302, 14, '2025-03-18', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (302, 302, 8, 28);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    302, NULL, 'USD', 97.72, 97.72, 97.72,
    '2', '2025-03-18', 14, 159
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    302, '2025-03-18', 97.72, 0.00, 97.72, 'USD',
    302, 14, 302
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    302, 302, 8, 'Auto-generated',
    28, 'USD', 3.49, 0.00, 97.72
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    302, '2025-03-18', 13, 1
);
    
    
----- SALE NUMBER: 303 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (303, 5, '2025-03-19', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (303, 303, 2, 11);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    303, NULL, 'USD', 38.39, 38.39, 38.39,
    '2', '2025-03-19', 5, 321
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    303, '2025-03-19', 38.39, 0.00, 38.39, 'USD',
    303, 5, 303
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    303, 303, 2, 'Auto-generated',
    11, 'USD', 3.49, 0.00, 38.39
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    303, '2025-03-19', 4, 1
);
    
    
----- SALE NUMBER: 304 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (304, 10, '2025-03-20', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (304, 304, 1, 49);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    304, NULL, 'USD', 195.51000000000002, 195.51000000000002, 195.51000000000002,
    '2', '2025-03-20', 10, 246
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    304, '2025-03-20', 195.51000000000002, 0.00, 195.51000000000002, 'USD',
    304, 10, 304
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    304, 304, 1, 'Auto-generated',
    49, 'USD', 3.99, 0.00, 195.51000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    304, '2025-03-20', 9, 1
);
    
    
----- SALE NUMBER: 305 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (305, 6, '2025-03-21', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (305, 305, 4, 12);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    305, NULL, 'USD', 41.88, 41.88, 41.88,
    '2', '2025-03-21', 6, 654
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    305, '2025-03-21', 41.88, 0.00, 41.88, 'USD',
    305, 6, 305
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    305, 305, 4, 'Auto-generated',
    12, 'USD', 3.49, 0.00, 41.88
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    305, '2025-03-21', 5, 1
);
    
    
----- SALE NUMBER: 306 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (306, 15, '2025-03-22', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (306, 306, 4, 2);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    306, NULL, 'USD', 6.98, 6.98, 6.98,
    '2', '2025-03-22', 15, 852
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    306, '2025-03-22', 6.98, 0.00, 6.98, 'USD',
    306, 15, 306
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    306, 306, 4, 'Auto-generated',
    2, 'USD', 3.49, 0.00, 6.98
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    306, '2025-03-22', 14, 1
);
    
    
----- SALE NUMBER: 307 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (307, 1, '2025-03-23', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (307, 307, 7, 33);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    307, NULL, 'USD', 131.67000000000002, 131.67000000000002, 131.67000000000002,
    '2', '2025-03-23', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    307, '2025-03-23', 131.67000000000002, 0.00, 131.67000000000002, 'USD',
    307, 1, 307
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    307, 307, 7, 'Auto-generated',
    33, 'USD', 3.99, 0.00, 131.67000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    307, '2025-03-23', 0, 1
);
    
    
----- SALE NUMBER: 308 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (308, 6, '2025-03-24', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (308, 308, 8, 11);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    308, NULL, 'USD', 38.39, 38.39, 38.39,
    '2', '2025-03-24', 6, 654
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    308, '2025-03-24', 38.39, 0.00, 38.39, 'USD',
    308, 6, 308
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    308, 308, 8, 'Auto-generated',
    11, 'USD', 3.49, 0.00, 38.39
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    308, '2025-03-24', 5, 1
);
    
    
----- SALE NUMBER: 309 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (309, 11, '2025-03-25', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (309, 309, 7, 31);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    309, NULL, 'USD', 123.69000000000001, 123.69000000000001, 123.69000000000001,
    '2', '2025-03-25', 11, 579
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    309, '2025-03-25', 123.69000000000001, 0.00, 123.69000000000001, 'USD',
    309, 11, 309
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    309, 309, 7, 'Auto-generated',
    31, 'USD', 3.99, 0.00, 123.69000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    309, '2025-03-25', 10, 1
);
    
    
----- SALE NUMBER: 310 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (310, 19, '2025-03-26', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (310, 310, 0, 36);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    310, NULL, 'USD', 107.64000000000001, 107.64000000000001, 107.64000000000001,
    '2', '2025-03-26', 19, 654
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    310, '2025-03-26', 107.64000000000001, 0.00, 107.64000000000001, 'USD',
    310, 19, 310
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    310, 310, 0, 'Auto-generated',
    36, 'USD', 2.99, 0.00, 107.64000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    310, '2025-03-26', 18, 1
);
    
    
----- SALE NUMBER: 311 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (311, 3, '2025-03-27', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (311, 311, 6, 22);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    311, NULL, 'USD', 65.78, 65.78, 65.78,
    '2', '2025-03-27', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    311, '2025-03-27', 65.78, 0.00, 65.78, 'USD',
    311, 3, 311
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    311, 311, 6, 'Auto-generated',
    22, 'USD', 2.99, 0.00, 65.78
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    311, '2025-03-27', 2, 1
);
    
    
----- SALE NUMBER: 312 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (312, 5, '2025-03-28', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (312, 312, 8, 43);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    312, NULL, 'USD', 150.07000000000002, 150.07000000000002, 150.07000000000002,
    '2', '2025-03-28', 5, 321
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    312, '2025-03-28', 150.07000000000002, 0.00, 150.07000000000002, 'USD',
    312, 5, 312
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    312, 312, 8, 'Auto-generated',
    43, 'USD', 3.49, 0.00, 150.07000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    312, '2025-03-28', 4, 1
);
    
    
----- SALE NUMBER: 313 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (313, 10, '2025-03-29', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (313, 313, 8, 31);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    313, NULL, 'USD', 108.19000000000001, 108.19000000000001, 108.19000000000001,
    '2', '2025-03-29', 10, 246
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    313, '2025-03-29', 108.19000000000001, 0.00, 108.19000000000001, 'USD',
    313, 10, 313
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    313, 313, 8, 'Auto-generated',
    31, 'USD', 3.49, 0.00, 108.19000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    313, '2025-03-29', 9, 1
);
    
    
----- SALE NUMBER: 314 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (314, 18, '2025-03-30', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (314, 314, 2, 23);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    314, NULL, 'USD', 80.27000000000001, 80.27000000000001, 80.27000000000001,
    '2', '2025-03-30', 18, 258
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    314, '2025-03-30', 80.27000000000001, 0.00, 80.27000000000001, 'USD',
    314, 18, 314
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    314, 314, 2, 'Auto-generated',
    23, 'USD', 3.49, 0.00, 80.27000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    314, '2025-03-30', 17, 1
);
    
    
----- SALE NUMBER: 315 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (315, 17, '2025-03-31', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (315, 315, 4, 3);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    315, NULL, 'USD', 10.47, 10.47, 10.47,
    '2', '2025-03-31', 17, 951
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    315, '2025-03-31', 10.47, 0.00, 10.47, 'USD',
    315, 17, 315
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    315, 315, 4, 'Auto-generated',
    3, 'USD', 3.49, 0.00, 10.47
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    315, '2025-03-31', 16, 1
);
    
    
----- SALE NUMBER: 316 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (316, 10, '2025-04-01', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (316, 316, 3, 37);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    316, NULL, 'USD', 184.63, 184.63, 184.63,
    '2', '2025-04-01', 10, 246
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    316, '2025-04-01', 184.63, 0.00, 184.63, 'USD',
    316, 10, 316
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    316, 316, 3, 'Auto-generated',
    37, 'USD', 4.99, 0.00, 184.63
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    316, '2025-04-01', 9, 1
);
    
    
----- SALE NUMBER: 317 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (317, 7, '2025-04-02', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (317, 317, 1, 13);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    317, NULL, 'USD', 51.870000000000005, 51.870000000000005, 51.870000000000005,
    '2', '2025-04-02', 7, 987
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    317, '2025-04-02', 51.870000000000005, 0.00, 51.870000000000005, 'USD',
    317, 7, 317
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    317, 317, 1, 'Auto-generated',
    13, 'USD', 3.99, 0.00, 51.870000000000005
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    317, '2025-04-02', 6, 1
);
    
    
----- SALE NUMBER: 318 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (318, 1, '2025-04-03', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (318, 318, 8, 40);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    318, NULL, 'USD', 139.60000000000002, 139.60000000000002, 139.60000000000002,
    '2', '2025-04-03', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    318, '2025-04-03', 139.60000000000002, 0.00, 139.60000000000002, 'USD',
    318, 1, 318
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    318, 318, 8, 'Auto-generated',
    40, 'USD', 3.49, 0.00, 139.60000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    318, '2025-04-03', 0, 1
);
    
    
----- SALE NUMBER: 319 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (319, 17, '2025-04-04', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (319, 319, 7, 3);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    319, NULL, 'USD', 11.97, 11.97, 11.97,
    '2', '2025-04-04', 17, 951
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    319, '2025-04-04', 11.97, 0.00, 11.97, 'USD',
    319, 17, 319
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    319, 319, 7, 'Auto-generated',
    3, 'USD', 3.99, 0.00, 11.97
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    319, '2025-04-04', 16, 1
);
    
    
----- SALE NUMBER: 320 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (320, 1, '2025-04-05', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (320, 320, 7, 30);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    320, NULL, 'USD', 119.7, 119.7, 119.7,
    '2', '2025-04-05', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    320, '2025-04-05', 119.7, 0.00, 119.7, 'USD',
    320, 1, 320
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    320, 320, 7, 'Auto-generated',
    30, 'USD', 3.99, 0.00, 119.7
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    320, '2025-04-05', 0, 1
);
    
    
----- SALE NUMBER: 321 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (321, 4, '2025-04-06', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (321, 321, 2, 20);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    321, NULL, 'USD', 69.80000000000001, 69.80000000000001, 69.80000000000001,
    '2', '2025-04-06', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    321, '2025-04-06', 69.80000000000001, 0.00, 69.80000000000001, 'USD',
    321, 4, 321
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    321, 321, 2, 'Auto-generated',
    20, 'USD', 3.49, 0.00, 69.80000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    321, '2025-04-06', 3, 1
);
    
    
----- SALE NUMBER: 322 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (322, 10, '2025-04-07', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (322, 322, 4, 48);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    322, NULL, 'USD', 167.52, 167.52, 167.52,
    '2', '2025-04-07', 10, 246
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    322, '2025-04-07', 167.52, 0.00, 167.52, 'USD',
    322, 10, 322
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    322, 322, 4, 'Auto-generated',
    48, 'USD', 3.49, 0.00, 167.52
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    322, '2025-04-07', 9, 1
);
    
    
----- SALE NUMBER: 323 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (323, 5, '2025-04-08', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (323, 323, 1, 43);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    323, NULL, 'USD', 171.57000000000002, 171.57000000000002, 171.57000000000002,
    '2', '2025-04-08', 5, 321
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    323, '2025-04-08', 171.57000000000002, 0.00, 171.57000000000002, 'USD',
    323, 5, 323
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    323, 323, 1, 'Auto-generated',
    43, 'USD', 3.99, 0.00, 171.57000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    323, '2025-04-08', 4, 1
);
    
    
----- SALE NUMBER: 324 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (324, 13, '2025-04-09', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (324, 324, 2, 24);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    324, NULL, 'USD', 83.76, 83.76, 83.76,
    '2', '2025-04-09', 13, 753
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    324, '2025-04-09', 83.76, 0.00, 83.76, 'USD',
    324, 13, 324
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    324, 324, 2, 'Auto-generated',
    24, 'USD', 3.49, 0.00, 83.76
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    324, '2025-04-09', 12, 1
);
    
    
----- SALE NUMBER: 325 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (325, 7, '2025-04-10', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (325, 325, 5, 40);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    325, NULL, 'USD', 139.60000000000002, 139.60000000000002, 139.60000000000002,
    '2', '2025-04-10', 7, 987
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    325, '2025-04-10', 139.60000000000002, 0.00, 139.60000000000002, 'USD',
    325, 7, 325
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    325, 325, 5, 'Auto-generated',
    40, 'USD', 3.49, 0.00, 139.60000000000002
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    325, '2025-04-10', 6, 1
);
    
    
----- SALE NUMBER: 326 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (326, 16, '2025-04-11', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (326, 326, 8, 7);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    326, NULL, 'USD', 24.43, 24.43, 24.43,
    '2', '2025-04-11', 16, 357
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    326, '2025-04-11', 24.43, 0.00, 24.43, 'USD',
    326, 16, 326
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    326, 326, 8, 'Auto-generated',
    7, 'USD', 3.49, 0.00, 24.43
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    326, '2025-04-11', 15, 1
);
    
    
----- SALE NUMBER: 327 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (327, 2, '2025-04-12', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (327, 327, 7, 23);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    327, NULL, 'USD', 91.77000000000001, 91.77000000000001, 91.77000000000001,
    '2', '2025-04-12', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    327, '2025-04-12', 91.77000000000001, 0.00, 91.77000000000001, 'USD',
    327, 2, 327
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    327, 327, 7, 'Auto-generated',
    23, 'USD', 3.99, 0.00, 91.77000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    327, '2025-04-12', 1, 1
);
    
    
----- SALE NUMBER: 328 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (328, 18, '2025-04-13', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (328, 328, 7, 38);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    328, NULL, 'USD', 151.62, 151.62, 151.62,
    '2', '2025-04-13', 18, 258
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    328, '2025-04-13', 151.62, 0.00, 151.62, 'USD',
    328, 18, 328
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    328, 328, 7, 'Auto-generated',
    38, 'USD', 3.99, 0.00, 151.62
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    328, '2025-04-13', 17, 1
);
    
    
----- SALE NUMBER: 329 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (329, 3, '2025-04-14', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (329, 329, 3, 32);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    329, NULL, 'USD', 159.68, 159.68, 159.68,
    '2', '2025-04-14', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    329, '2025-04-14', 159.68, 0.00, 159.68, 'USD',
    329, 3, 329
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    329, 329, 3, 'Auto-generated',
    32, 'USD', 4.99, 0.00, 159.68
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    329, '2025-04-14', 2, 1
);
    
    
----- SALE NUMBER: 330 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (330, 14, '2025-04-15', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (330, 330, 5, 9);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    330, NULL, 'USD', 31.410000000000004, 31.410000000000004, 31.410000000000004,
    '2', '2025-04-15', 14, 159
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    330, '2025-04-15', 31.410000000000004, 0.00, 31.410000000000004, 'USD',
    330, 14, 330
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    330, 330, 5, 'Auto-generated',
    9, 'USD', 3.49, 0.00, 31.410000000000004
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    330, '2025-04-15', 13, 1
);
    
    
----- SALE NUMBER: 331 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (331, 10, '2025-04-16', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (331, 331, 4, 1);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    331, NULL, 'USD', 3.49, 3.49, 3.49,
    '2', '2025-04-16', 10, 246
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    331, '2025-04-16', 3.49, 0.00, 3.49, 'USD',
    331, 10, 331
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    331, 331, 4, 'Auto-generated',
    1, 'USD', 3.49, 0.00, 3.49
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    331, '2025-04-16', 9, 1
);
    
    
----- SALE NUMBER: 332 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (332, 16, '2025-04-17', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (332, 332, 6, 38);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    332, NULL, 'USD', 113.62, 113.62, 113.62,
    '2', '2025-04-17', 16, 357
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    332, '2025-04-17', 113.62, 0.00, 113.62, 'USD',
    332, 16, 332
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    332, 332, 6, 'Auto-generated',
    38, 'USD', 2.99, 0.00, 113.62
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    332, '2025-04-17', 15, 1
);
    
    
----- SALE NUMBER: 333 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (333, 5, '2025-04-18', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (333, 333, 8, 29);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    333, NULL, 'USD', 101.21000000000001, 101.21000000000001, 101.21000000000001,
    '2', '2025-04-18', 5, 321
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    333, '2025-04-18', 101.21000000000001, 0.00, 101.21000000000001, 'USD',
    333, 5, 333
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    333, 333, 8, 'Auto-generated',
    29, 'USD', 3.49, 0.00, 101.21000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    333, '2025-04-18', 4, 1
);
    
    
----- SALE NUMBER: 334 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (334, 19, '2025-04-19', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (334, 334, 0, 42);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    334, NULL, 'USD', 125.58000000000001, 125.58000000000001, 125.58000000000001,
    '2', '2025-04-19', 19, 654
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    334, '2025-04-19', 125.58000000000001, 0.00, 125.58000000000001, 'USD',
    334, 19, 334
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    334, 334, 0, 'Auto-generated',
    42, 'USD', 2.99, 0.00, 125.58000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    334, '2025-04-19', 18, 1
);
    
    
----- SALE NUMBER: 335 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (335, 18, '2025-04-20', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (335, 335, 4, 16);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    335, NULL, 'USD', 55.84, 55.84, 55.84,
    '2', '2025-04-20', 18, 258
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    335, '2025-04-20', 55.84, 0.00, 55.84, 'USD',
    335, 18, 335
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    335, 335, 4, 'Auto-generated',
    16, 'USD', 3.49, 0.00, 55.84
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    335, '2025-04-20', 17, 1
);
    
    
----- SALE NUMBER: 336 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (336, 8, '2025-04-21', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (336, 336, 2, 25);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    336, NULL, 'USD', 87.25, 87.25, 87.25,
    '2', '2025-04-21', 8, 123
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    336, '2025-04-21', 87.25, 0.00, 87.25, 'USD',
    336, 8, 336
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    336, 336, 2, 'Auto-generated',
    25, 'USD', 3.49, 0.00, 87.25
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    336, '2025-04-21', 7, 1
);
    
    
----- SALE NUMBER: 337 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (337, 3, '2025-04-22', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (337, 337, 1, 26);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    337, NULL, 'USD', 103.74000000000001, 103.74000000000001, 103.74000000000001,
    '2', '2025-04-22', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    337, '2025-04-22', 103.74000000000001, 0.00, 103.74000000000001, 'USD',
    337, 3, 337
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    337, 337, 1, 'Auto-generated',
    26, 'USD', 3.99, 0.00, 103.74000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    337, '2025-04-22', 2, 1
);
    
    
----- SALE NUMBER: 338 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (338, 5, '2025-04-23', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (338, 338, 5, 28);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    338, NULL, 'USD', 97.72, 97.72, 97.72,
    '2', '2025-04-23', 5, 321
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    338, '2025-04-23', 97.72, 0.00, 97.72, 'USD',
    338, 5, 338
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    338, 338, 5, 'Auto-generated',
    28, 'USD', 3.49, 0.00, 97.72
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    338, '2025-04-23', 4, 1
);
    
    
----- SALE NUMBER: 339 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (339, 4, '2025-04-24', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (339, 339, 2, 42);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    339, NULL, 'USD', 146.58, 146.58, 146.58,
    '2', '2025-04-24', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    339, '2025-04-24', 146.58, 0.00, 146.58, 'USD',
    339, 4, 339
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    339, 339, 2, 'Auto-generated',
    42, 'USD', 3.49, 0.00, 146.58
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    339, '2025-04-24', 3, 1
);
    
    
----- SALE NUMBER: 340 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (340, 8, '2025-04-25', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (340, 340, 1, 37);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    340, NULL, 'USD', 147.63, 147.63, 147.63,
    '2', '2025-04-25', 8, 123
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    340, '2025-04-25', 147.63, 0.00, 147.63, 'USD',
    340, 8, 340
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    340, 340, 1, 'Auto-generated',
    37, 'USD', 3.99, 0.00, 147.63
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    340, '2025-04-25', 7, 1
);
    
    
----- SALE NUMBER: 341 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (341, 4, '2025-04-26', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (341, 341, 3, 2);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    341, NULL, 'USD', 9.98, 9.98, 9.98,
    '2', '2025-04-26', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    341, '2025-04-26', 9.98, 0.00, 9.98, 'USD',
    341, 4, 341
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    341, 341, 3, 'Auto-generated',
    2, 'USD', 4.99, 0.00, 9.98
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    341, '2025-04-26', 3, 1
);
    
    
----- SALE NUMBER: 342 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (342, 9, '2025-04-27', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (342, 342, 2, 27);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    342, NULL, 'USD', 94.23, 94.23, 94.23,
    '2', '2025-04-27', 9, 456
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    342, '2025-04-27', 94.23, 0.00, 94.23, 'USD',
    342, 9, 342
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    342, 342, 2, 'Auto-generated',
    27, 'USD', 3.49, 0.00, 94.23
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    342, '2025-04-27', 8, 1
);
    
    
----- SALE NUMBER: 343 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (343, 6, '2025-04-28', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (343, 343, 5, 38);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    343, NULL, 'USD', 132.62, 132.62, 132.62,
    '2', '2025-04-28', 6, 654
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    343, '2025-04-28', 132.62, 0.00, 132.62, 'USD',
    343, 6, 343
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    343, 343, 5, 'Auto-generated',
    38, 'USD', 3.49, 0.00, 132.62
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    343, '2025-04-28', 5, 1
);
    
    
----- SALE NUMBER: 344 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (344, 15, '2025-04-29', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (344, 344, 1, 23);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    344, NULL, 'USD', 91.77000000000001, 91.77000000000001, 91.77000000000001,
    '2', '2025-04-29', 15, 852
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    344, '2025-04-29', 91.77000000000001, 0.00, 91.77000000000001, 'USD',
    344, 15, 344
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    344, 344, 1, 'Auto-generated',
    23, 'USD', 3.99, 0.00, 91.77000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    344, '2025-04-29', 14, 1
);
    
    
----- SALE NUMBER: 345 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (345, 19, '2025-04-30', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (345, 345, 5, 48);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    345, NULL, 'USD', 167.52, 167.52, 167.52,
    '2', '2025-04-30', 19, 654
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    345, '2025-04-30', 167.52, 0.00, 167.52, 'USD',
    345, 19, 345
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    345, 345, 5, 'Auto-generated',
    48, 'USD', 3.49, 0.00, 167.52
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    345, '2025-04-30', 18, 1
);
    
    
----- SALE NUMBER: 346 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (346, 2, '2025-05-01', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (346, 346, 4, 24);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    346, NULL, 'USD', 83.76, 83.76, 83.76,
    '2', '2025-05-01', 2, 943
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    346, '2025-05-01', 83.76, 0.00, 83.76, 'USD',
    346, 2, 346
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    346, 346, 4, 'Auto-generated',
    24, 'USD', 3.49, 0.00, 83.76
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    346, '2025-05-01', 1, 1
);
    
    
----- SALE NUMBER: 347 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (347, 10, '2025-05-02', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (347, 347, 6, 35);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    347, NULL, 'USD', 104.65, 104.65, 104.65,
    '2', '2025-05-02', 10, 246
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    347, '2025-05-02', 104.65, 0.00, 104.65, 'USD',
    347, 10, 347
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    347, 347, 6, 'Auto-generated',
    35, 'USD', 2.99, 0.00, 104.65
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    347, '2025-05-02', 9, 1
);
    
    
----- SALE NUMBER: 348 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (348, 17, '2025-05-03', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (348, 348, 2, 33);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    348, NULL, 'USD', 115.17, 115.17, 115.17,
    '2', '2025-05-03', 17, 951
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    348, '2025-05-03', 115.17, 0.00, 115.17, 'USD',
    348, 17, 348
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    348, 348, 2, 'Auto-generated',
    33, 'USD', 3.49, 0.00, 115.17
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    348, '2025-05-03', 16, 1
);
    
    
----- SALE NUMBER: 349 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (349, 13, '2025-05-04', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (349, 349, 1, 45);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    349, NULL, 'USD', 179.55, 179.55, 179.55,
    '2', '2025-05-04', 13, 753
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    349, '2025-05-04', 179.55, 0.00, 179.55, 'USD',
    349, 13, 349
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    349, 349, 1, 'Auto-generated',
    45, 'USD', 3.99, 0.00, 179.55
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    349, '2025-05-04', 12, 1
);
    
    
----- SALE NUMBER: 350 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (350, 16, '2025-05-05', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (350, 350, 7, 26);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    350, NULL, 'USD', 103.74000000000001, 103.74000000000001, 103.74000000000001,
    '2', '2025-05-05', 16, 357
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    350, '2025-05-05', 103.74000000000001, 0.00, 103.74000000000001, 'USD',
    350, 16, 350
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    350, 350, 7, 'Auto-generated',
    26, 'USD', 3.99, 0.00, 103.74000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    350, '2025-05-05', 15, 1
);
    
    
----- SALE NUMBER: 351 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (351, 8, '2025-05-06', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (351, 351, 4, 3);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    351, NULL, 'USD', 10.47, 10.47, 10.47,
    '2', '2025-05-06', 8, 123
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    351, '2025-05-06', 10.47, 0.00, 10.47, 'USD',
    351, 8, 351
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    351, 351, 4, 'Auto-generated',
    3, 'USD', 3.49, 0.00, 10.47
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    351, '2025-05-06', 7, 1
);
    
    
----- SALE NUMBER: 352 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (352, 18, '2025-05-07', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (352, 352, 4, 32);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    352, NULL, 'USD', 111.68, 111.68, 111.68,
    '2', '2025-05-07', 18, 258
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    352, '2025-05-07', 111.68, 0.00, 111.68, 'USD',
    352, 18, 352
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    352, 352, 4, 'Auto-generated',
    32, 'USD', 3.49, 0.00, 111.68
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    352, '2025-05-07', 17, 1
);
    
    
----- SALE NUMBER: 353 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (353, 14, '2025-05-08', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (353, 353, 7, 20);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    353, NULL, 'USD', 79.80000000000001, 79.80000000000001, 79.80000000000001,
    '2', '2025-05-08', 14, 159
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    353, '2025-05-08', 79.80000000000001, 0.00, 79.80000000000001, 'USD',
    353, 14, 353
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    353, 353, 7, 'Auto-generated',
    20, 'USD', 3.99, 0.00, 79.80000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    353, '2025-05-08', 13, 1
);
    
    
----- SALE NUMBER: 354 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (354, 8, '2025-05-09', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (354, 354, 5, 20);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    354, NULL, 'USD', 69.80000000000001, 69.80000000000001, 69.80000000000001,
    '2', '2025-05-09', 8, 123
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    354, '2025-05-09', 69.80000000000001, 0.00, 69.80000000000001, 'USD',
    354, 8, 354
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    354, 354, 5, 'Auto-generated',
    20, 'USD', 3.49, 0.00, 69.80000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    354, '2025-05-09', 7, 1
);
    
    
----- SALE NUMBER: 355 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (355, 12, '2025-05-10', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (355, 355, 4, 30);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    355, NULL, 'USD', 104.7, 104.7, 104.7,
    '2', '2025-05-10', 12, 864
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    355, '2025-05-10', 104.7, 0.00, 104.7, 'USD',
    355, 12, 355
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    355, 355, 4, 'Auto-generated',
    30, 'USD', 3.49, 0.00, 104.7
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    355, '2025-05-10', 11, 1
);
    
    
----- SALE NUMBER: 356 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (356, 11, '2025-05-11', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (356, 356, 7, 15);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    356, NULL, 'USD', 59.85, 59.85, 59.85,
    '2', '2025-05-11', 11, 579
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    356, '2025-05-11', 59.85, 0.00, 59.85, 'USD',
    356, 11, 356
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    356, 356, 7, 'Auto-generated',
    15, 'USD', 3.99, 0.00, 59.85
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    356, '2025-05-11', 10, 1
);
    
    
----- SALE NUMBER: 357 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (357, 4, '2025-05-12', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (357, 357, 8, 26);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    357, NULL, 'USD', 90.74000000000001, 90.74000000000001, 90.74000000000001,
    '2', '2025-05-12', 4, 434
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    357, '2025-05-12', 90.74000000000001, 0.00, 90.74000000000001, 'USD',
    357, 4, 357
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    357, 357, 8, 'Auto-generated',
    26, 'USD', 3.49, 0.00, 90.74000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    357, '2025-05-12', 3, 1
);
    
    
----- SALE NUMBER: 358 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (358, 18, '2025-05-13', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (358, 358, 7, 25);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    358, NULL, 'USD', 99.75, 99.75, 99.75,
    '2', '2025-05-13', 18, 258
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    358, '2025-05-13', 99.75, 0.00, 99.75, 'USD',
    358, 18, 358
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    358, 358, 7, 'Auto-generated',
    25, 'USD', 3.99, 0.00, 99.75
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    358, '2025-05-13', 17, 1
);
    
    
----- SALE NUMBER: 359 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (359, 13, '2025-05-14', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (359, 359, 7, 18);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    359, NULL, 'USD', 71.82000000000001, 71.82000000000001, 71.82000000000001,
    '2', '2025-05-14', 13, 753
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    359, '2025-05-14', 71.82000000000001, 0.00, 71.82000000000001, 'USD',
    359, 13, 359
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    359, 359, 7, 'Auto-generated',
    18, 'USD', 3.99, 0.00, 71.82000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    359, '2025-05-14', 12, 1
);
    
    
----- SALE NUMBER: 360 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (360, 1, '2025-05-15', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (360, 360, 6, 3);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    360, NULL, 'USD', 8.97, 8.97, 8.97,
    '2', '2025-05-15', 1, 238
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    360, '2025-05-15', 8.97, 0.00, 8.97, 'USD',
    360, 1, 360
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    360, 360, 6, 'Auto-generated',
    3, 'USD', 2.99, 0.00, 8.97
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    360, '2025-05-15', 0, 1
);
    
    
----- SALE NUMBER: 361 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (361, 3, '2025-05-16', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (361, 361, 4, 12);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    361, NULL, 'USD', 41.88, 41.88, 41.88,
    '2', '2025-05-16', 3, 314
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    361, '2025-05-16', 41.88, 0.00, 41.88, 'USD',
    361, 3, 361
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    361, 361, 4, 'Auto-generated',
    12, 'USD', 3.49, 0.00, 41.88
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    361, '2025-05-16', 2, 1
);
    
    
----- SALE NUMBER: 362 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (362, 10, '2025-05-17', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (362, 362, 5, 26);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    362, NULL, 'USD', 90.74000000000001, 90.74000000000001, 90.74000000000001,
    '2', '2025-05-17', 10, 246
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    362, '2025-05-17', 90.74000000000001, 0.00, 90.74000000000001, 'USD',
    362, 10, 362
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    362, 362, 5, 'Auto-generated',
    26, 'USD', 3.49, 0.00, 90.74000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    362, '2025-05-17', 9, 1
);
    
    
----- SALE NUMBER: 363 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (363, 13, '2025-05-18', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (363, 363, 8, 8);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    363, NULL, 'USD', 27.92, 27.92, 27.92,
    '2', '2025-05-18', 13, 753
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    363, '2025-05-18', 27.92, 0.00, 27.92, 'USD',
    363, 13, 363
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    363, 363, 8, 'Auto-generated',
    8, 'USD', 3.49, 0.00, 27.92
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    363, '2025-05-18', 12, 0
);
    
    
----- SALE NUMBER: 364 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (364, 11, '2025-05-19', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (364, 364, 1, 26);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    364, NULL, 'USD', 103.74000000000001, 103.74000000000001, 103.74000000000001,
    '2', '2025-05-19', 11, 579
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    364, '2025-05-19', 103.74000000000001, 0.00, 103.74000000000001, 'USD',
    364, 11, 364
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    364, 364, 1, 'Auto-generated',
    26, 'USD', 3.99, 0.00, 103.74000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    364, '2025-05-19', 10, 1
);
    
    
----- SALE NUMBER: 365 -----

INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
VALUES (365, 17, '2025-05-20', 1, 0);
    


INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
VALUES (365, 365, 3, 15);
    


INSERT INTO `mydb`.ccpayment (
    CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
    CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
) VALUES
(
    365, NULL, 'USD', 74.85000000000001, 74.85000000000001, 74.85000000000001,
    '2', '2025-05-20', 17, 951
);
    


INSERT INTO `mydb`.ticket (
    TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
    PAYMENT_ID, user_id, cart_id
) VALUES
(
    365, '2025-05-20', 74.85000000000001, 0.00, 74.85000000000001, 'USD',
    365, 17, 365
);
    


INSERT INTO `mydb`.ticket_item (
    TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
    QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
) VALUES
(
    365, 365, 3, 'Auto-generated',
    15, 'USD', 4.99, 0.00, 74.85000000000001
);
    


INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
(
    365, '2025-05-20', 16, 1
);


    