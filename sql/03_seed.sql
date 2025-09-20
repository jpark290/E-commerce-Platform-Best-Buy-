----------- Sample Data for Users Table------------------
INSERT INTO Users (
    user_id, first_name, last_name, email, phone_number, shipping_address, billing_address, city, state, postal_code, country, password, date_of_birth, registration_date, is_active)
    VALUES (1, 'John', 'Smith', 'john.smith@example.com', '+1-555-123-4567', '123 Main Street', '123 Main Street', 'New York', 'NY', '10001', 'United States', 'hashed_password_1', DATE '1985-03-15',  SYSTIMESTAMP, 1);

INSERT INTO Users (
    user_id, first_name, last_name, email, phone_number, shipping_address, billing_address, city, state, postal_code, country, password, date_of_birth, registration_date, is_active)
    VALUES (2, 'Emily', 'Johnson', 'emily.j@example.com', '+1-555-987-6543','456 Oak Avenue', '456 Oak Avenue', 'Chicago', 'IL', '60601', 'United States', 'hashed_password_2', DATE '1990-11-22', SYSTIMESTAMP, 1);

INSERT INTO Users (
    user_id, first_name, last_name, email, phone_number, shipping_address, billing_address, city, state, postal_code, country, password, date_of_birth, registration_date, is_active)
    VALUES (3, 'Michael', 'Williams', 'michael.w@example.com', '+1-555-246-8135','789 Pine Road', '789 Pine Road', 'Los Angeles', 'CA', '90001', 'United States', 'hashed_password_3', DATE '1978-07-08', SYSTIMESTAMP, 1);

INSERT INTO Users (
    user_id, first_name, last_name, email, phone_number, shipping_address, billing_address, city, state, postal_code, country, password, date_of_birth, registration_date, is_active)
    VALUES (4, 'Sarah', 'Brown', 'sarah.brown@example.com', '+1-555-369-2580','321 Maple Drive', '321 Maple Drive', 'Houston', 'TX', '77001', 'United States', 'hashed_password_4', DATE '1992-05-17', SYSTIMESTAMP, 1);

INSERT INTO Users (
    user_id, first_name, last_name, email, phone_number,  shipping_address, billing_address, city, state, postal_code, country, password, date_of_birth, registration_date, is_active)
    VALUES (5, 'David', 'Miller', 'david.miller@example.com', '+1-555-147-2589','654 Cedar Lane', '654 Cedar Lane', 'Phoenix', 'AZ', '85001', 'United States', 'hashed_password_5', DATE '1983-09-30', SYSTIMESTAMP, 1);

INSERT INTO Users (
    user_id, first_name, last_name, email, phone_number, shipping_address, billing_address, city, state, postal_code, country, password, date_of_birth, registration_date, is_active)
    VALUES (6, 'Jessica', 'Davis', 'jessica.davis@example.com', '+1-555-753-9514', '987 Birch Street', '987 Birch Street', 'San Francisco', 'CA', '94101', 'United States', 'hashed_password_6', DATE '1988-12-05', SYSTIMESTAMP, 1);

INSERT INTO Users (
    user_id, first_name, last_name, email, phone_number, shipping_address, billing_address, city, state, postal_code, country, password, date_of_birth, registration_date, is_active)
    VALUES (7, 'Robert', 'Garcia', 'robert.garcia@example.com', '+1-555-852-7410', '456 Elm Boulevard', '456 Elm Boulevard', 'Miami', 'FL', '33101', 'United States', 'hashed_password_7', DATE '1975-01-25', SYSTIMESTAMP, 1);

INSERT INTO Users (
    user_id, first_name, last_name, email, phone_number, shipping_address, billing_address, city, state, postal_code, country, password, date_of_birth, registration_date, is_active)
    VALUES (8, 'Amanda', 'Martinez', 'amanda.m@example.com', '+1-555-963-8520','789 Spruce Court', '789 Spruce Court', 'Dallas', 'TX', '75201', 'United States', 'hashed_password_8', DATE '1995-06-12', SYSTIMESTAMP, 1);

INSERT INTO Users (
    user_id, first_name, last_name, email, phone_number, shipping_address, billing_address, city, state, postal_code, country, password, date_of_birth, registration_date, is_active)
    VALUES (9, 'Christopher', 'Rodriguez', 'chris.r@example.com', '+1-555-741-9630','321 Willow Way', '321 Willow Way', 'Seattle', 'WA', '98101', 'United States', 'hashed_password_9', DATE '1980-04-03', SYSTIMESTAMP, 1);

INSERT INTO Users (
    user_id, first_name, last_name, email, phone_number, shipping_address, billing_address, city, state, postal_code, country, password, date_of_birth, registration_date, is_active)
    VALUES (10, 'Elizabeth', 'Lopez', 'elizabeth.lopez@example.com', '+1-555-258-7410', '654 Magnolia Place', '654 Magnolia Place', 'Boston', 'MA', '02101', 'United States', 'hashed_password_10', DATE '1993-08-19', SYSTIMESTAMP, 1);

