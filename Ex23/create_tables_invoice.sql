CREATE TABLE INVOICE(
	InvoiceNumber		INT				NOT NULL IDENTITY(1000, 100),
	InvoiceDate			Date			NOT NULL,
	SubTotal			Money			NOT NULL,
	TaxPct				Decimal(18,2)	NOT NULL DEFAULT 25,
	Total				Money			NOT NULL,
	CONSTRAINT			INVOICE_PK		PRIMARY KEY(InvoiceNumber)
);

CREATE TABLE PRODUCT(
	ProductNumber		INT				NOT NULL IDENTITY(100, 10),
	PorductType			Char(50)		NOT NULL,
	ProductDescription	TEXT			NULL,
	UnitPrice			Money			NOT NULL,
	CONSTRAINT			PRODUCT_PK		PRIMARY KEY(ProductNumber)
);

CREATE TABLE LINE_ITEM(
	InvoiceNumber		INT				NOT NULL,
	LineNumber			INT				NOT NULL IDENTITY(1, 1),
	ProductNumber		INT				NOT NULL,
	Quantity			INT				NOT NULL,
	Unityprice			Money			NOT NULL,
	Total				Money			NOT NULL,
	CONSTRAINT			LINE_PK			PRIMARY KEY(InvoiceNumber, LineNumber),
	CONSTRAINT			INVOICE_FK		FOREIGN KEY(InvoiceNumber)
							REFERENCES INVOICE(InvoiceNumber)
								ON UPDATE CASCADE,
	CONSTRAINT			PRODUCT_FK		FOREIGN KEY(ProductNumber)
							REFERENCES PRODUCT(ProductNumber)
								ON UPDATE CASCADE
								ON DELETE NO ACTION,
);
