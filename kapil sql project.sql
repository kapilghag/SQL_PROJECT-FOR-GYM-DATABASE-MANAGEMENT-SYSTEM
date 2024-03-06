create database gym_management_dbms;
use gym_management_dbms;

create table members(
memberid int primary key,
membername varchar(50),
contact_no bigint,
email varchar(50),
address varchar(50),
membership_type varchar(50),
joining_date date,
expiry_date date);

desc members;

create table staff(
staff_id int primary key,
name varchar(50),
contact bigint,
email_id varchar(50),
post varchar(50),
salary int,
joining_date date);

desc staff;

create table attendance(
attendance_id int primary key,
memberid int,
date_ date,
checkintime time,
checkouttime time);

desc attendance;

create table payments(
paymentid int primary key,
memberid int,
amount int,
payment_type varchar(50),
payment_date date,
package varchar(50));

desc payments;

show tables;

INSERT INTO members VALUES
(1, 'John Doe', 1234567890, 'john@example.com', '123 Main St', 'Premium', '2023-01-15', '2023-07-15'),
(2, 'Jane Smith', 9876543210, 'jane@example.com', '456 Oak Ave', 'Standard', '2023-02-20', '2023-08-20'),
(3, 'Alex Johnson', 5556667777, 'alex@example.com', '789 Elm Blvd', 'Basic', '2023-03-10', '2023-09-10'),
(4, 'Sarah Wilson', 3332221111, 'sarah@example.com', '101 Pine Lane', 'Premium', '2023-04-05', '2023-10-05'),
(5, 'Mike Brown', 9998887777, 'mike@example.com', '210 Cedar Rd', 'Standard', '2023-05-12', '2023-11-12'),
(6, 'Eva Turner', 7771112222, 'eva@example.com', '303 Maple Street', 'Basic', '2023-06-20', '2023-12-20'),
(7, 'Robert White', 9991113333, 'robert@example.com', '15 Oakwood Drive', 'Premium', '2023-07-10', '2024-01-10'),
(8, 'Olivia Lee', 8884445555, 'olivia@example.com', '505 Pine Avenue', 'Standard', '2023-08-05', '2024-02-05'),
(9, 'William Baker', 2223334444, 'william@example.com', '1010 Elm Court', 'Premium', '2023-09-15', '2024-03-15'),
(10, 'Sophie King', 6669998888, 'sophie@example.com', '22 Cedar Lane', 'Basic', '2023-10-18', '2024-04-18'),
(11, 'Isabella Moore', 7772223333, 'isabella@example.com', '909 Park Avenue', 'Premium', '2023-11-05', '2024-05-05'),
(12, 'Ethan Hall', 8883334444, 'ethan@example.com', '707 Elm Street', 'Basic', '2023-12-10', '2024-06-10'),
(13, 'Aria Ward', 9994445555, 'aria@example.com', '606 Cedar Avenue', 'Standard', '2024-01-15', '2024-07-15'),
(14, 'Logan James', 1112223333, 'logan@example.com', '404 Oak Lane', 'Basic', '2024-02-20', '2024-08-20'),
(15, 'Harper Scott', 2223334444, 'harper@example.com', '303 Pine Road', 'Premium', '2024-03-25', '2024-09-25'),
(16, 'Liam Harris', 3334445555, 'liam@example.com', '212 Maple Avenue', 'Standard', '2024-04-10', '2024-10-10'),
(17, 'Amelia Nelson', 4445556666, 'amelia@example.com', '111 Oak Street', 'Basic', '2024-05-15', '2024-11-15'),
(18, 'Elijah Carter', 5556667777, 'elijah@example.com', '909 Elm Lane', 'Premium', '2024-06-20', '2024-12-20'),
(19, 'Avery Rivera', 6667778888, 'avery@example.com', '707 Cedar Road', 'Basic', '2024-07-25', '2025-01-25'),
(20, 'Mia Watson', 7778889999, 'mia@example.com', '505 Pine Lane', 'Premium', '2024-08-30', '2025-02-28'),
(21, 'Evelyn Cooper', 5556667777, 'evelyn@example.com', '303 Oakwood Avenue', 'Premium', '2024-09-05', '2025-03-05'),
(22, 'Henry Morgan', 6667778888, 'henry@example.com', '202 Pine Street', 'Standard', '2024-10-10', '2025-04-10'),
(23, 'Charlotte Bennett', 7778889999, 'charlotte@example.com', '101 Elm Road', 'Basic', '2024-11-15', '2025-05-15'),
(24, 'Gabriel Hayes', 8889990000, 'gabriel@example.com', '505 Cedar Lane', 'Premium', '2024-12-20', '2025-06-20'),
(25, 'Luna Reed', 9990001111, 'luna@example.com', '707 Maple Street', 'Basic', '2025-01-25', '2025-07-25'),
(26, 'Leo Phillips', 1112223333, 'leo@example.com', '909 Oak Avenue', 'Premium', '2025-02-28', '2025-08-28'),
(27, 'Stella Richardson', 2223334444, 'stella@example.com', '111 Pine Drive', 'Standard', '2025-03-05', '2025-09-05'),
(28, 'Jack Murphy', 3334445555, 'jack@example.com', '212 Elm Court', 'Basic', '2025-04-10', '2025-10-10'),
(29, 'Lucy Foster', 4445556666, 'lucy@example.com', '404 Cedar Road', 'Premium', '2025-05-15', '2025-11-15'),
(30, 'Owen Gray', 5556667777, 'owen@example.com', '606 Oak Lane', 'Standard', '2025-06-20', '2025-12-20');