INSERT INTO Users (
    user_id, first_name, last_name, email, phone_number, shipping_address, billing_address, city, state, postal_code, country, password, date_of_birth, registration_date, is_active)
    VALUES (11, 'Kevin', 'Hernandez', 'kevin.h@example.com', '+1-555-369-8520', '987 Redwood Street', '987 Redwood Street', 'Atlanta', 'GA', '30301', 'United States', 'hashed_password_11', DATE '1987-10-14', SYSTIMESTAMP, 1);

INSERT INTO Users (user_id, first_name, last_name, email, phone_number, shipping_address, billing_address, city, state, postal_code, country, password, date_of_birth, registration_date, is_active)
VALUES (12, 'Nicole', 'Gonzalez', 'nicole.g@example.com', '+1-555-147-3690', '456 Sycamore Road', '456 Sycamore Road', 'Denver', 'CO', '80201', 'United States', 'hashed_password_12', DATE '1998-02-28', SYSTIMESTAMP, 1);

----------- Sample Data for Orders Table------------------

INSERT INTO Orders (order_id, user_id, order_date, shipping_address, billing_address, total_amount, status, payment_status, shipping_method, payment_method, order_tracking_number, estimated_delivery_date)
VALUES (1, 1, CURRENT_TIMESTAMP, '1234 Elm St, Springfield, IL, 62701, USA', '1234 Elm St, Springfield, IL, 62701, USA', 250.50, 'pending', 'pending', 'express', 'credit card', 'ORD123456', TO_DATE('2025-04-10', 'YYYY-MM-DD'));

INSERT INTO Orders (order_id, user_id, order_date, shipping_address, billing_address, total_amount, status, payment_status, shipping_method, payment_method, order_tracking_number, estimated_delivery_date)
VALUES (2, 2, CURRENT_TIMESTAMP, '5678 Oak St, Springfield, IL, 62702, USA', '5678 Oak St, Springfield, IL, 62702, USA', 300.75, 'shipped', 'paid', 'standard', 'PayPal', 'ORD123457', TO_DATE('2025-04-12', 'YYYY-MM-DD'));

INSERT INTO Orders (order_id, user_id, order_date, shipping_address, billing_address, total_amount, status, payment_status, shipping_method, payment_method, order_tracking_number, estimated_delivery_date)
VALUES (3, 3, CURRENT_TIMESTAMP, '9101 Maple St, Springfield, IL, 62703, USA', '9101 Maple St, Springfield, IL, 62703, USA', 150.30, 'delivered', 'paid', 'standard', 'bank transfer', 'ORD123458', TO_DATE('2025-04-15', 'YYYY-MM-DD'));

INSERT INTO Orders (order_id, user_id, order_date, shipping_address, billing_address, total_amount, status, payment_status, shipping_method, payment_method, order_tracking_number, estimated_delivery_date)
VALUES (4, 4, CURRENT_TIMESTAMP, '1112 Pine St, Springfield, IL, 62704, USA', '1112 Pine St, Springfield, IL, 62704, USA', 100.20, 'cancelled', 'paid', 'express', 'credit card', 'ORD123459', TO_DATE('2025-04-18', 'YYYY-MM-DD'));

INSERT INTO Orders (order_id, user_id, order_date, shipping_address, billing_address, total_amount, status, payment_status, shipping_method, payment_method, order_tracking_number, estimated_delivery_date)
VALUES (5, 5, CURRENT_TIMESTAMP, '3456 Birch St, Springfield, IL, 62705, USA', '3456 Birch St, Springfield, IL, 62705, USA', 500.00, 'pending', 'pending', 'express', 'PayPal', 'ORD123460', TO_DATE('2025-04-20', 'YYYY-MM-DD'));

INSERT INTO Orders (order_id, user_id, order_date, shipping_address, billing_address, total_amount, status, payment_status, shipping_method, payment_method, order_tracking_number, estimated_delivery_date)
VALUES (6, 6, CURRENT_TIMESTAMP, '7890 Cedar St, Springfield, IL, 62706, USA', '7890 Cedar St, Springfield, IL, 62706, USA', 100.99, 'shipped', 'paid', 'standard', 'bank transfer', 'ORD123461', TO_DATE('2025-04-22', 'YYYY-MM-DD'));

INSERT INTO Orders (order_id, user_id, order_date, shipping_address, billing_address, total_amount, status, payment_status, shipping_method, payment_method, order_tracking_number, estimated_delivery_date)
VALUES (7, 7, CURRENT_TIMESTAMP, '2345 Walnut St, Springfield, IL, 62707, USA', '2345 Walnut St, Springfield, IL, 62707, USA', 75.50, 'delivered', 'paid', 'express', 'credit card', 'ORD123462', TO_DATE('2025-04-25', 'YYYY-MM-DD'));

INSERT INTO Orders (order_id, user_id, order_date, shipping_address, billing_address, total_amount, status, payment_status, shipping_method, payment_method, order_tracking_number, estimated_delivery_date)
VALUES (8, 8, CURRENT_TIMESTAMP, '5678 Cherry St, Springfield, IL, 62708, USA', '5678 Cherry St, Springfield, IL, 62708, USA', 225.00, 'cancelled', 'paid', 'standard', 'PayPal', 'ORD123463', TO_DATE('2025-04-28', 'YYYY-MM-DD'));

