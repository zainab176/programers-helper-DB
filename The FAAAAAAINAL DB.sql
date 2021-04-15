create database finals;
use finals;

 create table Developers (
ID int(11) NOT NULL AUTO_INCREMENT,
User_ID varchar(100)  NOT NULL,
First_Name varchar(100)  NOT NULL,
Last_Name varchar(100)  NOT NULL,
PRIMARY KEY (ID)
);
INSERT INTO Developers (ID, User_ID ,First_Name, Last_Name)
VALUES (NULL, 1231 , 'MS.reem','alshammari' ),
(NULL, 1232 , 'MS.maha','alghamdi' ),
(NULL, 1233 , 'MS.fatimah','almohammedsaleh' ),
(NULL, 1234 , 'Dr.thowiba','ahmed' );

CREATE TABLE Usersss (
ID int(11) NOT NULL AUTO_INCREMENT,
First_Name varchar(100)  NOT NULL,
Last_Name varchar(100)  NOT NULL,
Gender varchar(1) NOT NULL,
Email varchar(100)  NOT NULL,
Address varchar(30) NOT NULL,
Password varchar(20)  NOT NULL,
PRIMARY KEY (ID),
UNIQUE KEY Email (Email)
);

INSERT INTO Usersss (ID ,First_Name, Last_Name, Gender, Email, Password)
VALUES (NULL, 'Zainab', 'Alhigary', 'F', '2190001@iau.edu.sa', 'UTdErqWN'),
(NULL, 'Zainab', 'Almohsin', 'F', '2190002@iau.edu.sa', '5dEu28Zs'),
 (NULL,'Wala', 'Alsinan', 'F', '2190003@iau.edu.sa', 'HScRfmDu'),
 (NULL,  'Sara', 'Abdulaziz', 'F', '2190004@iau.edu.sa', 'xgJMvzzb'),
 (NULL, 'Ahmed', 'Alsalem', 'M', '2290005@iau.edu.sa', 'ckKHfUxs'),
 (NULL, 'Ali', 'Alahmed', 'M', '2190006@iau.edu.sa', 'PZnm7566'),
 (NULL,  'Tala', 'Samer', 'F', '2190007@iau.edu.sa', 'DjzAyA7B'),
 (NULL,  'Amnah', 'Alali', 'F', '2190008@iau.edu.sa', 'hRYrggnN'),
(NULL,  'Jody', 'Abdullah', 'F', '2190009@iau.edu.sa', 'HkYrtg5P'),
 (NULL,  'Salem', 'Alali', 'M', '2190010@iau.edu.sa', 'SSzWG9VD'),
(NULL, 'Reem', 'Alshammari', 'F', '3256@iau.edu.sa', '336UUMSW'),
(NULL, 'Maha', 'Alghamdi', 'F', '5412@iau.edu.sa', 'CJA5kR8R'),
 (NULL, 'Fatimah', 'Almohammedsaleh', 'F', '1432@iau.edu.sa', '8xWLp8TQ'),
(NULL,  'Thowiba', 'Ahmed', 'F', '2835@iau.edu.sa', 'ktnDfc58');
insert into Usersss values (NULL, 'Jasem', 'hii', 'M', '2190011@iau.edu.sa', 'CCaDk9R');

CREATE TABLE User_Level (
ID int(11) NOT NULL AUTO_INCREMENT,
User_ID int(11) NOT NULL,
Level int(11) NOT NULL,
PRIMARY KEY (ID),
UNIQUE KEY User_ID_2(User_ID),
 KEY User_ID (User_ID)
);
alter table User_Level add  CONSTRAINT abb FOREIGN KEY (User_ID) REFERENCES Usersss (ID);

INSERT INTO User_Level (ID, User_ID, Level) VALUES
 (NULL, '1', '6'), (NULL, '2', '6'), 
 (NULL, '3', '6'), (NULL, '4', '6'),
 (NULL, '5', '4'), (NULL, '6', '6'), 
 (NULL, '7', '7'), (NULL, '8', '6'), 
 (NULL, '9', '7'), (NULL, '10', '8');
 
 
CREATE TABLE Lessonn (
ID int (11) NOT NULL AUTO_INCREMENT ,
Title varchar(100) NOT NULL,
PRIMARY KEY (ID)
);