select * from members;

INSERT INTO staff VALUES
(101, 'Emily Davis', 1112223333, 'emily@example.com', 'Trainer', 35000, '2020-07-01'),
(102, 'David Clark', 4445556666, 'david@example.com', 'Manager', 50000, '2019-12-15'),
(103, 'Sophia Garcia', 7778889999, 'sophia@example.com', 'Receptionist', 30000, '2021-02-28'),
(104, 'Michael Martinez', 6667778888, 'michael@example.com', 'Janitor', 25000, '2022-05-10'),
(105, 'Emma Rodriguez', 1231231234, 'emma@example.com', 'Trainer', 38000, '2023-01-20'),
(106, 'Liam Wright', 5556667777, 'liam@example.com', 'Trainer', 38000, '2023-02-10'),
(107, 'Ava Scott', 3334445555, 'ava@example.com', 'Receptionist', 30000, '2023-03-20'),
(108, 'Noah King', 7778889999, 'noah@example.com', 'Trainer', 40000, '2023-04-25'),
(109, 'Mia Turner', 2223334444, 'mia@example.com', 'Manager', 55000, '2023-05-05'),
(110, 'James Adams', 8889990000, 'james@example.com', 'Janitor', 26000, '2023-06-15'),
(111, 'Mason Baker', 4445556666, 'mason@example.com', 'Trainer', 39000, '2023-07-20'),
(112, 'Evelyn Reed', 5556667777, 'evelyn@example.com', 'Receptionist', 31000, '2023-08-25'),
(113, 'Jackson Price', 6667778888, 'jackson@example.com', 'Manager', 56000, '2023-09-30'),
(114, 'Scarlett Cooper', 7778889999, 'scarlett@example.com', 'Janitor', 27000, '2023-10-05'),
(115, 'Aiden Stewart', 8889990000, 'aiden@example.com', 'Trainer', 40000, '2023-11-10'),
(116, 'Sebastian Gray', 9990001111, 'sebastian@example.com', 'Trainer', 42000, '2024-01-15'),
(117, 'Riley Evans', 1112223333, 'riley@example.com', 'Receptionist', 32000, '2024-02-20'),
(118, 'Zoe Perez', 2223334444, 'zoe@example.com', 'Manager', 58000, '2024-03-25'),
(119, 'Nathan Cooper', 3334445555, 'nathan@example.com', 'Janitor', 28000, '2024-04-30'),
(120, 'Sofia Ross', 4445556666, 'sofia@example.com', 'Trainer', 41000, '2024-05-05'),
(121, 'Hannah Cooper', 6667778888, 'hannah@example.com', 'Trainer', 43000, '2024-06-20'),
(122, 'Samuel Coleman', 7778889999, 'samuel@example.com', 'Receptionist', 33000, '2024-07-25'),
(123, 'Grace Jenkins', 8889990000, 'grace@example.com', 'Manager', 59000, '2024-08-30'),
(124, 'Christopher Barnes', 9990001111, 'christopher@example.com', 'Janitor', 29000, '2024-09-05'),
(125, 'Penelope Parker', 1112223333, 'penelope@example.com', 'Trainer', 42000, '2024-10-10'),
(126, 'Mateo Wright', 2223334444, 'mateo@example.com', 'Receptionist', 34000, '2024-11-15'),
(127, 'Aubrey Diaz', 3334445555, 'aubrey@example.com', 'Manager', 60000, '2024-12-20'),
(128, 'Victoria Long', 4445556666, 'victoria@example.com', 'Janitor', 30000, '2025-01-25'),
(129, 'Xavier Howard', 5556667777, 'xavier@example.com', 'Trainer', 44000, '2025-02-28'),
(130, 'Zoe Morris', 6667778888, 'zoe@example.com', 'Receptionist', 35000, '2025-03-05');