INSERT INTO Orders (order_id, user_id, order_date, shipping_address, billing_address, total_amount, status, payment_status, shipping_method, payment_method, order_tracking_number, estimated_delivery_date)
VALUES (9, 9, CURRENT_TIMESTAMP, '1357 Pine St, Springfield, IL, 62709, USA', '1357 Pine St, Springfield, IL, 62709, USA', 340.99, 'pending', 'pending', 'express', 'credit card', 'ORD123464', TO_DATE('2025-05-01', 'YYYY-MM-DD'));

INSERT INTO Orders (order_id, user_id, order_date, shipping_address, billing_address, total_amount, status, payment_status, shipping_method, payment_method, order_tracking_number, estimated_delivery_date)
VALUES (10, 10, CURRENT_TIMESTAMP, '2468 Oak St, Springfield, IL, 62710, USA', '2468 Oak St, Springfield, IL, 62710, USA', 620.75, 'shipped', 'paid', 'standard', 'bank transfer', 'ORD123465', TO_DATE('2025-05-03', 'YYYY-MM-DD'));

INSERT INTO Orders (order_id, user_id, order_date, shipping_address, billing_address, total_amount, status, payment_status, shipping_method, payment_method, order_tracking_number, estimated_delivery_date)
VALUES (11, 11, CURRENT_TIMESTAMP, '9753 Maple St, Springfield, IL, 62711, USA', '9753 Maple St, Springfield, IL, 62711, USA', 180.00, 'delivered', 'paid', 'express', 'PayPal', 'ORD123466', TO_DATE('2025-05-06', 'YYYY-MM-DD'));

INSERT INTO Orders (order_id, user_id, order_date, shipping_address, billing_address, total_amount, status, payment_status, shipping_method, payment_method, order_tracking_number, estimated_delivery_date)
VALUES (12, 12, CURRENT_TIMESTAMP, '3579 Birch St, Springfield, IL, 62712, USA', '3579 Birch St, Springfield, IL, 62712, USA', 450.30, 'cancelled', 'paid', 'standard', 'credit card', 'ORD123467', TO_DATE('2025-05-10', 'YYYY-MM-DD'));

----------- Sample Data for Shipping Table------------------

INSERT INTO Shipping (shipping_id, order_id, shipping_method, shipping_status, shipping_date, tracking_number, estimated_delivery_date, delivery_date, shipping_address)
VALUES (1, 1, 'express', 'pending', TO_DATE('2025-04-02', 'YYYY-MM-DD'), 'TRK123456', TO_DATE('2025-04-05', 'YYYY-MM-DD'), NULL, '1234 Elm St, Springfield, IL, 62701, USA');

INSERT INTO Shipping (shipping_id, order_id, shipping_method, shipping_status, shipping_date, tracking_number, estimated_delivery_date, delivery_date, shipping_address)
VALUES (2, 2, 'standard', 'shipped', TO_DATE('2025-04-03', 'YYYY-MM-DD'), 'TRK123457', TO_DATE('2025-04-10', 'YYYY-MM-DD'), TO_DATE('2025-04-09', 'YYYY-MM-DD'), '5678 Oak St, Springfield, IL, 62702, USA');

INSERT INTO Shipping (shipping_id, order_id, shipping_method, shipping_status, shipping_date, tracking_number, estimated_delivery_date, delivery_date, shipping_address)
VALUES (3, 3, 'standard', 'delivered', TO_DATE('2025-04-04', 'YYYY-MM-DD'), 'TRK123458', TO_DATE('2025-04-12', 'YYYY-MM-DD'), TO_DATE('2025-04-10', 'YYYY-MM-DD'), '9101 Maple St, Springfield, IL, 62703, USA');

INSERT INTO Shipping (shipping_id, order_id, shipping_method, shipping_status, shipping_date, tracking_number, estimated_delivery_date, delivery_date, shipping_address)
VALUES (4, 4, 'express', 'cancelled', TO_DATE('2025-04-05', 'YYYY-MM-DD'), 'TRK123459', TO_DATE('2025-04-08', 'YYYY-MM-DD'), NULL, '1112 Pine St, Springfield, IL, 62704, USA');

INSERT INTO Shipping (shipping_id, order_id, shipping_method, shipping_status, shipping_date, tracking_number, estimated_delivery_date, delivery_date, shipping_address)
VALUES (5, 5, 'express', 'pending', TO_DATE('2025-04-06', 'YYYY-MM-DD'), 'TRK123460', TO_DATE('2025-04-09', 'YYYY-MM-DD'), NULL, '3456 Birch St, Springfield, IL, 62705, USA');

INSERT INTO Shipping (shipping_id, order_id, shipping_method, shipping_status, shipping_date, tracking_number, estimated_delivery_date, delivery_date, shipping_address)
VALUES (6, 6, 'standard', 'shipped', TO_DATE('2025-04-07', 'YYYY-MM-DD'), 'TRK123461', TO_DATE('2025-04-14', 'YYYY-MM-DD'), TO_DATE('2025-04-12', 'YYYY-MM-DD'), '7890 Cedar St, Springfield, IL, 62706, USA');

