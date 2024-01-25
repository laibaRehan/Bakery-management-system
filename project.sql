CREATE database DBL;
USE DBL;

CREATE table products(
					prod_id int,
                    prod_name varchar(50),
                    cat_id int,
                    cat_name varchar(50),
                    sup_id int,
                    sup_name varchar(50),
                    mfg_date date,
                    exp_date date,
                    price int,
                    img varchar(255),
                    cart_id int,
                    Primary key(prod_id, prod_name),
                    FOREIGN KEY (cat_id) REFERENCES category(cat_id) on delete cascade on update cascade,
                    FOREIGN KEY (sup_id) REFERENCES supplier(sup_id) on delete cascade on update cascade
                    );
                    
INSERT into products values('555', 'ice cream', '5', 'yummmies', '666', 'Dani', '2023-06-06', '2023-07-06', '500', '3.jpeg', null);
                    
ALTER TABLE products
modify prod_id int AUTO_INCREMENT;
CREATE table category(
					cat_id int primary key,
                    cat_name varchar(50)
                    );
                    
CREATE table supplier(
					sup_id int primary key,
                    sup_name varchar(50)
                    );
                    
ALTER TABLE orders
add FOREIGN KEY (customer_id) references customer(customer_id); 
                    
SELECT * from products;

update products set price = 250
where prod_id = 112;

CREATE table login(
					username varchar(50),
                    pass varchar(50)
                    );
                    
INSERT into login values('daniyal6429', '12345');
SELECT * from cust_pro;


CREATE table cart(
					id int primary key auto_increment,
					prod_id int,
                    prod_name varchar(50),
                    price int,
                    img varchar(255),
                    quantity int(255),
                    foreign key (prod_id, prod_name) references products(prod_id, prod_name)
                    );

desc products;
SELECT * from orders;       
drop table orders;

set foreign_key_checks = 0;

drop database dbconnection;

CREATE table customer(
					customer_id int auto_increment,
                    order_id int,
                    prod_id int,
                    fname varchar(50),
                    lname varchar(50),
					email varchar(50),
                    ph_number varchar(50),
                    address varchar(50),
                    city varchar(50),
                    code int,
                    payment varchar(50),
                    total_products int,
                    total_price int,
                    order_date date,
                    Primary key(customer_id),
                    FOREIGN KEY (prod_id) references products(prod_id),
                    FOREIGN KEY (order_id) references orders(order_id) on delete cascade on update cascade
                    );
                    
ALTER TABLE customer
modify total_price varchar(50);
desc customer;

ALTER table customer auto_increment = 1001;
                    
CREATE table orders(
					order_id int primary key,
                    customer_id int,
                    order_date date
                    );
                    
ALTER table orders 
ADD FOREIGN KEY (customer_id) references customer(customer_id) on delete cascade on update cascade;
                    
                    
CREATE table cust_pro(
						customer_id int,
                        prod_id int,
                        prod_name varchar(50),
                        cat_id int,
						FOREIGN KEY (customer_id) references customer(customer_id) on delete cascade on update cascade,
                        FOREIGN KEY (prod_id, prod_name) references products(prod_id, prod_name),
                        FOREIGN KEY (cat_id) REFERENCES category(cat_id) on delete cascade on update cascade
                        );
drop table customer;
                    
show create table products;
ALTER TABLE customer DROP FOREIGN KEY customer_ibfk_1;

delete from category where cat_id = 1;
