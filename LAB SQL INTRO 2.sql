# Select all the actors with the first name ‘Scarlett’.
# Select all the actors with the last name ‘Johansson’.
# How many films (movies) are available for rent?
# How many films have been rented?
# What is the shortest and longest rental period?
# What are the shortest and longest movie duration? Name the values max_duration and min_duration.
# What's the average movie duration?
# What's the average movie duration expressed in format (hours, minutes)?
# How many movies longer than 3 hours?
# Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
# What's the length of the longest film title?

use sakila;
select * from actor
where first_name = 'Scarlett';
select * from actor
where last_name = 'Johansson';
select count(film_ID) from inventory;
select count(*) from rental;
select min(rental_duration) from film;
select max(rental_duration) from film;
select min(length) as min_duration from film;
select max(length) as max_duration from film;
select avg(length) from film;
select datediff(minute, 115);
select count(*) from film
where length > 180;
select *, concat(first_name,'.', last_name, '@sakilacustomer.org') as email from actor;
select *, length(title) as film_length from film
order by film_length desc;
