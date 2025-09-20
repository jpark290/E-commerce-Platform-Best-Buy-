-- Users table
CREATE TABLE Users (
    user_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(100) NOT NULL,
    last_name VARCHAR2(100) NOT NULL,
    email VARCHAR2(255) UNIQUE NOT NULL,
    phone_number VARCHAR2(20) UNIQUE,
    shipping_address CLOB NOT NULL,
    billing_address CLOB NOT NULL,
    city VARCHAR2(100) NOT NULL,
    state VARCHAR2(100),
    postal_code VARCHAR2(255) NOT NULL,
    country VARCHAR2(100) NOT NULL,
    password VARCHAR2(255) NOT NULL,
    date_of_birth DATE,
    registration_date TIMESTAMP DEFAULT SYSTIMESTAMP,
    is_active NUMBER(1) DEFAULT 1 CHECK (is_active IN (0, 1))
);


-- Products table
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    name VARCHAR2(255) NOT NULL,
    price DECIMAL(10,2) NOT NULL CHECK (price >= 0),
    stock_quantity INT NOT NULL CHECK (stock_quantity >= 0),
    category_id INT NOT NULL,
    brand_id INT NOT NULL,
    model_number VARCHAR2(100) UNIQUE,
    release_date DATE,
    is_active NUMBER(1) DEFAULT 1 CHECK (is_active IN (0, 1)),

    CONSTRAINT fk_category FOREIGN KEY (category_id) REFERENCES Categories(category_id) ON DELETE CASCADE,
    CONSTRAINT fk_brand FOREIGN KEY (brand_id) REFERENCES Brands(brand_id) ON DELETE SET NULL
);


-- Categories table
CREATE TABLE Categories (
    category_id INT PRIMARY KEY, 
    category_name VARCHAR(100) NOT NULL UNIQUE
);


-- Orders table
CREATE TABLE Orders (
    order_id NUMBER PRIMARY KEY,
    user_id NUMBER NOT NULL,
    order_date TIMESTAMP DEFAULT SYSTIMESTAMP,
    shipping_address CLOB NOT NULL,
    billing_address CLOB NOT NULL,
    total_amount NUMBER(10,2) NOT NULL CHECK (total_amount >= 0),
    status VARCHAR2(20) CHECK (status IN ('pending', 'shipped', 'delivered', 'cancelled')),
    payment_status VARCHAR2(20) CHECK (payment_status IN ('paid', 'pending')),
    shipping_method VARCHAR2(20) CHECK (shipping_method IN ('standard', 'express')),
    payment_method VARCHAR2(20) CHECK (payment_method IN ('credit card', 'PayPal', 'bank transfer')),
    order_tracking_number VARCHAR2(50) UNIQUE,
    estimated_delivery_date DATE,
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE,
    CONSTRAINT chk_estimated_delivery_date CHECK (estimated_delivery_date > order_date)
);


-- OrderItems table
CREATE TABLE OrderItems (
    order_item_id INT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL CHECK (quantity > 0),
    price DECIMAL(10,2) NOT NULL CHECK (price >= 0),

    CONSTRAINT fk_order FOREIGN KEY (order_id) REFERENCES Orders(order_id) ON DELETE CASCADE,
    CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES Products(product_id) ON DELETE CASCADE
);

-- ShoppingCart table
CREATE TABLE ShoppingCart (
    cart_id INT PRIMARY KEY,
    user_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20) CHECK (status IN ('active', 'inactive', 'completed')),
    CONSTRAINT fk_shopping_cart_user FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE
);

-- CartItems table
CREATE TABLE CartItems (
    cart_item_id INT PRIMARY KEY,
    cart_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    
    CONSTRAINT fk_cart_items_cart_id FOREIGN KEY (cart_id) REFERENCES ShoppingCart(cart_id) ON DELETE CASCADE,
    CONSTRAINT fk_cart_items_product_id FOREIGN KEY (product_id) REFERENCES Products(product_id) ON DELETE CASCADE
);

-- Shipping table
CREATE TABLE Shipping (
    shipping_id NUMBER PRIMARY KEY,
    order_id NUMBER NOT NULL,
    shipping_method VARCHAR2(50) CHECK (shipping_method IN ('standard', 'express')),
    shipping_status VARCHAR2(50) CHECK (shipping_status IN ('pending', 'shipped', 'delivered', 'cancelled')),
    shipping_date DATE,
    tracking_number VARCHAR2(50) UNIQUE,
    estimated_delivery_date DATE,
    delivery_date DATE,
    shipping_address CLOB NOT NULL,
    CONSTRAINT fk_shipping_order FOREIGN KEY (order_id) REFERENCES Orders(order_id) ON DELETE CASCADE,
    CONSTRAINT chk_est_delivery_date CHECK (estimated_delivery_date > shipping_date),
    CONSTRAINT chk_delivery_date CHECK (delivery_date >= shipping_date)
);

-- Brands table
CREATE TABLE Brands (
    brand_id INT PRIMARY KEY,
    brand_name VARCHAR(255) NOT NULL UNIQUE,
    contact_email VARCHAR(255) UNIQUE,
    contact_phone VARCHAR(20),
    website_url VARCHAR(255),
    is_active CHAR(1) DEFAULT 'Y' CHECK (is_active IN ('Y', 'N'))  -- 'Y' represents TRUE, 'N' represents FALSE
);


-- Promotion table
CREATE TABLE Promotion (
    promotion_id NUMBER PRIMARY KEY,
    product_id NUMBER UNIQUE NOT NULL,
    promotion_name VARCHAR2(255) NOT NULL UNIQUE,
    description CLOB,
    discount_percentage NUMBER(5,2) CHECK (discount_percentage BETWEEN 0 AND 100),
    start_date DATE NOT NULL,
    end_date DATE,
    promotion_code VARCHAR2(50) UNIQUE,
    status VARCHAR2(20) CHECK (status IN ('active', 'expired', 'pending')),

    CONSTRAINT fk_promotion_product FOREIGN KEY (product_id) REFERENCES Products(product_id) ON DELETE CASCADE,
    CONSTRAINT chk_end_date CHECK (end_date IS NULL OR end_date >= start_date)
);


-- ReturnsRefunds table
CREATE TABLE ReturnsRefunds (
    return_id INT PRIMARY KEY,
    order_item_id INT NOT NULL,
    return_reason VARCHAR(255) CHECK (return_reason IN ('damaged', 'wrong item', 'defective')),
    return_date DATE DEFAULT CURRENT_DATE,
    status VARCHAR(20) CHECK (status IN ('pending', 'processed', 'rejected')),
    refund_amount DECIMAL(10,2) CHECK (refund_amount >= 0),
    refund_date DATE,
    refund_status VARCHAR(20) CHECK (refund_status IN ('approved', 'pending')),
    CONSTRAINT fk_return_order_item FOREIGN KEY (order_item_id) REFERENCES OrderItems(order_item_id) ON DELETE CASCADE,
    CONSTRAINT chk_refund_date CHECK (refund_date >= return_date)
);
