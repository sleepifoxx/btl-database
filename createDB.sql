CREATE DATABASE project;

USE project;

CREATE TABLE books
(
    book_id      INT            NOT NULL AUTO_INCREMENT PRIMARY KEY,
    book_name    VARCHAR(255)   NOT NULL,
	category_id  INT            NOT NULL,
    publisher_id INT            NOT NULL,
    buy_price    BIGINT			NOT NULL,
    stock        INT            NOT NULL,
    description  TEXT
);

CREATE TABLE authors
(
    author_id     INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
    author_name   VARCHAR(255) NOT NULL,
    date_of_birth DATE,
    biography     TEXT,
	nationality   VARCHAR(100)
);

CREATE TABLE categories
(
    category_id   INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL,
    description   TEXT
);

CREATE TABLE publishers
(
    publisher_id   INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
    publisher_name VARCHAR(255) NOT NULL,
    contact        VARCHAR(100),
    address        TEXT
);

CREATE TABLE users
(
    user_id      INT                 NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username     VARCHAR(255) 		 NOT NULL UNIQUE,
    password     VARCHAR(255)        NOT NULL,
    email        VARCHAR(255)        NOT NULL,
    date_created DATE,
    role         VARCHAR(255)        NOT NULL,
    reports_to   INT
);

CREATE TABLE orders
(
    order_id      INT      		NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id       INT      		NOT NULL,
    coupon_id     INT,
    order_date    DATE     		NOT NULL,
    required_date DATE     		NOT NULL,
    shipped_date  DATE,
    status        VARCHAR(100)	NOT NULL
);

CREATE TABLE reviews
(
    review_id   INT 			NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id     INT 			NOT NULL,
    book_id     INT 			NOT NULL,
    comment     TEXT,
    rating      INT 			NOT NULL,
    review_date DATE
);

CREATE TABLE coupons
(
    coupon_id   INT           NOT NULL AUTO_INCREMENT PRIMARY KEY,
    coupon_name VARCHAR(50)   NOT NULL,
    discount    DECIMAL(5, 2) NOT NULL,
    start_date  DATE          NOT NULL,
    end_date    DATE          NOT NULL,
    stock       INT
);

CREATE TABLE book_author
(
    book_id   			INT 			NOT NULL,
    author_id 			INT 			NOT NULL,
    publication_date 	DATE,
    role 				VARCHAR(255),
    notes 				TEXT
);

CREATE TABLE carts
(
	user_id          INT 			NOT NULL,
    book_id          INT 			NOT NULL,
    add_date		 DATE,
    notes		 	 TEXT
);

CREATE TABLE orderdetails
(
    order_id         INT            NOT NULL,
    book_id          INT            NOT NULL,
    quantity_ordered INT            NOT NULL,
    price_each       BIGINT			NOT NULL
);