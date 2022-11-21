--Homework :
create table customers(
Customerid int primary key,
city varchar(20) not null,
postalcode float,
country varchar(20) not null
)




select * from customers
insert into customers values(1,'Dahanu',410111,'india')
insert into customers values(2,'Pune',603102,'india')
insert into customers values(3,'America',20111,'usa')
insert into customers values(4,'Africa',560111,'canada')
insert into customers values(5,'Berlin',121110,'germany')
insert into customers values(6,'Oslo',410111,'norway')
insert into customers values(7,'Oslo',410111,'norway')
insert into customers values(8,'london',410111,'uk')
insert into customers values(9,'Banglore',null ,'norway')

create table products(
productid int primary key,
productname varchar(20) not null,
price int not null
)
select * from products

insert into products values(1,'laptop',3000)
insert into products values(2,'moblie',4000)
insert into products values(3,'headphone',1000)
insert into products values(4,'bluetooth',2000)
--1) Write a statement that will select the City column from the Customers table

 select city from customers

--2)Select all the different values from the Country column in the Customers table.
  
  select distinct city from customers

--3)Select all records where the City column has the value "oslo"
  
  select * from customers where city='oslo'

--4)Use the NOT keyword to select all records where City is NOT "Berlin".
   
   select * from customers where city not in ('berlin')

--5)Select all records where the CustomerID column has the value 2.
    
	select * from customers where customerid=1

--6)Select all records where the City column has the value 'Berlin' and the PostalCode column has the value 121110.

   select * from customers where city='berlin' and postalcode=121110


--7)Select all records where the City column has the value 'Berlin' or 'London'.

    select * from customers where city ='berlin' or city='london'

--8)Select all records from the Customers table, sort the result alphabetically by the column City.

   select * from customers  
   order by city 
--9)Select all records from the Customers table, sort the result reversed alphabetically by the column City.

    select *from customers
	order by city desc
--10)Select all records from the Customers table, sort the result alphabetically, first by the column Country, then, by the column Cit y
 
    select* from customers
	order by country,city

--11)Select all records from the Customers where the PostalCode column is empty.

    select* from customers where postalcode is null

--12)Select all records from the Customers where the PostalCode column is NOT empty.

    select* from customers where postalcode is not null

--13)Set the value of the City columns to 'Oslo', but only the ones where the Country column has the value "Norway".
      
	  update customers set city='osla' where country ='norway'

--14)Delete all the records from the Customers table where the Country value is 'Norway'.

     delete customers where country='norway'

--15)Use the MIN function to select the record with the smallest value of the Price column.
    
	select min(price) as minprices from products
   
--16)Use an SQL function to select the record with the highest value of the Price column.
    
	select max(price) as maxprices from products

--17)Use the correct function to return the number of records that have the Price value set to 2000
   
   select count(price) from products where price=2000

--18)Use an SQL function to calculate the average price of all products.

   select avg(price)as avgprices from products

--19)Use an SQL function to calculate the sum of all the Price column values in the Products table

   select sum(price) as sumprices from products

--20)Select all records where the value of the City column starts with the letter "b".

    select * from customers where city like 'b%'
    
--21)Select all records where the value of the City column ends with the letter "m".
    
	select *from customers where city like'%m'

--22)Select all records where the value of the City column contains the letter "a".
     
	 select * from customers where city like '%a%'

--23)Select all records where the value of the City column starts with letter "k" and ends with the letter "m".
      
	  select * from customers where city like '[km]%'

--24)Select all records where the value of the City column does NOT start with the letter "b".

      select * from customers where city not like 'b%'

--25)Select all records where the second letter of the City is an "r"
    
	select * from  customers where city like '_r%'

--26)Select all records where the first letter of the City is an "b" or a "n" or an "k".
  
   select* from customers where city like '[bnk]%'

   

--27)Select all records where the first letter of the City starts with anything from an "a" to an "f".
     
	 select *from customers where city like '[a-f]%'

--28)Select all records where the first letter of the City is NOT an "b" or a "n" or an "k".
    
	select *from customers where city not like'[bnk]%'

 --29)Use the IN operator to select all the records where the Country is either "Norway" or "india".

     select * from customers where country in('usa','india')

--30)Use the IN operator to select all the records where Country is NOT "Norway" and NOT "France".

    select * from customers where country not in('usa','india')

--31)Use the BETWEEN operator to select all the records where the value of the Price column is between 10 and 20
 
    select *from products where price between 1000 and 4000

--32)Use the BETWEEN operator to select all the records where the value of the Price column is NOT between 10 and 20.

     select *from products where price not between 2000 and 4000


--33)Use the BETWEEN operator to select all the records where the value of the ProductName column is alphabetically between 'Geitost' and 'Pavlova'.
       
	   select* from products where productname between 'laptop' and 'headphone'

--34)When displaying the Customers table, make an ALIAS of the PostalCode column, the column should be called Pno instead

    select  postalcode as pno from customers

--35)When displaying the Customers table, refer to the table as Consumers instead of Customers.

     select * from customers as coustomers


--36)List the number of customers in each country.
    
	select country ,count(Customerid) as Total from customers
    group by country


--37)List the number of customers in each country, ordered by the country with the most customers first.
 
    select country ,count(Customerid) as Total from customers
    group by country
	order by count(Customerid) desc

--38)Write the correct SQL statement to create a new database called testDB.

 create database testDB
--39)Write the correct SQL statement to delete a database named testDB

 drop database testDB

--40)Add a column of type DATE called Birthday in Persons table
 alter table person add birthday date

--41)Delete the column Birthday from the Persons table
  alter table person drop column birthday
