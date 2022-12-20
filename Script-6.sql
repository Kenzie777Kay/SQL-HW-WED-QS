--WEEK 5- WEDNESDAY QUESTIONS


--1. List all customers who live in Texas(use Joins)
select first_name, last_name, district
from customer 
full join address
on customer.address_id = address.address_id
where district = 'Texas'

--2. Get all payments above $6.99 with the customer's Full Name
select first_name, last_name, amount
from customer
full join payment 
on customer.customer_id = payment.customer_id 
where amount > 6.99

--3. Show all customers names who have made payments over 175$(use subqueries)
select customer_id
from payment 
group by customer_id 
having sum(amount) > 175
order by sum(amount) desc;


select store_id, first_name, last_name 
from customer  
where customer_id in (
    select customer_id 
    from payment
    group by customer_id 
    having sum(amount) > 175
    order by sum(amount) desc
    )



--4. List all Customers that live in Nepal(use the city table)
select customer.first_name, customer.last_name, country.country
from customer
full join address
on customer.address_id = address.address_id
full join city
on address.city_id = city.city_id 
full join country 
on city.country_id = country.country_id
where country = 'Nepal'


--5. Which staff member had the most transactions?
select first_name, last_name,
from staff 
full join payment
on staff.staff_id = payment.staff_id 
where 

--6. How many movies of each rating are there?
select count(rating) from film
where rating = 'NC-17'

select count(rating) from film
where rating = 'R'

select count(rating) from film
where rating = 'PG-13'

select count(rating) from film
where rating = 'PG'

select count(rating) from film
where rating = 'G'


--7.Show all customers who have made a single payment above $6.99(use subqueries)
select first_name, last_name, amount
from customer
full join payment
on customer.customer_id = payment.customer_id
where amount > 6.99


--8.How many free rentals did our store give away?
select count(amount)
from payment
where amount = 0