select * from staff;

INSERT INTO attendance VALUES
(1, 1, '2023-12-01', '08:00:00', '16:30:00'),
(2, 2, '2023-12-01', '09:15:00', '18:00:00'),
(3, 3, '2023-12-01', '07:45:00', '17:45:00'),
(4, 4, '2023-12-01', '10:00:00', '19:00:00'),
(5, 5, '2023-12-01', '08:30:00', '17:30:00'),
(6, 6, '2023-12-02', '09:00:00', '17:00:00'),
(7, 7, '2023-12-02', '08:30:00', '16:30:00'),
(8, 8, '2023-12-02', '10:15:00', '18:15:00'),
(9, 9, '2023-12-02', '07:45:00', '16:45:00'),
(10, 10, '2023-12-02', '09:30:00', '17:30:00'),
(11, 11, '2023-12-03', '08:15:00', '16:15:00'),
(12, 12, '2023-12-03', '09:30:00', '17:30:00'),
(13, 13, '2023-12-03', '07:45:00', '15:45:00'),
(14, 14, '2023-12-03', '10:00:00', '18:00:00'),
(15, 15, '2023-12-03', '08:45:00', '16:45:00'),
(16, 16, '2024-01-03', '09:00:00', '17:00:00'),
(17, 17, '2024-01-03', '08:30:00', '16:30:00'),
(18, 18, '2024-01-03', '10:15:00', '18:15:00'),
(19, 19, '2024-01-03', '07:45:00', '15:45:00'),
(20, 20, '2024-01-03', '09:30:00', '17:30:00'),
(21, 21, '2025-01-03', '09:00:00', '17:00:00'),
(22, 22, '2025-01-03', '08:30:00', '16:30:00'),
(23, 23, '2025-01-03', '10:15:00', '18:15:00'),
(24, 24, '2025-01-03', '07:45:00', '15:45:00'),
(25, 25, '2025-01-03', '09:30:00', '17:30:00'),
(26, 26, '2025-01-03', '08:00:00', '16:00:00'),
(27, 27, '2025-01-03', '10:30:00', '18:30:00'),
(28, 28, '2025-01-03', '07:30:00', '15:30:00'),
(29, 29, '2025-01-03', '09:15:00', '17:15:00'),
(30, 30, '2025-01-03', '08:45:00', '16:45:00');

select * from attendance;


INSERT INTO payments VALUES
(501, 1, 5000, 'Credit Card', '2023-12-03', '6-month Premium'),
(502, 2, 3000, 'Cash', '2023-12-05', '3-month Standard'),
(503, 3, 2000, 'Debit Card', '2023-12-08', '3-month Basic'),
(504, 4, 5500, 'Credit Card', '2023-12-10', '6-month Premium'),
(505, 5, 4000, 'Cash', '2023-12-12', '3-month Standard'),
(506, 6, 2500, 'Debit Card', '2023-12-15', '6-month Basic'),
(507, 7, 6000, 'Credit Card', '2023-12-18', '6-month Premium'),
(508, 8, 3500, 'Cash', '2023-12-20', '3-month Standard'),
(509, 9, 6200, 'Credit Card', '2023-12-22', '6-month Premium'),
(510, 10, 3000, 'Cash', '2023-12-25', '3-month Basic'),
(511, 11, 6500, 'Credit Card', '2023-12-28', '6-month Premium'),
(512, 12, 2800, 'Cash', '2023-12-30', '3-month Basic'),
(513, 13, 4000, 'Debit Card', '2024-01-02', '3-month Standard'),
(514, 14, 2900, 'Cash', '2024-01-05', '3-month Basic'),
(515, 15, 7000, 'Credit Card', '2024-01-08', '6-month Premium'),
(516, 16, 3500, 'Debit Card', '2024-01-12', '3-month Standard'),
(517, 17, 2700, 'Cash', '2024-01-15', '3-month Basic'),
(518, 18, 6500, 'Credit Card', '2024-01-18', '6-month Premium'),
(519, 19, 2900, 'Cash', '2024-01-21', '3-month Basic'),
(520, 20, 7200, 'Credit Card', '2024-01-24', '6-month Premium'),
(521, 21, 3700, 'Debit Card', '2025-01-12', '3-month Standard'),
(522, 22, 2900, 'Cash', '2025-01-15', '3-month Basic'),
(523, 23, 6700, 'Credit Card', '2025-01-18', '6-month Premium'),
(524, 24, 3100, 'Cash', '2025-01-21', '3-month Basic'),
(525, 25, 7400, 'Credit Card', '2025-01-24', '6-month Premium'),
(526, 26, 3600, 'Debit Card', '2025-01-27', '3-month Standard'),
(527, 27, 2800, 'Cash', '2025-01-30', '3-month Basic'),
(528, 28, 6800, 'Credit Card', '2025-02-02', '6-month Premium'),
(529, 29, 3200, 'Cash', '2025-02-05', '3-month Basic'),
(530, 30, 7500, 'Credit Card', '2025-02-08', '6-month Premium');