INSERT INTO Shipping (shipping_id, order_id, shipping_method, shipping_status, shipping_date, tracking_number, estimated_delivery_date, delivery_date, shipping_address)
VALUES (7, 7, 'express', 'delivered', TO_DATE('2025-04-08', 'YYYY-MM-DD'), 'TRK123462', TO_DATE('2025-04-12', 'YYYY-MM-DD'), TO_DATE('2025-04-11', 'YYYY-MM-DD'), '2345 Walnut St, Springfield, IL, 62707, USA');

INSERT INTO Shipping (shipping_id, order_id, shipping_method, shipping_status, shipping_date, tracking_number, estimated_delivery_date, delivery_date, shipping_address)
VALUES (8, 8, 'standard', 'cancelled', TO_DATE('2025-04-09', 'YYYY-MM-DD'), 'TRK123463', TO_DATE('2025-04-12', 'YYYY-MM-DD'), NULL, '5678 Cherry St, Springfield, IL, 62708, USA');

INSERT INTO Shipping (shipping_id, order_id, shipping_method, shipping_status, shipping_date, tracking_number, estimated_delivery_date, delivery_date, shipping_address)
VALUES (9, 9, 'express', 'pending', TO_DATE('2025-04-10', 'YYYY-MM-DD'), 'TRK123464', TO_DATE('2025-04-15', 'YYYY-MM-DD'), NULL, '1357 Pine St, Springfield, IL, 62709, USA');

INSERT INTO Shipping (shipping_id, order_id, shipping_method, shipping_status, shipping_date, tracking_number, estimated_delivery_date, delivery_date, shipping_address)
VALUES (10, 10, 'standard', 'shipped', TO_DATE('2025-04-11', 'YYYY-MM-DD'), 'TRK123465', TO_DATE('2025-04-18', 'YYYY-MM-DD'), TO_DATE('2025-04-16', 'YYYY-MM-DD'), '2468 Oak St, Springfield, IL, 62710, USA');

INSERT INTO Shipping (shipping_id, order_id, shipping_method, shipping_status, shipping_date, tracking_number, estimated_delivery_date, delivery_date, shipping_address)
VALUES (11, 11, 'express', 'delivered', TO_DATE('2025-04-12', 'YYYY-MM-DD'), 'TRK123466', TO_DATE('2025-04-15', 'YYYY-MM-DD'), TO_DATE('2025-04-14', 'YYYY-MM-DD'), '9753 Maple St, Springfield, IL, 62711, USA');

INSERT INTO Shipping (shipping_id, order_id, shipping_method, shipping_status, shipping_date, tracking_number, estimated_delivery_date, delivery_date, shipping_address)
VALUES (12, 12, 'standard', 'cancelled', TO_DATE('2025-04-13', 'YYYY-MM-DD'), 'TRK123467', TO_DATE('2025-04-17', 'YYYY-MM-DD'), NULL, '3579 Birch St, Springfield, IL, 62712, USA');

----------- Sample Data for  Categories Table------------------

INSERT INTO Categories (category_id, category_name)
VALUES (1, 'Mobile Phones');

INSERT INTO Categories (category_id, category_name)
VALUES (2, 'Laptops');

INSERT INTO Categories (category_id, category_name)
VALUES (3, 'TVs');

INSERT INTO Categories (category_id, category_name)
VALUES (4, 'Headphones');

INSERT INTO Categories (category_id, category_name)
VALUES (5, 'Cameras');

INSERT INTO Categories (category_id, category_name)
VALUES (6, 'Kitchen Appliances');

INSERT INTO Categories (category_id, category_name)
VALUES (7, 'Gaming Consoles');

INSERT INTO Categories (category_id, category_name)
VALUES (8, 'Wearable Tech');

INSERT INTO Categories (category_id, category_name)
VALUES (9, 'Smart Home');

INSERT INTO Categories (category_id, category_name)
VALUES (10, 'PC Components');

INSERT INTO Categories (category_id, category_name)
VALUES (11, 'Outdoor Equipment');

INSERT INTO Categories (category_id, category_name)
VALUES (12, 'Toys and Games');

----------- Sample Data for Brands Table------------------

-- Electronics
INSERT INTO Brands (brand_id, brand_name, contact_email, contact_phone, website_url, is_active) 
VALUES (1, 'Apple', 'contact@apple.com', '800-676-2775', 'https://www.apple.com', 'Y');

INSERT INTO Brands (brand_id, brand_name, contact_email, contact_phone, website_url, is_active) 
VALUES (2, 'Samsung', 'contact@samsung.com', '800-726-7864', 'https://www.samsung.com', 'Y');

INSERT INTO Brands (brand_id, brand_name, contact_email, contact_phone, website_url, is_active) 
VALUES (3, 'Sony', 'contact@sony.com', '800-222-7669', 'https://www.sony.com', 'Y');

