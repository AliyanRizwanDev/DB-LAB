select c.name,c.phoneNum,l.current_credit 
from customer c inner join loanaccounts l on c.customer_id=l.customer_id 
where l.current_credit >15000;

select c.name,c.Address,l.max_credit 
from customer c inner join loanaccounts l on c.customer_id=l.customer_id 
where c.name='Imran Khan';

select c.name,c.phoneNum,l.current_credit 
from customer c left join loanaccounts l on c.customer_id=l.customer_id 
and l.current_credit = null;

select c.*
from customer c inner join loanaccounts l on c.customer_id=l.customer_id inner join savingaccounts s on  c.customer_id=s.customer_id
and c.customer_id in(l.customer_id) or c.customer_id not  in (s.customer_id);

select c.*
from customer c, loanaccounts l ,savingaccounts s 
where c.customer_id in(l.customer_id) and c.customer_id not  in (s.customer_id);


select t.*, c.name,e.name
from transaction t LEft join employee e on t.eid=e.eid 
inner join  savingaccounts s on s.Account_number=t.savingAccount_number 
inner join customer c on c.customer_id=s.customer_id;


select c.*, s.*, s.branch_id
from customer c inner join savingaccounts s on c.customer_id=s.customer_id;

select c.name,c.Address ,b.branch_address,ba.bank_name 
from customer c inner join  loanaccounts l on c.customer_id=l.customer_id
inner join branch b on b.branch_id = l.branch_id 
inner join  bank ba on b.bank_id=ba.bank_id;

select b.branch_id , b.branch_address
from  branch b, bank ba  where ba.bank_name in  (ba.bank_name='Allied Bank Limited ');

select e.name,e.designation,b.branch_address,ba.bank_name 
from employee e right join branch b on b.branch_id=e.branch_id
 right join bank ba on b.bank_id=ba.bank_id;
 
 select b.branch_id
 from branch b, loanaccounts l,savingaccounts s 
 where b.branch_id in (s.branch_id) or b.branch_id in (s.branch_id);

