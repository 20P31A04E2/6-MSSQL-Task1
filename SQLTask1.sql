create database Sravanthi_sqlTask1;

use Sravanthi_sqlTask1;

/*create table Employee(
FirstName varchar(100),
LastName varchar(100),
Title varchar(50),
Age int,
Salary int);*/

select * from Employee;

insert into Employee(FirstName, LastName, Title, Age, Salary) values
('John','Doe','Programmer',24,50000);

insert into Employee(FirstName, LastName, Title, Age, Salary) values
('Williams','sting','Full stack developer',28,62000);

insert into Employee(FirstName, LastName, Title, Age, Salary) values
('Stephen','Joe','UI Intern',21,25000);

insert into Employee(FirstName, LastName, Title, Age, Salary) values
('Cristy','Tom','C# developer',25,45000);

insert into Employee(FirstName, LastName, Title, Age, Salary) values
('Lucy','khan','QA Intern',21,25000);

insert into Employee(FirstName, LastName, Title, Age, Salary) values
('Jennifer','Singh','Data analytics',30,55000);

--1
select FirstName, LastName, Title, Age, Salary from Employee; 

--2
select FirstName,Age,Salary from Employee;

--3
select FirstName as NAME from Employee;

--4
select CONCAT(FirstName, ' ', LastName) AS NAME from Employee;

--5
select * from Employee where Salary>38000;

--6
select FirstName, LastName from Employee where Age<24;

--7
select FirstName, LastName, Salary from Employee where Title='programmer';

--8
select * from Employee where LastName LIKE '%o%';

--9
select LastName from Employee where FirstName='Kelly'; --Kelly record is not present. Use John, Williams, Cristy etc..,

--10
select * from Employee where LastName='Moore'; --Moore record isn't present. Use Doe,Joe, Tom etc..,

--11
select * from Employee where Age>=35; --No employee with age >=35. Use 30 or less than 30

--12
select FirstName, LastName, Age, Salary from Employee where Age >24 AND Age<43;

--13
select FirstName, Title, LastName from Employee where Age BETWEEN 28 AND 62 AND Salary>31250;

--14
select * from Employee where Age<=48 AND Salary>21520;

--15
select FirstName, Age from Employee where FirstName LIKE 'John%' AND Salary Between 25000 AND 35000; -- In table John Salary is 50k

--16
select * from Employee order by Age DESC;

--17
select * from Employee order by Age;

--18
select * from Employee order by Salary DESC;

--19
select * from Employee order by Salary;

--20
select * from Employee where Age>17 order by Salary;

--21
select * from Employee where Age<34 order by Salary DESC;

--22
select * from Employee order by LEN(FirstName);

--23
select count(FirstName) from Employee where Age>45; -- No employee has age >45.

--24
select *, Age+5 as NewAge, Salary-250 as NewSalary from Employee;

--25
select count(LastName) from Employee where LastName LIKE '%re' OR LastName LIKE '%ri' OR LastName LIKE '% ks';

--26
select avg(Salary) from Employee;

--27
select avg(Salary) from Employee where Title='Fresher';

--28
select avg(Salary) from Employee where Title='Programmer';

--29
select avg(Salary) from Employee where Age BETWEEN 25 AND 50;

--30
select count(Title) from Employee where Title='Fresher';

--31
select (SUM(CASE WHEN Title = 'Programmer' THEN 1 ELSE 0 END) * 100.0) / COUNT(*) AS ProgrammersPercentage from Employee;

--32
select sum(Salary) from Employee where Age>40;

--33
select sum(Salary) from Employee where Title='Fresher' OR Title='Programmer';

--34
select (sum(Salary)*36) from Employee where Title='Fresher' AND Age>27;

--35
select FirstName,LastName,Age from Employee where Age = (select max(Age) FROM Employee WHERE Salary < 35000);

--36
select FirstName from Employee where Age = (select min(Age) from Employee where Title='General Manager');

--37
select * from Employee where Age = (select Max(Age) from Employee where Salary < 35000 AND Title='Fresher');

--38
select FirstName, Age from Employee where (FirstName LIKE 'John%' OR FirstName LIKE 'Michael%') AND Salary BETWEEN 17000 AND 26000;

--39
select Title, COUNT(*) AS EmployeeCount from Employee GROUP BY Title ORDER BY EmployeeCount ASC;

--40
select Title, AVG(Salary) AS AverageSalary from Employee GROUP BY Title;

--41
select AVG(Salary) AS AverageSalary from Employee where Title <> 'Freshers';

--42
select Title, AVG(Age) AS AverageAge from Employee GROUP BY Title;

--43
select Title, COUNT(*) AS EmployeeCount from Employee where Age BETWEEN 25 AND 40 GROUP BY Title;

--44
select Title, AVG(Salary) AS AverageSalary from Employee GROUP BY Title HAVING AVG(Salary) >= 25000;

--45
select Title, SUM(Age) AS TotalAge from Employee GROUP BY Title HAVING SUM(Age) > 30;
