/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
 select P.name as Products, C.Name as Category from products as P 
 inner join Catergories as C on C.CategoryID = P.CategoryID
 where C.Name = 'Computers';
 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
 select p.Name, p.price, r.rating from products as p
 inner join reviews as r on r.ProductID = p.ProductID
 where r.rating = 5;
 
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
select e.FirstName, e.LastName, Sum(s.Quantity) as total 
from sales as s 
inner join employees as e on e.EmployeeID = s.EmployeeID 
group by e.EmployeeID
order by total desc
limit 2; 

select * from sales 
Where employeeID = 33809;

/* joins: find the name of the department, and the name of the category for Appliances and Games */
select d.Name as 'Department Name', c.Name as 'category name' from departments as d 
inner join categories as c on c.DepartmentsID = d.DepartmentsID
where c.name = 'appliances' or c.name = 'games';

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
select p.name, sum(s.quantity) as 'total sold', sum(s.quantity * s.PricePerUnit) as 'Total Price'
from products as p 
inner join sales as s on s.ProductID = p.ProductID
where p.ProductID = 97;

select * from sales where productID = 97;

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
select p.name, r.reviewer, r.rating, r.comment
from products as p 
inner join review as r on r.ProductID = p.ProductID 
where p.productID = 857 and r.rating = 1;