select * from payments;

#QUERIES

#Retrieve all members' names and email addresses:
SELECT membername, email FROM members;

#Get the details of staff members who are trainers:
SELECT * FROM staff WHERE post = 'Trainer';

#Find the total count of attendance records:
SELECT COUNT(*) AS total_attendance FROM attendance;

#List the payments made using a credit card:
SELECT * FROM payments WHERE payment_type = 'Credit Card';

#Display member names, joining dates, and membership types for those who joined after '2024-01-01':
SELECT membername, joining_date, membership_type FROM members WHERE joining_date > '2024-01-01';

#Find the highest salary among staff members:
SELECT MAX(salary) AS highest_salary FROM staff;

#Retrieve the latest attendance record date:
SELECT MAX(date_) AS latest_attendance_date FROM attendance;

#Get the details of members with 'Premium' membership type:
SELECT * FROM members WHERE membership_type = 'Premium';

#List the names and email addresses of staff members who joined in 2023:
SELECT name, email_id FROM staff WHERE YEAR(joining_date) = 2023;

#Retrieve member names and expiry dates for those whose membership expires after '2024-12-31':
SELECT membername, expiry_date FROM members WHERE expiry_date > '2024-12-31';


#SUBQUERIES

#Find members who have made payments using a credit card:
SELECT * FROM members WHERE memberid IN (SELECT memberid FROM payments WHERE payment_type = 'Credit Card');

#Retrieve staff members whose salaries are above the average salary:
SELECT * FROM staff WHERE salary > (SELECT AVG(salary) FROM staff);

#List members who have not attended any sessions yet:
SELECT * FROM members WHERE memberid NOT IN (SELECT DISTINCT memberid FROM attendance);

#Get the total count of payments made in the year 2024:
SELECT COUNT(*) AS total_payments_2024 FROM payments WHERE YEAR(payment_date) = 2024;

#Retrieve members who have a higher salary than any staff member:
SELECT * FROM members WHERE contact_no > ANY (SELECT salary FROM staff);

#List staff members who joined after the average joining date of staff:
SELECT * FROM staff WHERE joining_date > (SELECT AVG(joining_date) FROM staff);

#Find members who have the same contact number as any staff member:
SELECT * FROM members WHERE contact_no IN (SELECT contact FROM staff);

#Retrieve the member with the earliest joining date:
SELECT * FROM members WHERE joining_date = (SELECT MIN(joining_date) FROM members);

#Get the payment details for the member with the highest member ID:
SELECT * FROM payments WHERE memberid = (SELECT MAX(memberid) FROM members);

#JOINQUERIES

#Retrieve member details with their corresponding attendance:
SELECT members.memberid, members.membername, attendance.date_, attendance.checkintime, attendance.checkouttime FROM members INNER JOIN attendance ON members.memberid = attendance.memberid;

#Fetch staff details with their respective roles:
SELECT staff.name, staff.post FROM staff;

#Get member names and their payment details:
SELECT members.membername, payments.amount, payments.payment_type, payments.payment_date FROM members INNER JOIN payments ON members.memberid = payments.memberid;

#Retrieve member names, their joining date, and expiry date of memberships:
SELECT members.membername, members.joining_date, members.expiry_date FROM members;

#Fetch staff names and their joining dates:
SELECT staff.name, staff.joining_date FROM staff;

























