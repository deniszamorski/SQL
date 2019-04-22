Select * FROM Product
 order by price desc;

Select price, count(*) FROM mma.prodcut
	group by price;
    
-- Multiply query
Select *, li.quantity*p.price from lineitem li
	join product p
	 on li.productID = p.ID;