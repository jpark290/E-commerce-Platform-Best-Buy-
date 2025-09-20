-- 1. Product search by category

SELECT product_id, name, price, stock_quantity FROM Products
WHERE category_id = (SELECT category_id FROM Categories WHERE category_name = 'Mobile Phones');


-- 2. Shopping cart management
--- 1)	Add a product to the shopping cart.
SELECT MAX(cart_item_id) + 1 FROM CartItems;
INSERT INTO CartItems (cart_item_id, cart_id, product_id, quantity) VALUES (13, 1, 2, 1);

--- 2)View the contents of the shopping cart (Two Ways - A , B).

---- A)
SELECT cart_item_id, product_id, quantity FROM CartItems WHERE cart_id = 1;
---- B)
SELECT ci.cart_item_id, p.name, p.price, ci.quantity FROM CartItems ci, Products p
WHERE ci.product_id = p.product_id AND ci.cart_id = 1;

--- 3) Remove a product from the shopping cart.
DELETE FROM CartItems WHERE cart_item_id = 13;

-- 3. User registration/unregistration
--- 1) register a new user.
INSERT INTO Users (user_id, first_name, last_name, email, phone_number, shipping_address, billing_address, city, state, postal_code, country, password, date_of_birth, registration_date, is_active)
VALUES (13, 'Jinha', 'Park', 'jinha.park@example.com', '+1-900-700-1234', '837 Free Avenue', '837 Free Avenue', 'Rinmond', 'ON', '93847', 'Korea', 'jinha_password_8', DATE '1994-10-12', SYSTIMESTAMP, 1);

--- 2) User unregistration (deactivate account).
UPDATE Users SET is_active = 0
WHERE user_id = 13;

-- 4. Shipping status tracking
SELECT order_id, shipping_status, tracking_number, estimated_delivery_date FROM Shipping WHERE order_id = 1;

-- 5.  Vendor management
SELECT brand_id, brand_name, contact_email, contact_phone FROM Brands;

-- 6. Monthly reporting(Retrieves the total sales amount for a specific month)
SELECT SUM(total_amount) AS monthly_sales
FROM Orders
WHERE EXTRACT(YEAR FROM order_date) = 2025 AND EXTRACT(MONTH FROM order_date) = 4;

-- 7. Popular product identification
SELECT p.product_id, p.name, COUNT(*) AS order_count
FROM OrderItems oi
JOIN Products p ON oi.product_id = p.product_id
GROUP BY p.product_id, p.name
ORDER BY order_count DESC;

-- 8. Customer categorization based on purchase history
SELECT u.user_id, u.first_name, SUM(o.total_amount) AS total_spent,
       CASE
           WHEN SUM(o.total_amount) > 1000 THEN 'VIP'
           WHEN SUM(o.total_amount) > 500 THEN 'Premium'
           ELSE 'Regular'
       END AS customer_category
FROM Users u
LEFT JOIN Orders o ON u.user_id = o.user_id
GROUP BY u.user_id, u.first_name;

-- 9. . Retrieves currently ongoing promotional products.
SELECT p.product_id, p.name, pr.promotion_name, pr.discount_percentage
FROM Products p
JOIN Promotion pr ON p.product_id = pr.product_id
WHERE pr.status = 'active';

-- 10. Returns and refunds processing
---1) Return request inquiry
SELECT return_id, order_item_id, return_reason, status FROM ReturnsRefunds
WHERE status = 'pending';

---2) Refunds processing

UPDATE ReturnsRefunds
SET status = 'processed',
    refund_date = CURRENT_TIMESTAMP,
    refund_status = 'approved'
WHERE return_id = 10;

