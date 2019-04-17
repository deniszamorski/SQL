SELECT 	name as 'Contact Name', 
		concat(city,',', state) as 'Location',
		concat('$', format(sales,2)) as 'Sales' 
FROM sqlbootcampexample.customer;