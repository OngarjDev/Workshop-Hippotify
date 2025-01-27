# SELECT employee_id,first_name,last_name FROM Employees;

# SELECT  DISTINCT employee_id, first_name, last_name, email, role, phone_number, hire_date, department_id, salary
# FROM  Employees


# select  * FROM Departments JOIN Locations D on D.location_id = Departments.location_id;
# select  * From Employees WHERE Employees.department_id is null;
# select role,COUNT(*) FROM  Employees GROUP BY role
# HAVING  COUNT(*) > 2;
# select  Employees.first_name, Employees.salary FROM Employees ORDER BY salary DESC ;
# select  Employees.first_name , Year(NOW() - YEAR(hire_date)) AS workingYear FROM  Employees WHERE hire_date > YEAR('2021-12-06');

#LEVEL 1
# SELECT * FROM Employees WHERE first_name = 'Oliver';
# select Employees.first_name,Employees.last_name,Employees.role,Employees.salary
# From Employees WHERE first_name LIKE 'A%' AND salary > 30000;
# select * FROM  Employees WHERE role = 'Analyst' or role = 'Manager';
select  Employees.first_name,Employees.last_name,Employees.role FROM Employees WHERE Year(hire_date) = '2021';

#LEVEL2
select Employees.first_name,Employees.last_name
from Employees join Departments on Departments.department_id = Employees.department_id WHERE salary > 50000;
select Employees.first_name,Employees.last_name,Employees.salary ,Departments.department_name FROM Employees WHERE role = 'Manager' ORDER BY salary ASC;
select Employees.first_name,Employees.last_name,Employees.salary,Projects.project_name;

Insert INTO  Employees(employee_id, first_name, last_name, email, role, phone_number, hire_date, department_id, salary) values ('00122','KLeng','zaza','ongarj5678995@gmail.com','Superadmin',0999999999,'2024-05-15',3,6999999);
update Employees set employee_id = "67122",phone_number = "09876543211",salary = 77777 WHERE employee_id = '32';
delete FROM Employees where employee_id = '67122'