--Customer table
CREATE TABLE CUSTOMER(CustomerID INT Primary Key,
Full_Name VARCHAR(100),
Email VARCHAR(100),
Phone_Number VARCHAR(15), 
Shipping_Address VARCHAR(255), 
Registration_Date DATE,
FOREIGN KEY (CustomerID) REFERENCES CUSTOMER(CustomerID)
);

--Product table
CREATE TABLE PRODUCT(ProductID 	INT Primary Key,
Product_Name VARCHAR(150),
Description VARCHAR(255),
Category VARCHAR(50),
Price DECIMAL(10,2),
Stock_Quantity INT,
SellerID INT,
FOREIGN KEY(SellerID) REFERENCES SELLER(SellerID)
);

--Seller table
CREATE TABLE SELLER(SellerID INT Primary Key,
Seller_Name VARCHAR(100),
Contact_Email VARCHAR(100),
Business_Address VARCHAR(255),
Phone_Number VARCHAR(15),
Joining_Date DATE
);

--Order table 
CREATE TABLE ORDERS(OrderID INT Primary Key,
CustomerID INT,
Order_Date TIMESTAMP,
Total_Amount DECIMAL(10,2),
Payment_Method VARCHAR(30),
Order_Status VARCHAR(30),
FOREIGN KEY(CustomerID) REFERENCES CUSTOMER(CustomerID)
);

--Shipment table
CREATE TABLE SHIPMENT(ShipmentID INT Primary Key,
OrderID INT,
Delivery_Partner VARCHAR(50), 
Shipping_Date DATE,
Estimated_Delivery_Date DATE,
Current_Location VARCHAR(100),
Delivered_Date DATE,
FOREIGN KEY(ORDERID) REFERENCES ORDERS(OrderID)
);

--OrderLineItem table
CREATE TABLE ORDERLINEITEM(LineItemID INT Primary Key,
OrderID INT,
ProductID INT,
Quantity INT,
Unit_Price DECIMAL(10,2),
FOREIGN KEY(ProductID) REFERENCES PRODUCT(ProductID),
FOREIGN KEY(OrderID) REFERENCES ORDERS(OrderID)
);
