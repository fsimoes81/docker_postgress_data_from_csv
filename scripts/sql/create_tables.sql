-- Creation of olist_customers table
CREATE TABLE IF NOT EXISTS customers (
  customer_id INT NOT NULL,
  customer_unique_id INT NOT NULL,
  customer_zip_code_prefix INT NOT NULL,
  customer_city varchar(250) NOT NULL,
  customer_state varchar(2) NOT NULL,
  PRIMARY KEY (customer_id, customer_unique_id)
);

-- Creation of olist_geolocation table
CREATE TABLE IF NOT EXISTS geolocation (
  geolocation_zip_code_prefix INT NOT NULL,
  geolocation_lat FLOAT(24) NOT NULL,
  geolocation_lng FLOAT(24) NOT NULL,
  geolocation_city varchar(250) NOT NULL,
  geolocation_state varchar(2) NOT NULL
);

-- Creation of olist_orders table
CREATE TABLE IF NOT EXISTS orders (
  order_id INT NOT NULL,
  customer_id INT NOT NULL,
  order_status varchar(250),
  order_purchase_timestamp TIMESTAMP,
  order_approved_at TIMESTAMP,
  order_delivered_carrier_date TIMESTAMP,
  order_delivered_customer_date TIMESTAMP,
  order_estimated_delivery_date TIMESTAMP,
  PRIMARY KEY (order_id, customer_id)
);

-- Creation of olist_order_items table
CREATE TABLE IF NOT EXISTS order_items (
  order_id INT NOT NULL,
  order_item_id INT NOT NULL,
  product_id INT NOT NULL,
  seller_id INT NOT NULL,
  shipping_limit_date TIMESTAMP NOT NULL,
  price FLOAT(24) NOT NULL,
  freight_value FLOAT(24) NOT NULL,
  PRIMARY KEY (order_id, order_item_id, product_id, seller_id)
);

-- Creation of olist_order_payments table
CREATE TABLE IF NOT EXISTS order_payments (
  order_id INT NOT NULL,
  payment_sequential INT NOT NULL,
  payment_type varchar(250),
  payment_installments INT,
  payment_value FLOAT(24),
  PRIMARY KEY (order_id)
);

-- Creation of olist_order_reviews table
CREATE TABLE IF NOT EXISTS order_reviews (
  review_id INT NOT NULL,
  order_id INT NOT NULL,
  review_score INT NOT NULL,
  review_comment_title varchar(250),
  review_comment_message varchar(250),
  review_creation_date TIMESTAMP,
  review_answer_timestamp TIMESTAMP,
  PRIMARY KEY (review_id, order_id)
);

-- Creation of olist_products table
CREATE TABLE IF NOT EXISTS products (
  product_id INT NOT NULL,
  product_category_name varchar(250),
  product_name_lenght INT,
  product_description_lenght INT,
  product_photos_qty INT,
  product_weight_g INT,
  product_length_cm INT,
  product_height_cm INT,
  product_width_cm INT,
  PRIMARY KEY (product_id)
);

-- Creation of olist_sellers table
CREATE TABLE IF NOT EXISTS sellers (
  seller_id INT NOT NULL,
  seller_zip_code_prefix INT,
  seller_city varchar(250),
  seller_state varchar(250),
  PRIMARY KEY (seller_id)
);

-- Creation of olist_product_category table
CREATE TABLE IF NOT EXISTS product_category (
  product_category_name varchar(250),
  product_category_name_english varchar(250)
);