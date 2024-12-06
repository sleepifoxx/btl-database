drop database project;
CREATE DATABASE project;
USE project;

CREATE TABLE BOOKS
(
    book_id      INT            NOT NULL AUTO_INCREMENT PRIMARY KEY,
    price        DECIMAL(10, 2) NOT NULL,
    book_name    VARCHAR(255)   NOT NULL,
    stock        INT            NOT NULL,
    description  TEXT,
    category_id  INT            NOT NULL,
    publisher_id INT            NOT NULL
);

CREATE TABLE USERS
(
    user_id      INT                 NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username     VARCHAR(255) UNIQUE NOT NULL,
    password     VARCHAR(255)        NOT NULL,
    email        VARCHAR(255)        NOT NULL,
    date_created DATETIME,
    role         VARCHAR(255)        NOT NULL,
    reports_to   INT
);

CREATE TABLE AUTHORS
(
    author_id     INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
    author_name   VARCHAR(255) NOT NULL,
    date_of_birth DATETIME,
    biography     TEXT,
    nationality   VARCHAR(100)
);

CREATE TABLE BOOK_AUTHOR
(
    author_id INT NOT NULL,
    book_id   INT NOT NULL
);

CREATE TABLE CARTS
(
    book_id          INT NOT NULL,
    user_id          INT NOT NULL,
    quantity_ordered INT NOT NULL
);

CREATE TABLE REVIEWS
(
    review_id   INT AUTO_INCREMENT PRIMARY KEY,
    user_id     INT NOT NULL,
    book_id     INT NOT NULL,
    comment     TEXT,
    rating      INT NOT NULL,
    review_date DATETIME
);

CREATE TABLE CATEGORIES
(
    category_id   INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL,
    description   TEXT
);

CREATE TABLE PUBLISHERS
(
    publisher_id   INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
    publisher_name VARCHAR(255) NOT NULL,
    contact        VARCHAR(100),
    address        TEXT
);

CREATE TABLE ORDERS
(
    order_id      INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id       INT          NOT NULL,
    coupon_id     INT,
    order_date    DATETIME     NOT NULL,
    required_date DATETIME     NOT NULL,
    shipped_date  DATETIME,
    status        VARCHAR(100) NOT NULL
);

CREATE TABLE ORDERDETAILS
(
    order_id         INT            NOT NULL,
    book_id          INT            NOT NULL,
    quantity_ordered INT            NOT NULL,
    price_each       DECIMAL(10, 2) NOT NULL
);

CREATE TABLE COUPONS
(
    coupon_id   INT           NOT NULL AUTO_INCREMENT PRIMARY KEY,
    coupon_name VARCHAR(50)   NOT NULL,
    discount    DECIMAL(5, 2) NOT NULL,
    start_date  DATE          NOT NULL,
    end_date    DATE          NOT NULL,
    stock       INT
);