INSERT INTO Brands (brand_id, brand_name, contact_email, contact_phone, website_url, is_active) 
VALUES (4, 'LG', 'contact@lg.com', '800-243-0000', 'https://www.lg.com', 'Y');

-- Home Appliances
INSERT INTO Brands (brand_id, brand_name, contact_email, contact_phone, website_url, is_active) 
VALUES (5, 'Whirlpool', 'contact@whirlpool.com', '800-253-1301', 'https://www.whirlpool.com', 'Y');

INSERT INTO Brands (brand_id, brand_name, contact_email, contact_phone, website_url, is_active) 
VALUES (6, 'GE Appliances', 'support@geappliances.com', '800-626-2005', 'https://www.geappliances.com', 'Y');

INSERT INTO Brands (brand_id, brand_name, contact_email, contact_phone, website_url, is_active) 
VALUES (7, 'Bosch', 'support@bosch.com', '800-944-2904', 'https://www.bosch-home.com', 'Y');

INSERT INTO Brands (brand_id, brand_name, contact_email, contact_phone, website_url, is_active) 
VALUES (8, 'Dyson', 'contact@dyson.com', '800-798-7398', 'https://www.dyson.com', 'Y');

-- Fashion
INSERT INTO Brands (brand_id, brand_name, contact_email, contact_phone, website_url, is_active) 
VALUES (9, 'Nike', 'contact@nike.com', '800-806-6453', 'https://www.nike.com', 'Y');

INSERT INTO Brands (brand_id, brand_name, contact_email, contact_phone, website_url, is_active) 
VALUES (10, 'Adidas', 'support@adidas.com', '800-982-9337', 'https://www.adidas.com', 'Y');

-- Food & Beverages
INSERT INTO Brands (brand_id, brand_name, contact_email, contact_phone, website_url, is_active) 
VALUES (11, 'Coca-Cola', 'support@coca-cola.com', '800-438-2653', 'https://www.coca-cola.com', 'Y');

INSERT INTO Brands (brand_id, brand_name, contact_email, contact_phone, website_url, is_active) 
VALUES (12, 'Pepsi', 'contact@pepsi.com', '800-433-2652', 'https://www.pepsi.com', 'Y');

----------- Sample Data for Products Table------------------
-- Electronics
INSERT INTO Products (product_id, name, price, stock_quantity, category_id, brand_id, model_number, release_date, is_active) 
VALUES (1, 'Samsung 65" 4K Smart TV', 999.99, 50, 3, 1, 'UN65TU8000FXZA', TO_DATE('2023-03-15', 'YYYY-MM-DD'), 1);

INSERT INTO Products (product_id, name, price, stock_quantity, category_id, brand_id, model_number, release_date, is_active) 
VALUES (2, 'Apple iPhone 15 Pro', 1199.00, 100, 1, 2, 'A2650', TO_DATE('2023-09-22', 'YYYY-MM-DD'), 1);

-- Appliances
INSERT INTO Products (product_id, name, price, stock_quantity, category_id, brand_id, model_number, release_date, is_active) 
VALUES (3, 'LG Front Load Washer', 799.99, 30, 2, 3, 'WM4000HWA', TO_DATE('2022-05-10', 'YYYY-MM-DD'), 1);

INSERT INTO Products (product_id, name, price, stock_quantity, category_id, brand_id, model_number, release_date, is_active) 
VALUES (4, 'Dyson V11 Cordless Vacuum', 599.99, 25, 2, 4, 'V11ABSOLUTE', TO_DATE('2023-02-18', 'YYYY-MM-DD'), 1);

-- Gaming
INSERT INTO Products (product_id, name, price, stock_quantity, category_id, brand_id, model_number, release_date, is_active) 
VALUES (5, 'Sony PlayStation 5', 499.99, 200, 3, 5, 'CFI-1200A01', TO_DATE('2021-11-12', 'YYYY-MM-DD'), 1);

INSERT INTO Products (product_id, name, price, stock_quantity, category_id, brand_id, model_number, release_date, is_active) 
VALUES (6, 'Xbox Series X', 499.99, 180, 3, 6, 'RRT-00001', TO_DATE('2021-11-10', 'YYYY-MM-DD'), 1);

-- Home & Kitchen
INSERT INTO Products (product_id, name, price, stock_quantity, category_id, brand_id, model_number, release_date, is_active) 
VALUES (7, 'Keurig K-Elite Coffee Maker', 149.99, 75, 4, 7, 'K-ELITE', TO_DATE('2022-08-15', 'YYYY-MM-DD'), 1);

INSERT INTO Products (product_id, name, price, stock_quantity, category_id, brand_id, model_number, release_date, is_active) 
VALUES (8, 'Instant Pot Duo 7-in-1', 129.99, 60, 4, 8, 'DUO60', TO_DATE('2023-01-05', 'YYYY-MM-DD'), 1);

-- Food & Beverages
INSERT INTO Products (product_id, name, price, stock_quantity, category_id, brand_id, model_number, release_date, is_active) 
VALUES (9, 'Coca-Cola Classic 12-Pack', 6.99, 500, 5, 11, 'CC12PK', TO_DATE('2023-06-20', 'YYYY-MM-DD'), 1);

