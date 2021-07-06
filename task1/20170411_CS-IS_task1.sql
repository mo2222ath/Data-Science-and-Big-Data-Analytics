
-- Task1 Moaaz Hasan - 20170411 CS-IS

CREATE TABLE countries(
   id INT PRIMARY KEY    NOT NULL,
   code          		 INT,
   name 				 CHAR(50),
   continent_name		 CHAR(50)
);

CREATE TABLE users(
   id INT PRIMARY KEY    NOT NULL,
   country_code          INT references countries(ID),
   full_name 			 CHAR(100),
   email			 	 CHAR(50),
   gender			 	 CHAR(50),
   date_of_birth     	 CHAR(50),
   created_at        	 CHAR(50)
);

CREATE TABLE orders(
   id 				 INT PRIMARY KEY NOT NULL,
   user_id           INT references users(ID),
   status            CHAR(50),
   created_at        CHAR(50)
);

CREATE TABLE merchants(
   id 					 INT PRIMARY KEY NOT NULL,
   admin_id           	 INT references users(ID),
   merchent_name 		 CHAR(50) ,
   country_code			 INT,
   created_at        	 CHAR(50)
);

CREATE TABLE products(
   id 					 INT PRIMARY KEY NOT NULL,
   merchant_id           INT references merchants(ID),
   name 			 	 CHAR(50) ,
   price				 INT,
   status          	     CHAR(50) ,
   created_at        	 CHAR(50)
);

CREATE TABLE order_items(
   id 				  INT PRIMARY KEY NOT NULL,
   order_id           INT references orders(id),
   product_id         INT references products(id),
   quantity        	  INT
);

INSERT INTO users (id ,country_code, full_name, email, gender, date_of_birth) 
 VALUES (1,1, 'Moaaz', 'Moaaz@gmail.com', 'male', '7-4-1994');
 INSERT INTO users (id ,country_code, full_name, email, gender, date_of_birth) 
 VALUES (2,2, 'Ahmed', 'ahmed@gmail.com', 'male', '4-6-1984');
 INSERT INTO users (id ,country_code, full_name, email, gender, date_of_birth) 
 VALUES (3,1, 'Sohaib', 'Sohaib@gmail.com', 'male', '7-4-1990');
INSERT INTO users (id ,country_code, full_name, email, gender, date_of_birth) 
 VALUES (4,1, 'Rufaidah', 'Rufaidah@gmail.com', 'male', '7-4-2000');


INSERT INTO orders (id ,user_id, status) VALUES (1,1, 'Sold');
INSERT INTO orders (id ,user_id, status) VALUES (2,2, 'Sold');
INSERT INTO orders (id ,user_id, status) VALUES (3,1, 'Sold');
INSERT INTO orders (id ,user_id, status) VALUES (4,3, 'Sold');
INSERT INTO orders (id ,user_id, status) VALUES (5,1, 'Sold');


INSERT INTO merchants (id, admin_id, merchent_name, country_code) VALUES (1,1, 'Moaaz',1);
INSERT INTO merchants (id, admin_id, merchent_name, country_code) VALUES (2,4, 'Rufaidah',1);


INSERT INTO products (id, merchant_id, name, price, status) VALUES (1, 1, 'screen laptop 15.6', 500, 'good');
INSERT INTO products (id, merchant_id, name, price, status) VALUES (2, 1, 'hard 1TB', 500, 'good');
INSERT INTO products (id, merchant_id, name, price, status) VALUES (3, 1, 'printer', 620, 'good');
INSERT INTO products (id, merchant_id, name, price, status) VALUES (4, 1, 'mouse pad', 5, 'good');
INSERT INTO products (id, merchant_id, name, price, status) VALUES (5, 2, 'VGA 2GB', 750, 'good');
INSERT INTO products (id, merchant_id, name, price, status) VALUES (6, 2, 'Laptop Lenovo', 6500, 'good');
INSERT INTO products (id, merchant_id, name, price, status) VALUES (7, 2, 'mouse', 90, 'good');
INSERT INTO products (id, merchant_id, name, price, status) VALUES (8, 1, 'modem', 500, 'good');
INSERT INTO products (id, merchant_id, name, price, status) VALUES (9, 1, 'hard 500GB', 320, 'good');


INSERT INTO order_items (id, order_id, product_id, quantity) VALUES (1,4,4,1);
INSERT INTO order_items (id, order_id, product_id, quantity) VALUES (2,4,1,2);
INSERT INTO order_items (id, order_id, product_id, quantity) VALUES (3,4,3,1);
INSERT INTO order_items (id, order_id, product_id, quantity) VALUES (4,4,4,3);
INSERT INTO order_items (id, order_id, product_id, quantity) VALUES (5,2,5,4);
INSERT INTO order_items (id, order_id, product_id, quantity) VALUES (6,2,6,1);
INSERT INTO order_items (id, order_id, product_id, quantity) VALUES (7,2,7,1);


select full_name as user_name , order_id 
, sum(quantity*price) as total_price 
		from products join (select * 
		from users join (select * 
		from orders join order_items
		on orders.id = order_items.order_id) as inn1
		on users.id = user_id) as inn2
		on product_id = products.id
		Group By full_name , order_id;
