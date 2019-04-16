SELECT * 
  FROM customer
  where sales > 30000000
   and sales < 70000000
 ORDER BY sales desc;
 
select name as 'Cutomer Name', sales as 'Total Sales'
  from customer;
--  WHERE state = 'OH';