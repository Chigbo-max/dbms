use user_db;
CREATE TABLE users (
	Id SERIAL PRIMARY KEY,
	Name VARCHAR(100),
	Usersemail VARCHAR(100) UNIQUE
);

CREATE TABLE products(
	Id SERIAL PRIMARY KEY,
    Name VARCHAR(100),
    Price DOUBLE,
    WholesalePrice DOUBLE,
    ListPrice DOUBLE
);

CREATE TABLE orders(
	OrderId SERIAL PRIMARY KEY,
    CustomerId BIGINT UNSIGNED,
    ProductId BIGINT UNSIGNED,
    OrderDate DATE,
    DueDate DATE,
    ShippingDestination CHAR(100),
    OrderQty DOUBLE,
    FOREIGN KEY (CustomerId) REFERENCES users(Id),
    FOREIGN KEY (ProductId) REFERENCES products(Id)
);
