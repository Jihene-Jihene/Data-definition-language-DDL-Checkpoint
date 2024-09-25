-- Create Product table
CREATE TABLE Product (
    Product_id VARCHAR2(20) PRIMARY KEY,
    Product_Name VARCHAR2(20) NOT NULL,
    Price NUMBER CONSTRAINT check_positive_price CHECK (Price > 0)
);

-- Create Customer table
CREATE TABLE Customer (
    Customer_id VARCHAR2(20) PRIMARY KEY,
    Customer_Name VARCHAR2(20) NOT NULL,
    Customer_Tel NUMBER
);

-- Create Orders table
CREATE TABLE Orders (
    Customer_id VARCHAR2(20),
    Product_id VARCHAR2(20),
    Quantity NUMBER,
    Total_amount NUMBER,
    FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id),
    FOREIGN KEY (Product_id) REFERENCES Product(Product_id)
);
