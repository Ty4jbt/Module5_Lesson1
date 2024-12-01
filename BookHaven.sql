Table Books {
  BookID INT [pk]
  Title VARCHAR(100) [not null]
  Genre VARCHAR(50)
  Price DECIMAL(10, 2) [not null]
  PublicationYear YEAR
  AuthorID INT [ref: > Authors.AuthorID]
}

Table Authors {
  AuthorID INT [pk]
  FirstName VARCHAR(50) [not null]
  LastName VARCHAR(50) [not null]
  Bio TEXT
}

Table Customers {
  CustomerID INT [pk]
  FirstName VARCHAR(50) [not null]
  LastName VARCHAR(50) [not null]
  Email VARCHAR(100) [not null]
  PhoneNumber VARCHAR(15)
  Address TEXT
}

Table Transactions {
  TransactionID INT [pk]
  TransactionDate DATETIME [not null]
  CustomerID INT [ref: > Customers.CustomerID]
  TotalAmount DECIMAL(10, 2) [not null]
}

Table TransactionDetails {
  DetailID INT [pk]
  TransactionID INT [ref: < Transactions.TransactionID]
  BookID INT [ref: < Books.BookID]
  Quantity INT [not null]
  SubTotal DECIMAL(10, 2) [not null]
}