INSERT INTO Products (product_id, name, price, stock_quantity, category_id, brand_id, model_number, release_date, is_active) 
VALUES (10, 'Pepsi 12-Pack', 6.99, 450, 5, 12, 'P12PK', TO_DATE('2023-06-22', 'YYYY-MM-DD'), 1);

-- Sports & Outdoors
INSERT INTO Products (product_id, name, price, stock_quantity, category_id, brand_id, model_number, release_date, is_active) 
VALUES (11, 'Nike Air Zoom Pegasus 39', 130.00, 80, 6, 9, 'PEG39', TO_DATE('2023-04-10', 'YYYY-MM-DD'), 1);

INSERT INTO Products (product_id, name, price, stock_quantity, category_id, brand_id, model_number, release_date, is_active) 
VALUES (12, 'Adidas Ultraboost 22', 180.00, 90, 6, 10, 'UB22', TO_DATE('2023-04-15', 'YYYY-MM-DD'), 1);

----------- Sample Data for Promotion Table------------------

-- Promotions for Electronics
INSERT INTO Promotion (promotion_id, product_id, promotion_name, description, discount_percentage, start_date, end_date, promotion_code, status)
VALUES (1, 1, 'Smart TV Summer Sale', 'Get 10% off on Samsung 65" 4K Smart TV', 10.00, TO_DATE('2024-06-01', 'YYYY-MM-DD'), TO_DATE('2024-06-30', 'YYYY-MM-DD'), 'SUMMER10', 'active');

INSERT INTO Promotion (promotion_id, product_id, promotion_name, description, discount_percentage, start_date, end_date, promotion_code, status)
VALUES (2, 2, 'iPhone 15 Pro Discount', 'Save $100 on the latest iPhone 15 Pro', 8.33, TO_DATE('2024-05-15', 'YYYY-MM-DD'), TO_DATE('2024-06-15', 'YYYY-MM-DD'), 'IPHONE100', 'expired');

-- Promotions for Appliances
INSERT INTO Promotion (promotion_id, product_id, promotion_name, description, discount_percentage, start_date, end_date, promotion_code, status)
VALUES (3, 3, 'Washer Special Deal', 'Limited-time 12% discount on LG Front Load Washer', 12.00, TO_DATE('2024-07-01', 'YYYY-MM-DD'), TO_DATE('2024-07-31', 'YYYY-MM-DD'), 'WASH12', 'pending');

INSERT INTO Promotion (promotion_id, product_id, promotion_name, description, discount_percentage, start_date, end_date, promotion_code, status)
VALUES (4, 4, 'Dyson Vacuum Flash Sale', 'Save 15% on Dyson V11 Cordless Vacuum', 15.00, TO_DATE('2024-06-10', 'YYYY-MM-DD'), TO_DATE('2024-06-20', 'YYYY-MM-DD'), 'DYSON15', 'active');

-- Promotions for Gaming
INSERT INTO Promotion (promotion_id, product_id, promotion_name, description, discount_percentage, start_date, end_date, promotion_code, status)
VALUES (5, 5, 'PlayStation 5 Price Drop', 'Limited-time $50 off on PS5', 10.00, TO_DATE('2024-05-01', 'YYYY-MM-DD'), TO_DATE('2024-05-15', 'YYYY-MM-DD'), 'PS550OFF', 'expired');

INSERT INTO Promotion (promotion_id, product_id, promotion_name, description, discount_percentage, start_date, end_date, promotion_code, status)
VALUES (6, 6, 'Xbox Series X Deal', 'Get 5% off on Xbox Series X', 5.00, TO_DATE('2024-06-05', 'YYYY-MM-DD'), TO_DATE('2024-06-25', 'YYYY-MM-DD'), 'XBOX5', 'active');

-- Promotions for Home & Kitchen
INSERT INTO Promotion (promotion_id, product_id, promotion_name, description, discount_percentage, start_date, end_date, promotion_code, status)
VALUES (7, 7, 'Coffee Maker Discount', 'Buy Keurig K-Elite Coffee Maker at 20% off', 20.00, TO_DATE('2024-06-01', 'YYYY-MM-DD'), TO_DATE('2024-06-15', 'YYYY-MM-DD'), 'COFFEE20', 'active');

INSERT INTO Promotion (promotion_id, product_id, promotion_name, description, discount_percentage, start_date, end_date, promotion_code, status)
VALUES (8, 8, 'Instant Pot Summer Sale', 'Get 10% off on Instant Pot Duo 7-in-1', 10.00, TO_DATE('2024-07-01', 'YYYY-MM-DD'), TO_DATE('2024-07-15', 'YYYY-MM-DD'), 'IPOT10', 'pending');

-- Promotions for Food & Beverages
INSERT INTO Promotion (promotion_id, product_id, promotion_name, description, discount_percentage, start_date, end_date, promotion_code, status)
VALUES (9, 9, 'Coca-Cola Super Deal', 'Buy one Coca-Cola Classic 12-Pack, get 50% off on the second pack', 50.00, TO_DATE('2024-06-10', 'YYYY-MM-DD'), TO_DATE('2024-06-20', 'YYYY-MM-DD'), 'COKE50', 'active');

