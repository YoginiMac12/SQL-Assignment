select * from dept
select * from employee

update employee set deptid=null where id=10

select e.*,d.deptname  from employee e
inner join dept d on d.deptid=e.deptid

select e.*,d.deptname  from employee e
left join dept d on d.deptid=e.deptid

select e.*,d.deptname  from employee e
right join dept d on d.deptid=e.deptid

select e.*,d.deptname  from employee e
full join dept d on d.deptid=e.deptid

-- self join
select e.empname as EmployeeName, m.empname as Managername
from employee e, employee m
where m.id=e.managerid

--Sub query in SQL

--Display the emp who belongs to hr dept
Select * from employee where deptid =
(select deptid from dept where deptname='HR')

--
select * from employee

select* from employee where salary=
(select max(salary) from employee)

select * from employee where salary=(
select max(salary) from employee where salary <>
(
select max(salary) from employee
)
)




-- display emp details whose salary is > avg salary of all emps
select * from employee where salary>
(select avg(salary)from employee)

-- display the emp who is taking higher salary than empid =5
select * from employee where salary>
(select salary from employee where id=5)


-- display emp who have salary > avg salary of sales dept
select * from employee where salary>
(select avg(salary)from employee dept_name)

-- display emp who salary > avg salary of each dept
select * from employee where salary<all
(select avg(salary)from employee 
group by deptid
)


--View in SQL
create view EmpFromHr as
Select * from employee where deptid =
(select deptid from dept where deptname='HR')


create view EmpFromDev as
Select * from employee where deptid =
(select deptid from dept where deptname='Development')

-- execute the view / call the view

select * from EmpFromHr
select * from EmpFromDev




--SP insert the data
select * from dept

create proc SP_insert_dept(
@deptname varchar(20)
)
as begin
insert into dept values(@deptname)
return
end
-- alter  is used to modify the existing proc
alter proc SP_insert_dept(
@deptname varchar(20)
)
as begin
insert into dept values(@deptname)
return
end


-- call the SP

exec SP_insert_dept
@deptname='Test'

--select
select * from employee

create proc SP_select_employee(
@id int
)
as begin
select * from employee where id=@id
return 
end

exec SP_select_employee
@id=10

--update
create proc SP_update_dept(
@deptname varchar(20),
@deptid int
)
as begin
update dept set deptname=@deptname where deptid=@deptid
return
end

exec SP_update_dept
@deptname='test2'
@deptid=5


--delete
create proc SP_delete_dept(
@deptid int
)
as begin
delete from dept where deptid=@deptid
return
end

exec SP_delete_dept
@deptid=5




--Functions in SQL
select * from employee
-- substring

select SUBSTRING(empname,1,3) as Tempname from employee where id=1

--concat
select CONCAT(empname,' ',city) as tempcol from employee
--len
select empname,len(empname) as LengthOFName from employee
--upper
select UPPER(empname) from employee
select LOWER(empname) from employee
--' Amol'
select LTRIM(empname) from employee
--'Amol  '
select RTRIM(empname) from employee
--'  Amol  '
select TRIM(empname) from employee

select ROUND(salary,2) as Salary from employee


--User defined functions
alter function check_name_emp
( @empname varchar(20)
)
returns varchar(5) as
begin
declare @return_value varchar(5);
if(len(@empname)<5) set @return_value='false';
else set @return_value ='true';

return @return_value
end


select empname ,dbo.check_name_emp(empname) from employee


--Add 500rs
alter function add_salary_employee
(
@salary decimal
)
returns decimal 
as begin
declare @newSalary decimal;
set @newSalary =@salary +1350;
return @newSalary
end

select empname, salary , dbo.add_salary_employee(salary) from employee












