select * from customer;
-- insert stmt
insert into customer
values (13,'Fender', 'Scottsdale', 'AZ', 45678900,1);
insert into customer (name, city, state, sales, active) 
Values ('Ibanez', 'Bensalem', 'PA', 58376493, 1),
	   ('Ibanez', 'Bensalem', 'PA', 58376493, 1);
       
-- Update Statement
update customer
	set name = 'Pearl',
		city = 'Test',
		state = 'TE'
	where id = '17';
    
    -- Delete statement
    Delete from customer where ID = 17;
    
-- select using 'in' clause
select * from customer
where ID in (10,11,12);

