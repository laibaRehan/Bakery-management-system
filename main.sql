CREATE database DBConnection;
USE DBConnection;

CREATE table products(
					prod_id int primary key,
                    prod_name varchar(50),
                    cat_id int,
                    cat_name varchar(50),
                    sup_id int,
                    sup_name varchar(50),
                    mfg_date date,
                    exp_date date,
                    price int,
                    img varchar(255)
                    );
                    
SELECT * from products;

update products set price = 250
where prod_id = 112;

CREATE table login(
					username varchar(50),
                    pass varchar(50)
                    );
                    
INSERT into login values('daniyal6429', '12345');
SELECT * from cart;


CREATE table cart(
					id int primary key,
                    prod_name varchar(50),
                    price int,
                    img varchar(255),
                    quantity int(255)
                    );


ALTER TABLE products
modify price float;
drop table cart;

