Select * from customer;
Select * from customer
  where name like 'A%'
     or name like 'D%';
select * from customer
  where name like 'A%'
    and state = 'NJ';
    
-- Use a regular expression to return all records with names starting with a vowel

select * from customer 
   where name regexp "^[aeiou].*";