-- 1 
select id , first_name , last_name from employee where team_id is null ;

-- 2
select id , first_name , last_name from employee left join leave on employee.id = leave.employee_id
where leave.id is null ;

-- 3
select leave.id , leave.start_date , leave.end_date , first_name , last_name ,team.name
from leave join employee on leave.employee_id = employee.id
left join team on employee.team_id = team.id ;

-- 4
select contract_type , count(*) from employee group by contract_type;

-- 5
select count(*) from leave where current_date between start_date and end_date ;


