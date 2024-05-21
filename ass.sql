use ass

CREATE TABLE Categories (
    ID INT IDENTITY PRIMARY KEY ,
    Name VARCHAR(50) NOT NULL,
);

CREATE TABLE Products (
    ID INT IDENTITY PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Description TEXT,
    Price INT NOT NULL,
    Image VARCHAR(255),
    Quantity INT NOT NULL,
    CategoryID INT,
    AdminUserID INT NOT NULL, 
    FOREIGN KEY (CategoryID) REFERENCES Categories(ID),
    FOREIGN KEY (AdminUserID) REFERENCES Users(ID) 
);

CREATE TABLE Users (
    ID INT IDENTITY PRIMARY KEY ,
    Username VARCHAR(50) NOT NULL,
    Password VARCHAR(255) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Address VARCHAR(255),
	Role INT
);

CREATE TABLE Orders (
    ID INT IDENTITY PRIMARY KEY ,
    UserID INT,
    DateCreated DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    Status VARCHAR(50) NOT NULL,
    TotalPrice INT NOT NULL,
	ShippingAddress NVARCHAR(250),
    FOREIGN KEY (UserID) REFERENCES Users(ID)
);


CREATE TABLE OrderDetails (
    ID INT IDENTITY PRIMARY KEY ,
    OrderID INT,
    ProductID INT,
    Quantity INT NOT NULL,
    Price INT NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES Orders(ID),
    FOREIGN KEY (ProductID) REFERENCES Products(ID)
);