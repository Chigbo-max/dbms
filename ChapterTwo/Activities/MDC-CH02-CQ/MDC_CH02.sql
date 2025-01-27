USE mdc_ch02;
CREATE TABLE customer (
	CustomerId BIGINT PRIMARY KEY,
		FirstName VARCHAR(25),
		LastName VARCHAR(25),
        Phone VARCHAR(12),
        EmailAddress VARCHAR(100),
        ReferredBy BIGINT,
        FOREIGN KEY (ReferredBy) REFERENCES customer(CustomerId) 
);

CREATE TABLE invoice(
	InvoiceNumber BIGINT PRIMARY KEY,
    CustomerId BIGINT,
    DateIn DATE,
    DateOut DATE,
    TotalAmount DOUBLE,
    FOREIGN KEY (CustomerId) REFERENCES customer(CustomerId)
);

CREATE TABLE invoice_item(
	ItemNumber BIGINT,
    InvoiceNumber BIGINT,
    Item VARCHAR(50),
    Quantity BIGINT,
    UnitPrice BIGINT(8) UNSIGNED,
    PRIMARY KEY (ItemNumber, InvoiceNumber),
    FOREIGN KEY (InvoiceNumber) REFERENCES invoice(InvoiceNumber)
    );
    
 
    
  


    


    