INSERT INTO Lessonn (ID, Title) VALUES
(NULL, 'Methods and Loops'),
(NULL, 'Arrays And Enumerations'),
(NULL, 'Objects & Class and UML'),
(NULL, 'Arrays of Objects'),
(NULL, 'Object Oriented Thinking'),
(NULL, 'Inheritance'),
(NULL, 'Polymorphism'),
(NULL, 'GUI'),
(NULL, 'Exceptions'),
(NULL, 'More Resources');


CREATE TABLE Lesson_Section (
ID int(11) NOT NULL AUTO_INCREMENT,
Type varchar(50) NOT NULL,
PRIMARY KEY (ID)
);

INSERT INTO Lesson_Section (ID, Type) VALUES
(NULL, 'Example'),
(NULL, 'Exercise'),
(NULL, 'Explanation'),
(NULL, 'Videos');



CREATE TABLE Lesson_Info (
ID int(11) NOT NULL AUTO_INCREMENT,
Lesson_ID int(11) NOT NULL,
Lesson_Section_ID int(11) NOT NULL,
Details varchar (40) NOT NULL,
PRIMARY KEY (ID),
KEY Lesson_ID (Lesson_ID,Lesson_Section_ID),
KEY Lesson_Section_ID (Lesson_Section_ID)
);

alter table Lesson_Info add  CONSTRAINT a FOREIGN KEY (Lesson_ID) REFERENCES Lessonn (ID);
alter table Lesson_Info add  CONSTRAINT b FOREIGN KEY (Lesson_Section_ID) REFERENCES Lesson_Section (ID);

INSERT INTO Lesson_Info (ID, Lesson_ID, Lesson_Section_ID, Details)  VALUES
(NULL, '1', '1', 'Methods and Loops Example'),
 (NULL, '1', '2', 'Methods and Loops Exercise'),
(NULL, '1', '3', 'Methods and Loops Explanation'),
 (NULL, '1', '4', 'Methods and Loops Videos'),
 (NULL, '2', '1', 'Arrays And Enumeration Example'),
 (NULL, '2', '2', 'Arrays And Enumeration Exercise'),
 (NULL, '2', '3', 'Arrays And Enumeration Explanation'),
 (NULL, '2', '4', 'Arrays And Enumeration Videos'),
(NULL, '3', '1', 'Objects & Class and UML Example'),
(NULL, '3', '2', 'Objects & Class and UML Exercise'),
(NULL, '3', '3', 'Objects & Class and UML Explanation'),
(NULL, '3', '4', 'Objects & Class and UML Videos'),
(NULL, '4', '1', 'Arrays of Objects Example'),
(NULL, '4', '2', 'Arrays of Objects Exercise'),
(NULL, '4', '3', 'Arrays of Objects Explanation'),
(NULL, '4', '4', 'Arrays of Objects Videos'),
(NULL, '5', '1', 'Object Oriented Thinking Example'),
(NULL, '5', '2', 'Object Oriented Thinking Exercise'),
(NULL, '5', '3', 'Object Oriented Thinking Explanation'),
(NULL, '5', '4', 'Object Oriented Thinking Videos'),
(NULL, '6', '1', 'Inheritance Example'),
(NULL, '6', '2', 'Inheritance Exercise'),
(NULL, '6', '3', 'Inheritance Explanation'),
(NULL, '6', '4', 'Inheritance Videos'),
(NULL, '7', '1', 'Polymorphism Example'),
(NULL, '7', '2', 'Polymorphism Exercise'),
(NULL, '7', '3', 'Polymorphism Explanation'),
(NULL, '7', '4', 'Polymorphism Videos'),
(NULL, '8', '1', 'GUI Example'),
(NULL, '8', '2', 'GUI Exercise'),
(NULL, '8', '3', 'GUI Explanation'),
(NULL, '8', '4', 'GUI Videos'),
 (NULL, '9', '1', 'Exceptions Example'),
(NULL, '9', '2', 'Exceptions Exercise'),
(NULL, '9', '3', 'Exceptions Explanation'),
(NULL, '9', '4', 'Exceptions Videos');