INSERT INTO Promotion (promotion_id, product_id, promotion_name, description, discount_percentage, start_date, end_date, promotion_code, status)
VALUES (10, 10, 'Pepsi Buy More Save More', 'Save 30% on Pepsi 12-Pack when you buy 3 packs', 30.00, TO_DATE('2024-06-05', 'YYYY-MM-DD'), TO_DATE('2024-06-25', 'YYYY-MM-DD'), 'PEPSI30', 'pending');

-- Promotions for Sports & Outdoors
INSERT INTO Promotion (promotion_id, product_id, promotion_name, description, discount_percentage, start_date, end_date, promotion_code, status)
VALUES (11, 11, 'Nike Pegasus Discount', 'Get $20 off on Nike Air Zoom Pegasus 39', 15.38, TO_DATE('2024-07-01', 'YYYY-MM-DD'), TO_DATE('2024-07-15', 'YYYY-MM-DD'), 'NIKE20', 'pending');

INSERT INTO Promotion (promotion_id, product_id, promotion_name, description, discount_percentage, start_date, end_date, promotion_code, status)
VALUES (12, 12, 'Adidas Ultraboost Deal', 'Buy Adidas Ultraboost 22 with a 25% discount', 25.00, TO_DATE('2024-06-10', 'YYYY-MM-DD'), TO_DATE('2024-06-30', 'YYYY-MM-DD'), 'ADIDAS25', 'active');

—------------- Sample Data for OrderItems Table—-------------
INSERT INTO OrderItems (order_item_id, order_id, product_id, quantity, price) VALUES (1, 1, 1, 1, 999.99);
INSERT INTO OrderItems (order_item_id, order_id, product_id, quantity, price) VALUES (2, 1, 2, 1, 1199.00);
INSERT INTO OrderItems (order_item_id, order_id, product_id, quantity, price) VALUES (3, 2, 3, 1, 799.99);
INSERT INTO OrderItems (order_item_id, order_id, product_id, quantity, price) VALUES (4, 3, 4, 1, 599.99);
INSERT INTO OrderItems (order_item_id, order_id, product_id, quantity, price) VALUES (5, 4, 5, 1, 499.99);
INSERT INTO OrderItems (order_item_id, order_id, product_id, quantity, price) VALUES (6, 5, 6, 1, 499.99);
INSERT INTO OrderItems (order_item_id, order_id, product_id, quantity, price) VALUES (7, 6, 7, 1, 149.99);
INSERT INTO OrderItems (order_item_id, order_id, product_id, quantity, price) VALUES (8, 7, 8, 1, 129.99);
INSERT INTO OrderItems (order_item_id, order_id, product_id, quantity, price) VALUES (9, 8, 9, 2, 6.99);
INSERT INTO OrderItems (order_item_id, order_id, product_id, quantity, price) VALUES (10, 9, 10, 2, 6.99);
INSERT INTO OrderItems (order_item_id, order_id, product_id, quantity, price) VALUES (11, 10, 11, 1, 130.00);
INSERT INTO OrderItems (order_item_id, order_id, product_id, quantity, price) VALUES (12, 11, 12, 1, 180.00);

-- Sample Data for ReturnsRefunds Table-------

