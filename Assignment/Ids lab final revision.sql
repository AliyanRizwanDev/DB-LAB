use northwind;
# For a particular Shipping company
select n.company, n.address, n.city , count(o.shipped_date),min(o.shipped_date),max(o.shipped_date)
from shippers n inner join orders o on n.id = o.shipper_id where n.company='Shipping Company A';
# for all shipping company use group by
select n.company, n.address, n.city , count(o.shipped_date) as TotalShipped,min(o.shipped_date),max(o.shipped_date)
from shippers n inner join orders o on n.id = o.shipper_id group by n.company;

select * from suppliers s
where exists(select submitted_date from purchase_orders p where s.id = p.supplier_id And submitted_date < '2006-2-1' );

select concat(first_name,' ',last_name) as Employee_Name
from employees where id in ( select employee_id from orders where exists (select status_name from orders_status where status_name='Closed' ));

select p.product_name,pod.quantity
from products p inner join purchase_order_details pod  where p.id = pod.product_id;

CREATE VIEW employ_data
as
select e.first_name, e.last_name ,e.city
from employees e where e.city ='Redmond' or e.city= 'Redmond' or e.city = 'Kirkland' and id in (select id from employee_privileges ep where e.id=ep.employee_id and  employee_id  in(select privilege_id from privileges p where ep.privilege_id=p.id and p.privilege_name='Purchase Approvals' ));

select * from employ_data;

alter table employees add email varchar(15);
alter table employees drop email;
alter table employees add  email varchar(15) after notes ;