CREATE TABLE Support_Type (
ID int(11) NOT NULL AUTO_INCREMENT,
Type varchar(50) NOT NULL,
PRIMARY KEY (ID)
) ;

 


INSERT INTO Support_Type (ID, Type) VALUES 
(NULL, 'Feedback'),
 (NULL, 'Problem');
 
CREATE TABLE Support (
ID int(11) NOT NULL AUTO_INCREMENT,
Support_Type_ID int(11) NOT NULL,
User_ID int(11) NOT NULL,
Lesson_ID int(11) NOT NULL,
Comment varchar(500)  NOT NULL,
PRIMARY KEY (ID),
KEY Support_Type_ID (Support_Type_ID),
KEY Lesson_ID (Lesson_ID)
);

alter table Support add CONSTRAINT f FOREIGN KEY (Support_Type_ID) REFERENCES Support_Type (ID);
alter table Support add  CONSTRAINT g FOREIGN KEY (User_ID) REFERENCES Usersss (ID);
alter table Support add CONSTRAINT h FOREIGN KEY (Lesson_ID) REFERENCES Lessonn (ID);

INSERT INTO Support (ID, Support_Type_ID, User_ID, Lesson_ID, Comment) VALUES
(NULL, '1', '1', '3', 'i have problem'),
(NULL, '2', '1', '4', 'can not open lesson'),
(NULL, '1', '2', '5', 'perfect'),
 (NULL, '2', '3', '6', 'want to see more videos'),
 (NULL, '1', '4', '3', 'i like it'),
 (NULL, '2', '6', '2', 'no problem until now');
 
CREATE TABLE Tutorr (
ID int(11) NOT NULL AUTO_INCREMENT,
User_ID int(11) NOT NULL,
First_Name varchar(20),
Last_Name varchar(20),
Lesson_ID int(11) NOT NULL,
PRIMARY KEY (ID),
KEY User_ID (User_ID),
KEY Lesson_ID (Lesson_ID)
) ;

alter table Tutorr add CONSTRAINT i FOREIGN KEY (User_ID) REFERENCES Usersss (ID);

alter table Tutorr add CONSTRAINT j FOREIGN KEY (Lesson_ID) REFERENCES Lessonn (ID);

INSERT INTO Tutorr (ID, User_ID, First_Name, Last_Name, Lesson_ID)
 VALUES (NULL, '2', 'Zainab', 'Almohsin', '1'), 
(NULL, '1', 'MS.fatimah','almohammedsaleh', '2'),
(NULL, '2', 'Zainab', 'Almohsin', '3'), 
(NULL, '1', 'MS.fatimah','almohammedsaleh', '4'),
(NULL, '2', 'Zainab', 'Almohsin', '5'), 
(NULL, '1', 'MS.fatimah','almohammedsaleh', '6'),
  (NULL, '2', 'Zainab', 'Almohsin', '7'), 
 (NULL, '1', 'MS.fatimah','almohammedsaleh', '8');
 #	QUERYS 
#Delete tuple
DELETE FROM Lessonn WHERE ID=10;

#Dpdate tuple
UPDATE Usersss
SET Last_Name = 'Sal', Password= 'DaTaBbAssE'
WHERE Usersss.ID = 7;

#1 DROP
ALTER TABLE Usersss
DROP COLUMN Address;

#2 UPDATE
Update Usersss
SET First_Name = 'melissa'
WHERE Email = '2190009@iau.edu.sa';
 
#3 VIEW +LIKE
create view v2
as SELECT First_Name
FROM Usersss
WHERE First_Name like '__l%';
select * from v2;

#4 LIKE + ORDER BY
SELECT   First_Name,
         Email
FROM     Usersss
WHERE    First_Name LIKE '__a%'
  OR     First_Name LIKE 's%'
  OR     First_Name LIKE 'W%'
ORDER BY First_Name;

#5 like
SELECT First_Name,
Email
FROM Usersss
WHERE Gender like 'M%';

#6 ORDER BY
SELECT First_Name
FROM Usersss
order by First_Name Asc;

#7 COMPLEX IN
SELECT Details
FROM Lesson_Info 
WHERE Lesson_ID IN(SELECT Lesson_ID
FROM  Support where Lesson_ID = 3);

