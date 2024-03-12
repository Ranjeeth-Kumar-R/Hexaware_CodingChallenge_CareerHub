create database if not exists CareerHub;

use CareerHub;

create table if not exists Companies(
CompanyID int primary key,
CompanyName varchar(255),
Location varchar(255));

create table if not exists Jobs(
JobID int primary key,
CompanyID int,
JobTitle varchar(255),
JobDescription text,
JobLocation varchar(255),
Salary decimal,
JobType varchar(255),
PostedDate datetime,
foreign key(CompanyID) references Companies(CompanyID));

create table if not exists Applicants(
ApplicantID int primary key,
FirstName varchar(255),
LastName varchar(255),
Email varchar(255),
Phone varchar(255),
Resume text);

create table if not exists Applications(
ApplicationID int primary key,
JobID int,
ApplicantID int,
ApplicationDate datetime,
CoverLetter text,
foreign key(JobID) references Jobs(JobID),
foreign key(ApplicantID) references Applicants(ApplicantID));

-- Insertion 

insert into Companies (CompanyID, CompanyName, Location)
values
    (1, 'Acme Corporation', 'New York'),
    (2, 'Tech Innovations Ltd.', 'San Francisco'),
    (3, 'Global Solutions Inc.', 'London'),
    (4, 'Big Data Analytics Co.', 'Tokyo'),
    (5, 'Creative Minds Enterprises', 'Los Angeles'),
    (6, 'Software Wizards LLC', 'Seattle'),
    (7, 'Innovative Technologies Group', 'Berlin'),
    (8, 'Data Dynamics Corporation', 'Sydney'),
    (9, 'NextGen Robotics', 'Shanghai'),
    (10, 'Future Tech Enterprises', 'Dubai');
    
insert into Jobs (JobID, CompanyID, JobTitle, JobDescription, JobLocation, Salary, JobType, PostedDate)
values
    (1, 1, 'Software Engineer', 'We are seeking a talented software engineer to join our team and help develop cutting-edge software solutions.', 'New York', 95000.00, 'Full-time', '2024-03-12 09:00:00'),
    (2, 2, 'Data Analyst', 'Tech Innovations Ltd. is looking for a skilled data analyst to analyze large datasets and provide valuable insights.', 'San Francisco', 45000.00, 'Part-time', '2024-03-12 09:15:00'),
    (3, 3, 'Marketing Manager', 'Global Solutions Inc. is hiring a marketing manager to develop and execute marketing strategies.', 'London', 75000.00, 'Full-time', '2024-03-12 09:30:00'),
    (4, 4, 'AI Researcher', 'Join Big Data Analytics Co. as an AI researcher and contribute to cutting-edge research in artificial intelligence.', 'Tokyo', 100000.00, 'Contract', '2024-03-12 09:45:00'),
    (5, 5, 'Graphic Designer', 'Creative Minds Enterprises is seeking a creative and talented graphic designer to work on various design projects.', 'Los Angeles', 35000.00, 'Part-time', '2024-03-12 10:00:00'),
    (6, 6, 'Web Developer', 'Software Wizards LLC is looking for a skilled web developer to build and maintain web applications.', 'Seattle', 90000.00, 'Full-time', '2024-03-12 10:15:00'),
    (7, 7, 'Software Tester', 'Innovative Technologies Group is seeking a software tester to ensure the quality and functionality of our software products.', 'Berlin', 80000.00, 'Full-time', '2024-03-12 10:30:00'),
    (8, 8, 'Database Administrator', 'Data Dynamics Corporation is hiring a database administrator to manage and optimize our databases.', 'Sydney', 95000.00, 'Full-time', '2024-03-12 10:45:00'),
    (9, 9, 'Robotics Engineer', 'NextGen Robotics is seeking a robotics engineer to design and develop robotic systems for various applications.', 'Shanghai', 110000.00, 'Contract', '2024-03-12 11:00:00'),
    (10, 10, 'Network Engineer', 'Future Tech Enterprises is looking for a network engineer to design and implement network infrastructure.', 'Dubai', 100000.00, 'Contract', '2024-03-12 11:15:00');

insert into Jobs values(11, 3, 'Full Stack Developer', 'We are ready to recruit developers skilled on both frontend and backend', 'Canada', 85000, 'Full-Time', '2024-03-12 11:35:00');
INSERT INTO Applicants (ApplicantID, FirstName, LastName, Email, Phone, Resume)
VALUES
    (1, 'John', 'Doe', 'john.doe@example.com', '5486217394', 'https://tinyurl.com/y8e56ckd'),
    (2, 'Jane', 'Smith', 'jane.smith@example.com', '9421763218', 'https://tinyurl.com/y9j6dh9z'),
    (3, 'Michael', 'Johnson', 'michael.johnson@example.com', '8634571683', 'https://tinyurl.com/y7f8j2we'),
    (4, 'Emily', 'Brown', 'emily.brown@example.com', '9213546136', 'https://tinyurl.com/yd9qsj8k'),
    (5, 'David', 'Martinez', 'david.martinez@example.com', '9435786213', 'https://tinyurl.com/yacw4y37'),
    (6, 'Jennifer', 'Garcia', 'jennifer.garcia@example.com', '3146317613', 'https://tinyurl.com/y9lre5wq'),
    (7, 'Christopher', 'Rodriguez', 'christopher.rodriguez@example.com', '9547831264', 'https://tinyurl.com/y8wre2aj'),
    (8, 'Amanda', 'Wilson', 'amanda.wilson@example.com', '9342175364', 'https://tinyurl.com/y9ds58wr'),
    (9, 'Matthew', 'Lopez', 'matthew.lopez@example.com', '3214964731', 'https://tinyurl.com/yax6vele'),
    (10, 'Jessica', 'Hernandez', 'jessica.hernandez@example.com', '6431763214', 'https://tinyurl.com/y9re6bsr');
    
