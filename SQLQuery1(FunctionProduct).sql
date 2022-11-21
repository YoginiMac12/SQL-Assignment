create table Product(
productname varchar(10),
price varchar(20),
)

select * from product

insert into Product values('Mouse','6000')
insert into Product values('Keyboard','3000')
insert into Product values('Laptop','8000')
insert into Product values('Mobile','4000')
insert into Product values('Headphones','2000')

alter function dis_price_product
(
@price decimal
)
returns decimal 
as begin
declare @disPrice decimal;
set @disPrice =@price- (@price *0.10);
return @disPrice
end

select productname, price , dbo.dis_price_product(price) from product