#8 NOT EXIST 
SELECT First_Name
FROM Developers 
WHERE Not exists ( SELECT *
 FROM Usersss 
 WHERE  Developers.First_Name = Usersss.First_Name);

  #9 OUT PROCEDURE
Delimiter $$
CREATE PROCEDURE numUSe( OUT studentMaleNumber int)
BEGIN
SELECT COUNT(First_Name) INTO studentMaleNumber
FROM Usersss
WHERE Gender ='M';
END;$$
Delimiter ;
CALL numUSe(@studentnum); 
SELECT @studentnum As sNumber;

#10 UNION ALL 
SELECT  ID ,Title FROM Lessonn
UNION ALL
SELECT  ID, Type FROM Lesson_Section;

#11 INTERSECT
SELECT User_ID FROM  Support
INTERSECT;
SELECT User_ID FROM User_Level;

#12 MINUS
SELECT * FROM Usersss
MINUS;
SELECT * FROM Developers;

#13 IS NOT NULL
SELECT User_ID ,First_Name
FROM Developers
WHERE User_ID IS NOT NULL; 
  
#14 IS NULL
SELECT Lesson_ID
FROM Tutorr
WHERE ID IS NULL; 

#15 BETWEEN + AND
SELECT First_Name,Email
FROM Usersss 
WHERE Email BETWEEN '2190004@iau.edu.sa' AND '2190008@iau.edu.sa';

#16 BETWEEN + AND
SELECT First_Name, Email FROM Usersss
WHERE email BETWEEN '1432@iau.edu.sa' AND '5000@iau.edu.sa';

#17 DISTINCT
SELECT DISTINCT Gender
FROM Usersss;

#18 ANY
SELECT First_Name
FROM Usersss
WHERE First_Name = ANY(SELECT First_Name
  FROM  Developers
  WHERE User_ID = '1233');

#19 ALL
SELECT ALL comment
FROM Support
WHERE Lesson_ID= 3;

#20 JOIN
SELECT *
FROM Lesson_Section
JOIN Support;  

#21 PROCEDURE IN
DELIMITER $$
CREATE PROCEDURE STUname(
        IN STUFname VARCHAR(20)
)
BEGIN
        SELECT First_Name
        FROM Usersss
        WHERE First_Name = STUFname;
END $$
DELIMITER ;
CALL STUname('Zainab');

#22 AND + GROUP BY + ORDER BY 
    SELECT 
	First_Name, 
    Email,
    Lesson_ID,
    Details
FROM 
	Usersss, Lesson_Info
    WHERE Lesson_ID = 2
GROUP BY 
	Lesson_ID, Details
ORDER BY
	Lesson_ID, Details;
    
#23 OR + IN
SELECT *
FROM Usersss
WHERE First_Name or Email 
IN ('Ali', 'Ahmed','2835@iau.edu.sa');

#24 Exists == no out put
SELECT First_Name,Last_Name
FROM Developers 
WHERE  exists ( select *
 FROM Usersss 
 WHERE  Developers.First_Name = Usersss.First_Name );
 
#25 INDEX
CREATE INDEX Support
ON Support (Support_Type_ID, Lesson_ID);

#25 INDEX
CREATE INDEX Support_Type
ON Support_Type (Type);
 
#26 Trigger
create trigger devN 
before INSERT 
on 
Developers 
for each row 
SET NEW.Last_Name = TRIM(NEW.Last_Name);
show triggers;

#27 count
SELECT 
    COUNT(*)  Gender
FROM
   Usersss
WHERE
Gender ='f';

#28 NOT EXISTS
 SELECT First_Name
FROM Usersss
WHERE NOT EXISTS ( SELECT ID
  FROM Support WHERE  ID = Usersss.ID );

select * from Usersss;
select * from Developers;
select * from User_Level;
select * from Lessonn;
select * from Lesson_Section;
select * from Lesson_Info;
select * from Support_Type;
select * from Support;
select * from Tutorr;
Desc Usersss;
Desc Developers;
Desc User_Level;
Desc Lessonn;
Desc Lesson_Section;
Desc Support_Type;
Desc Support;
Desc Tutorr;
# THANK YOU (:
