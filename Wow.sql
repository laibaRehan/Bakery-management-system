CREATE database DBLC;
USE DBLC;

CREATE table products(
					prod_id int,
                    prod_name varchar(50),
                    cat_id int,
                    sup_id int,
                    mfg_date date,
                    exp_date date,
                    price int,
                    img varchar(255),
                    cart_id int,
                    Primary key(prod_id),
                    FOREIGN KEY (cat_id) REFERENCES category(cat_id) on delete cascade on update cascade,
                    FOREIGN KEY (sup_id) REFERENCES supplier(sup_id) on delete cascade on update cascade
                    );
SELECT * from products;
                    
CREATE table category(
					cat_id int primary key,
                    cat_name varchar(50)
                    );

INSERT into category values ('1', 'Brownies'),
							('2', 'Cakes'),
                            ('3', 'Donuts'),
                            ('4', 'Pastries'),
                            ('5', 'Nimcos');
SELECT * from category;                    

CREATE table supplier(
					sup_id int primary key,
                    sup_name varchar(50)
                    );
                    
INSERT into supplier values ('167', 'Daniyal'),
							('046', 'Hammad'),
                            ('189', 'Sohaib'),
                            ('195', 'Laiba'),
                            ('199', 'Rameesha'),
							('200', 'Shahzaib');
SELECT * from supplier;
update supplier set sup_id = 146
where sup_name = 'Hammad';

CREATE table login(
					username varchar(50),
                    pass varchar(50)
                    );
                    
INSERT into login values('daniyal6429', '12345');

CREATE table cart(
					id int primary key auto_increment,
					prod_id int,
                    prod_name varchar(50),
                    price int,
                    img varchar(255),
                    quantity int(255),
                    foreign key (prod_id) references products(prod_id)
                    );
SELECT * from cart;       

CREATE table customer(
					customer_id varchar(50),
                    prod_id int,
                    fname varchar(50),
                    lname varchar(50),
					email varchar(50),
                    ph_number varchar(50),
                    address varchar(50),
                    city varchar(50),
                    code int,
                    payment varchar(50),
                    total_products varchar(50),
                    total_price varchar(50),
                    order_date date,
                    Primary key(customer_id),
                    FOREIGN KEY (prod_id) references products(prod_id)
                    );
drop table customer;
alter table customer 
modify customer_id int auto_increment;

desc customer;
SELECT * from customer;
                    
CREATE table orders(
					order_id int primary key,
                    customer_id int,
                    order_date date
                    );
                    
ALTER table orders 
ADD FOREIGN KEY (customer_id) references customer(customer_id) on delete cascade on update cascade;
SELECT * from orders;
                    
                    
CREATE table cust_pro(
						orderdetailID int auto_increment,
						order_id int,
                        prod_id int,
                        Primary key(orderdetailID),
                        FOREIGN KEY (prod_id) references products(prod_id),
                        FOREIGN KEY (order_id) references orders(order_id) on delete cascade on update cascade
                        );
SELECT * from cust_pro;
ALTER table cust_pro auto_increment = 1;


