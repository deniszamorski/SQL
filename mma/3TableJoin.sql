Select p.Price, p.Description, l.Quantity, i.total
	From Product p
    Join LineItem l
		On p.ID = l.productID
	Join invoice i
		On l.InvoiceID = i.ID;