insert into Applications (ApplicationID, JobID, ApplicantID, ApplicationDate, CoverLetter)
values
    (1, 1, 1, '2024-03-12 11:30:00', 'https://tinyurl.com/y8qxfpy3'),
    (2, 2, 2, '2024-03-12 11:45:00', 'https://tinyurl.com/y9k7r89z'),
    (3, 3, 3, '2024-03-12 12:00:00', 'https://tinyurl.com/ybdgt2lc'),
    (4, 1, 4, '2024-03-12 12:15:00', 'https://tinyurl.com/y9xrm4fc'),
    (5, 3, 5, '2024-03-12 12:30:00', 'https://tinyurl.com/ydf9ylcu'),
    (6, 2, 6, '2024-03-12 12:45:00', 'https://tinyurl.com/yd6l5u2h'),
    (7, 4, 7, '2024-03-12 13:00:00', 'https://tinyurl.com/y7cpn9bf'),
    (8, 5, 8, '2024-03-12 13:15:00', 'https://tinyurl.com/y8e5tdne'),
    (9, 6, 9, '2024-03-12 13:30:00', 'https://tinyurl.com/y7y8gfb9'),
    (10, 4, 10, '2024-03-12 13:45:00', 'https://tinyurl.com/ydxl3av6');
  
insert into Applications values (11, 7 , 5 , '2024-03-12 14:00:00', 'https://tinyurl.com/ydvl3aj1'); 
truncate Applications;
    
-- Tasks

-- Task 5:
select j.JobTitle, aps.JobID , COUNT(aps.JobID) as NoOfApplications from Jobs j
join Applications aps on j.JobID = aps.JobID
group by j.JobID
union
select JobTitle , JobID, 0 from Jobs where JobID not in(select Distinct JobID from Applications) ;

-- Task 6:
-- Jobs with salary greater then 80000 and less then 100000
select j.JobTitle , c.CompanyName, c.Location, j.Salary from Jobs j 
join Companies c on j.CompanyID = c.CompanyID where j.Salary between 80000 and 100000;

-- Task 7:
-- Job applications for ApplicantID 5 
select j.JobTitle, c.CompanyName, aps.ApplicationDate from Applications aps
join Jobs j on aps.JobID = j.JobID
join Companies c on j.CompanyID = c.CompanyID where aps.ApplicantID = 5;

-- Task 8:
select c.CompanyName , AVG(j.Salary) from Companies c 
join Jobs j on c.CompanyID = j.CompanyID where j.Salary > 0 group by CompanyName;

-- Task 9:
select c.CompanyName as name, COUNT(j.CompanyID) as noOfJobs from Companies c 
join Jobs j on c.CompanyID = j.CompanyID group by j.CompanyID order by noOfJobs desc , name desc limit 1;

-- Task 10:
Alter table Applicants add column Experience int ;
update Applicants set Experience = floor((rand()*10)+1) ; 

select * from Applicants where ApplicantID in (select aps.ApplicantID from Applications aps 
join Jobs j on aps.JobID = j.JobID 
join Companies c  on c.CompanyID = j.CompanyID where c.Location = 'London') and Experience > 3; 

-- Task 11:
Select distinct JobTitle, Salary from Jobs where Salary between 60000 and 80000;

-- Task 12:
select * from Jobs where JobID not in (select distinct JobID from Applications);

-- Task 13:
select Concat(a.FirstName,' ',a.LastName) as name, c.CompanyName, j.JobTitle from Applications aps
join Applicants a on aps.ApplicantID = a.ApplicantID
join Jobs j on j.JobID = aps.JobID
join Companies c on c.CompanyID = j.CompanyID;

-- Task 14:
select c.CompanyName , Count(j.CompanyID) from Companies c
join Jobs j on c.CompanyID = j.CompanyID group by j.CompanyID;

-- Task 15:
select Concat(a.FirstName,' ',a.LastName) as name, c.CompanyName, j.JobTitle from Applications aps
join Applicants a on aps.ApplicantID = a.ApplicantID
join Jobs j on j.JobID = aps.JobID
join Companies c on c.CompanyID = j.CompanyID;

-- Task 16:
select c.* from Companies c
join Jobs j on c.CompanyID = j.JobID where j.Salary > (Select AVG(Salary) from Jobs); 

-- Task 17:
alter table applicants add column state varchar(255); 
select Concat(a.FirstName,' ',a.LastName) as name, CONCAT( city, state) as address from Applicants a;
-- Task 18:
select * from Jobs where locate('Developer',JobTitle) > 0 or locate('Engineer', JobTitle) > 0;

-- Task 19:
select Applicants.FirstName, Applicants.LastName, Companies.CompanyName, Jobs.JobTitle from Applicants
join Applications on Applicants.ApplicantID = Applications.ApplicantID
join Jobs on Applications.JobID = Jobs.JobID
join Companies on Jobs.CompanyID = Companies.CompanyID
union all
select null as FirstName, null as LastName, Companies.CompanyName, Jobs.JobTitle from Jobs
left join Applications on Jobs.JobID = Applications.JobID
left join Companies on Jobs.CompanyID = Companies.CompanyID
where Applications.ApplicantID is null;

-- Task 20:
select Concat(a.FirstName,' ',a.LastName) as name, c.CompanyName from Applicants a 
cross join Companies c where c.Location='London' and a.Experience>2;
