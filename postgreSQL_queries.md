1) Employee_Name and Manager_Name

```
select e.name as "Employee name",m.name as "Manager name" from employee e ,employee m where m.emp_id=e.mgr_id;
```
2) Employee name, emp doj, manager name, manger doj

```
 select e.name as "Employee name",e.joining_date as "Employee joining date",m.name as "Manager name",m.joining_date  as "Manager joining date"  from employee e ,employee m where e.mgr_id=m.emp_id;
```Tr
3)Employee name, Emp Dept, Mgr Dept

```
select a.name Emp_Name,ad.name Employee_dept ,bd.name Manager_dept FROM employee a, employee b ,dept ad,dept bd WHERE b.emp_id = a.mgr_id and a.dept_id=ad.dept_id and b.dept_id=bd.dept_id;
```

4) List of employees without a manager

```
select name from employee where mgr_id is null;
```
5)List of terminated manager names

```
select distinct b.name AS manager_names from employee a,employee b where a.mgr_id=b.emp_id and b.termination_date<now()::date;
```

6)List of department names where we have a terminated employee

```
select distinct  d.name as "Department name" from dept d, employee e where d.dept_id=e.dept_id and e.termination_date is not null;

```

7)List of department names where we have a terminated Manager

```
select distinct d.name as "Department name" from dept d, employee e where d.dept_id=e.dept_id and e.termination_date is not null;
```

8)List of employees whose manager's salary is less then employee salary

```
select a.name AS "Emp_Name" FROM employee a, employee b WHERE b.emp_id = a.mgr_id and b.salary<a.salary;

```

9)List of employees whose doj is earlier than manager

```
select a.name AS "Emp_Name" FROM employee a, employee b WHERE b.emp_id = a.mgr_id and a.joining_date<b.joining_date;
```

10)List of employees whose name has a vowel

```
select name
FROM employee
WHERE name LIKE '%A%'
OR name LIKE '%E%'
OR name LIKE '%I%'
OR name LIKE '%O%'
OR name LIKE '%U%'
OR name LIKE '%a%'
OR name LIKE '%e%'
OR name LIKE '%i%'
OR name LIKE '%o%'
OR name LIKE '%u%';

```

11)List of employees whose's manager name has a vowel and employee salary is less than 20000

```
select b.name AS "Emp_Name" FROM employee a, employee b WHERE a.emp_id = b.mgr_id and b.salary<20000 and (a.name LIKE '%A%' OR a.name LIKE '%E%' OR a.name LIKE '%I%' OR a.name LIKE '%O%' OR a.name LIKE '%U%' OR a.name LIKE '%a%' OR a.name LIKE '%e%' OR a.name LIKE '%i%' OR a.name LIKE '%o%' OR a.name LIKE '%u%');
```

12)List of employees who has joined in Jan/Feb and Nov

```
select name from employee WHERE to_char(joining_date, 'mm') = '02' 
OR to_char(joining_date, 'mm') = '01' 
OR to_char(joining_date, 'mm') = '11';
```