INSERT INTO ReturnsRefunds (return_id, order_item_id, return_reason, return_date, status, refund_amount, refund_date, refund_status) VALUES (1, 1, 'damaged', TO_DATE('2023-11-08', 'YYYY-MM-DD'), 'processed', 999.99, TO_DATE('2023-11-15', 'YYYY-MM-DD'), 'approved');
INSERT INTO ReturnsRefunds (return_id, order_item_id, return_reason, return_date, status, refund_amount, refund_date, refund_status) VALUES (2, 2, 'wrong item', TO_DATE('2023-11-09', 'YYYY-MM-DD'), 'pending', 1199.00, NULL, 'pending');
INSERT INTO ReturnsRefunds (return_id, order_item_id, return_reason, return_date, status, refund_amount, refund_date, refund_status) VALUES (3, 3, 'defective', TO_DATE('2023-11-10', 'YYYY-MM-DD'), 'processed', 799.99, TO_DATE('2023-11-17', 'YYYY-MM-DD'), 'approved');
INSERT INTO ReturnsRefunds (return_id, order_item_id, return_reason, return_date, status, refund_amount, refund_date, refund_status) VALUES (4, 4, 'damaged', TO_DATE('2023-11-11', 'YYYY-MM-DD'), 'rejected', 0.00, NULL, NULL);
INSERT INTO ReturnsRefunds (return_id, order_item_id, return_reason, return_date, status, refund_amount, refund_date, refund_status) VALUES (5, 5, 'wrong item', TO_DATE('2023-11-12', 'YYYY-MM-DD'), 'processed', 499.99, TO_DATE('2023-11-19', 'YYYY-MM-DD'), 'approved');
INSERT INTO ReturnsRefunds (return_id, order_item_id, return_reason, return_date, status, refund_amount, refund_date, refund_status) VALUES (6, 6, 'defective', TO_DATE('2023-11-13', 'YYYY-MM-DD'), 'pending', 499.99, NULL, 'pending');
INSERT INTO ReturnsRefunds (return_id, order_item_id, return_reason, return_date, status, refund_amount, refund_date, refund_status) VALUES (7, 7, 'damaged', TO_DATE('2023-11-14', 'YYYY-MM-DD'), 'processed', 149.99, TO_DATE('2023-11-21', 'YYYY-MM-DD'), 'approved');
INSERT INTO ReturnsRefunds (return_id, order_item_id, return_reason, return_date, status, refund_amount, refund_date, refund_status) VALUES (8, 8, 'wrong item', TO_DATE('2023-11-15', 'YYYY-MM-DD'), 'rejected', 0.00, NULL, NULL);
INSERT INTO ReturnsRefunds (return_id, order_item_id, return_reason, return_date, status, refund_amount, refund_date, refund_status) VALUES (9, 9, 'defective', TO_DATE('2023-11-16', 'YYYY-MM-DD'), 'processed', 13.98, TO_DATE('2023-11-23', 'YYYY-MM-DD'), 'approved');
INSERT INTO ReturnsRefunds (return_id, order_item_id, return_reason, return_date, status, refund_amount, refund_date, refund_status) VALUES (10, 10, 'damaged', TO_DATE('2023-11-17', 'YYYY-MM-DD'), 'pending', 13.98, NULL, 'pending');
INSERT INTO ReturnsRefunds (return_id, order_item_id, return_reason, return_date, status, refund_amount, refund_date, refund_status) VALUES (11, 11, 'wrong item', TO_DATE('2023-11-18', 'YYYY-MM-DD'), 'processed', 130.00, TO_DATE('2023-11-25', 'YYYY-MM-DD'), 'approved');
INSERT INTO ReturnsRefunds (return_id, order_item_id, return_reason, return_date, status, refund_amount, refund_date, refund_status) VALUES (12, 12, 'defective', TO_DATE('2023-11-19', 'YYYY-MM-DD'), 'rejected', 0.00, NULL, NULL);

--------  Sample Data for ShoppingCart -------------------

INSERT INTO ShoppingCart (cart_id, user_id, status) VALUES (1, 1, 'active');
INSERT INTO ShoppingCart (cart_id, user_id, status) VALUES (2, 2, 'active');
INSERT INTO ShoppingCart (cart_id, user_id, status) VALUES (3, 3, 'completed');
INSERT INTO ShoppingCart (cart_id, user_id, status) VALUES (4, 4, 'inactive');
INSERT INTO ShoppingCart (cart_id, user_id, status) VALUES (5, 5, 'active');
INSERT INTO ShoppingCart (cart_id, user_id, status) VALUES (6, 6, 'completed');
INSERT INTO ShoppingCart (cart_id, user_id, status) VALUES (7, 7, 'active');
INSERT INTO ShoppingCart (cart_id, user_id, status) VALUES (8, 8, 'inactive');
INSERT INTO ShoppingCart (cart_id, user_id, status) VALUES (9, 9, 'active');
INSERT INTO ShoppingCart (cart_id, user_id, status) VALUES (10, 10, 'completed');
INSERT INTO ShoppingCart (cart_id, user_id, status) VALUES (11, 11, 'active');
INSERT INTO ShoppingCart (cart_id, user_id, status) VALUES (12, 12, 'inactive');

-- Sample Data for CartItems Table

INSERT INTO CartItems (cart_item_id, cart_id, product_id, quantity) VALUES (1, 1, 1, 2);
INSERT INTO CartItems (cart_item_id, cart_id, product_id, quantity) VALUES (2, 1, 3, 1);
INSERT INTO CartItems (cart_item_id, cart_id, product_id, quantity) VALUES (3, 2, 5, 1);
INSERT INTO CartItems (cart_item_id, cart_id, product_id, quantity) VALUES (4, 2, 7, 3);
INSERT INTO CartItems (cart_item_id, cart_id, product_id, quantity) VALUES (5, 3, 9, 2);
INSERT INTO CartItems (cart_item_id, cart_id, product_id, quantity) VALUES (6, 4, 11, 1);
INSERT INTO CartItems (cart_item_id, cart_id, product_id, quantity) VALUES (7, 5, 2, 1);
INSERT INTO CartItems (cart_item_id, cart_id, product_id, quantity) VALUES (8, 6, 4, 1);
INSERT INTO CartItems (cart_item_id, cart_id, product_id, quantity) VALUES (9, 7, 6, 1);
INSERT INTO CartItems (cart_item_id, cart_id, product_id, quantity) VALUES (10, 8, 8, 2);
INSERT INTO CartItems (cart_item_id, cart_id, product_id, quantity) VALUES (11, 9, 10, 1);
INSERT INTO CartItems (cart_item_id, cart_id, product_id, quantity) VALUES (12, 10, 12, 1);
