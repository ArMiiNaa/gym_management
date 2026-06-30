
create database GymManagement;
use GymManagement;

create table Members(
    MemberID int primary key auto_increment,
    First_Name varchar(80) not null ,
    Last_Name varchar(80) not null ,
    phone varchar(30),
    BirthDate date,
    Gender ENUM('Male','Female') NOT NULL,
    Status ENUM('Active', 'Inactive') DEFAULT 'Active'
);

create table Trainers(
    TrainerID int primary key auto_increment,
    Name varchar(80) not null ,
    Gender enum('Male','Female') not null ,
    speciality varchar(80)
);
create table Classes(
    ClassID int primary key auto_increment,
    ClassName varchar(80) not null ,
    GenderType Enum('Male','Female'),
    TrainerID int ,
    Day ENUM('Saturday','Sunday','Monday','Tuesday','Wednesday','Thursday','Friday'),
    StartTime TIME,
    Duration INT,
    FOREIGN KEY (TrainerID) REFERENCES Trainers(TrainerID)

);
create table Enrollments(
    EnrollmentID int primary key auto_increment,
    MemberID int not null ,
    ClassID int not null ,
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (ClassID) REFERENCES Classes(ClassID),
    UNIQUE (MemberID, ClassID)
);
create table Payments(
    PaymentID int primary key auto_increment,
    MemberID INT NOT NULL,
    Amount DECIMAL(10,2) NOT NULL,
    PaymentDate DATE NOT NULL,
    ClassID INT,
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (ClassID) REFERENCES Classes(ClassID)

);


INSERT INTO Trainers(Name,Gender,speciality) values('Hooman Najafi','Male' ,'Bodybuilding'),
                                                   ('Elham shams','Female','Bodybuilding'),
                                                   ('Alireza Mohamadian','Male', 'TRX'),
                                                   ('Nastaran Abdizadeh','Female', 'TRX'),
                                                   ('Salar Emami','Male', 'Fitness'),
                                                   ('Aylar sharifi','Female', 'Fitness'),
                                                   ('Siamak Sahdgh','Male', 'Yoga'),
                                                   ('Helena Ashrafi','Female', 'Yoga'),
                                                   ('Kiana Darvish','Female', 'Pilates'),
                                                   ('Zahra Farajolahi','Female', 'Aerial');
INSERT INTO Members
(First_Name, Last_Name, Phone, BirthDate, Gender, Status) VALUES('Helia','Azizi','09321454748','2001-05-12',
                                                                          'Female','Active'),
('Helia','Azizi','09359644147','1998-04-14','Female','Inactive'),
('Mohana','Kadoosi','09322454948','1999-11-16','Female','Active'),
('Neda','Mohamadzadeh','09324569897','2002-8-12','Female','Active'),
('Aram','Akbari','09114785652','1995-05-24','Female','Inactive'),
('Maral','Malihi','09112035412','1997-04-22','Female','Active'),
('Kimia','Faraji','09148965457','2000-03-24','Female','Active'),
('Atena','Ezati','09116593231','2004-09-25','Female','Active'),

('Mina','karami','09321544748','1998-05-04','Female','Active'),
('Sara','Vahidi','09398454948','1999-07-02','Female','Active'),
('Fatameh','Ghorbani','09310587463','2002-06-06','Female','Active'),
('Aysan','Fakoori','09359478182','2005-04-30','Female','Inactive'),
('Matina','Heydari','09119876541','2004-04-28','Female','Active'),
('Elika','Sadeghi','09321458741','2005-05-17','Female','Active'),
('Reihaneh','Afshar','09362145658','2004-10-19','Female','Inactive'),

('Noora','Moradi','09351234561','1999-04-12','Female','Active'),
('Sara','Ahmadi','09361234562','2000-06-21','Female','Active'),
('Elham','Karimi','09371234563','1998-01-09','Female','Inactive'),
('Roya','Ebrahimi','09381234564','2001-11-30','Female','Active'),
('Maryam','Hosseini','09391234565','1997-08-17','Female','Active'),
('Yasmin','Ghasemi','09311234566','2002-03-05','Female','Active'),
('Tina','Jalali','09321234567','1999-12-25','Female','Active'),

('Nahid','Babapour','09331234601','1998-05-14','Female','Active'),
('Masoumeh','Kazemi','09341234602','2000-02-18','Female','Active'),
('Parisa','Fallahi','09351234603','1999-09-09','Female','Active'),
('Hanieh','Ranjbar','09361234604','2001-07-22','Female','Active'),
('Shirin','Maleki','09371234605','1997-01-30','Female','Active'),
('Yeganeh','Rostami','09381234606','2002-10-11','Female','Active'),
('Samira','Noori','09391234607','1998-04-03','Female','Active'),

('Mina','Khodaei','09311234701','1999-06-06','Female','Inactive'),
('Nazanin','Tavakoli','09321234702','2000-08-15','Female','Active'),
('Leila','Sadeghzadeh','09331234703','1998-12-01','Female','Active'),
('Sahar','Rahmani','09341234704','2001-03-27','Female','Inactive'),
('Anita','Zand','09351234705','1997-09-19','Female','Active'),
('Pegah','Ansari','09361234706','2002-01-10','Female','Inactive'),
('Hoda','Abbasi','09371234707','1999-05-23','Female','Active'),

('Zahra','Jafari','09381234801','1998-02-04','Female','Active'),
('Sadaf','Mehrabi','09391234802','2000-07-18','Female','Active'),
('Negar','Hashemi','09311234803','1999-11-09','Female','Active'),
('Yalda','Akbari','09321234804','2001-04-26','Female','Active'),
('Shilla','Fathi','09331234805','1997-08-13','Female','Active'),
('Arezoo','Bagheri','09341234806','2002-12-02','Female','Active'),
('Tina','Ghorbani','09351234807','1998-06-30','Female','Active'),

('Ali','Moradi','09121234561','1996-03-14','Male','Active'),
('Reza','Karimi','09131234562','1995-07-22','Male','Active'),
('Hossein','Ahmadi','09141234563','1994-01-09','Male','Active'),
('Mehdi','Rahimi','09151234564','1997-10-30','Male','Active'),
('Amir','Jalali','09161234565','1998-05-17','Male','Inactive'),
('Pouya','Ghasemi','09171234566','1996-12-25','Male','Active'),
('Arman','Kazemi','09181234567','1999-08-03','Male','Active'),

('Salar','Emami','09191234601','1995-02-11','Male','Active'),
('Sina','Yousefi','09111234602','1997-06-19','Male','Active'),
('Navid','Rostami','09121234603','1996-09-01','Male','Inactive'),
('Kian','Noorzadeh','09131234604','1998-11-14','Male','Active'),
('Behnam','Malekian','09141234605','1994-04-27','Male','Active'),
('Parsa','Sharifnia','09151234606','1999-01-08','Male','Active'),
('Ramin','Zarei','09161234607','1995-07-20','Male','Active'),

('Siavash','Mohammadpoor','09171234701','1996-06-06','Male','Active'),
('Behzad','Kazemzadeh','09181234702','1995-10-15','Male','Active'),
('Shayan','Moradian','09191234703','1998-04-24','Male','Active'),
('Peyman','Rastegar','09111234704','1994-08-19','Male','Active'),
('Mani','Rezaei','09121234705','1997-01-03','Male','Inactive'),
('Kiavash','Sadeghian','09131234706','1999-12-27','Male','Active'),
('Hamid','Akbarian','09141234707','1995-03-14','Male','Inactive'),

('Alireza','Khodadad','09151234801','1996-03-18','Male','Active'),
('Artin','Nasiri','09161234802','1998-06-01','Male','Active'),
('Saman','Rahimpoor','09171234803','1995-09-23','Male','Active'),
('Yaser','Heydarian','09181234804','1994-12-10','Male','Active'),
('Erfan','Koohestani','09191234805','1999-05-06','Male','Active'),
('Pezhman','Abdi','09111234806','1997-11-29','Male','Active'),
('Mahan','Zarei','09121234807','1996-02-17','Male','Active');

UPDATE Members
SET Members.First_Name= 'Soodeh',
    Members.Last_Name = 'Azarpanah'
WHERE MemberID = 2;



##Female
##Sunday morning
INSERT INTO Classes(ClassName, TrainerID, Day, StartTime, Duration, GenderType) VALUES
('Bodybuilding', 2, 'Sunday', '08:00:00', 60, 'Female'),
('Yoga', 8, 'Sunday', '09:00:00', 60, 'Female'),
('Fitness', 6, 'Sunday', '10:00:00', 60, 'Female'),
('TRX', 4, 'Sunday', '11:00:00', 60, 'Female'),
('Pilates', 9, 'Sunday', '12:00:00', 60, 'Female'),
('Aerial', 10, 'Sunday', '13:00:00', 60, 'Female');

##Sunday evening
INSERT INTO Classes(ClassName, TrainerID, Day, StartTime, Duration, GenderType) VALUES
('Bodybuilding', 2, 'Sunday', '16:00:00', 60, 'Female'),
('Yoga', 8, 'Sunday', '17:00:00', 60, 'Female'),
('Fitness', 6, 'Sunday', '18:00:00', 60, 'Female'),
('TRX', 4, 'Sunday', '19:00:00', 60, 'Female'),
('Pilates', 9, 'Sunday', '20:00:00', 60, 'Female'),
('Aerial', 10, 'Sunday', '21:00:00', 60, 'Female');

##Tuesday morning
INSERT INTO Classes(ClassName, TrainerID, Day, StartTime, Duration, GenderType) VALUES
('Bodybuilding', 2, 'Tuesday', '08:00:00', 60, 'Female'),
('Yoga', 8, 'Tuesday', '09:00:00', 60, 'Female'),
('Fitness', 6, 'Tuesday', '10:00:00', 60, 'Female'),
('TRX', 4, 'Tuesday', '11:00:00', 60, 'Female'),
('Pilates', 9, 'Tuesday', '12:00:00', 60, 'Female'),
('Aerial', 10, 'Tuesday', '13:00:00', 60, 'Female');

##Tuesday evening
INSERT INTO Classes(ClassName, TrainerID, Day, StartTime, Duration, GenderType) VALUES
('Bodybuilding', 2, 'Tuesday', '16:00:00', 60, 'Female'),
('Yoga', 8, 'Tuesday', '17:00:00', 60, 'Female'),
('Fitness', 6, 'Tuesday', '18:00:00', 60, 'Female'),
('TRX', 4, 'Tuesday', '19:00:00', 60, 'Female'),
('Pilates', 9, 'Tuesday', '20:00:00', 60, 'Female'),
('Aerial', 10, 'Tuesday', '21:00:00', 60, 'Female');

##Thuersday morning
INSERT INTO Classes(ClassName, TrainerID, Day, StartTime, Duration, GenderType) VALUES
('Bodybuilding', 2, 'Thursday', '08:00:00', 60, 'Female'),
('Yoga', 8, 'Thursday', '09:00:00', 60, 'Female'),
('Fitness', 6, 'Thursday', '10:00:00', 60, 'Female'),
('TRX', 4, 'Thursday', '11:00:00', 60, 'Female'),
('Pilates', 9, 'Thursday', '12:00:00', 60, 'Female'),
('Aerial', 10, 'Thursday', '13:00:00', 60, 'Female');

##Thuersday evening
INSERT INTO Classes(ClassName, TrainerID, Day, StartTime, Duration, GenderType) VALUES
('Bodybuilding', 2, 'Thursday', '16:00:00', 60, 'Female'),
('Yoga', 8, 'Thursday', '17:00:00', 60, 'Female'),
('Fitness', 6, 'Thursday', '18:00:00', 60, 'Female'),
('TRX', 4, 'Thursday', '19:00:00', 60, 'Female'),
('Pilates', 9, 'Thursday', '20:00:00', 60, 'Female'),
('Aerial', 10, 'Thursday', '21:00:00', 60, 'Female');

##Male
##Saturday morning
INSERT INTO Classes(ClassName, TrainerID, Day, StartTime, Duration, GenderType) VALUES
('Bodybuilding', 1, 'Saturday', '10:00:00', 60, 'Male'),
('Yoga', 7, 'Saturday', '11:00:00', 60, 'Male'),
('Fitness', 5, 'Saturday', '12:00:00', 60, 'Male'),
('TRX', 3, 'Saturday', '13:00:00', 60, 'Male');

##Saturday evening
INSERT INTO Classes(ClassName, TrainerID, Day, StartTime, Duration, GenderType) VALUES
('Bodybuilding', 1, 'Saturday', '18:00:00', 60, 'Male'),
('Yoga', 7, 'Saturday', '19:00:00', 60, 'Male'),
('Fitness', 5, 'Saturday', '20:00:00', 60, 'Male'),
('TRX', 3, 'Saturday', '21:00:00', 60, 'Male');

##monday morning
INSERT INTO Classes(ClassName, TrainerID, Day, StartTime, Duration, GenderType) VALUES
('Bodybuilding', 1, 'Monday', '10:00:00', 60, 'Male'),
('Yoga', 7, 'Monday', '11:00:00', 60, 'Male'),
('Fitness', 5, 'Monday', '12:00:00', 60, 'Male'),
('TRX', 3, 'Monday', '13:00:00', 60, 'Male');

##monday evening
INSERT INTO Classes(ClassName, TrainerID, Day, StartTime, Duration, GenderType) VALUES
('Bodybuilding', 1, 'Monday', '18:00:00', 60, 'Male'),
('Yoga', 7, 'Monday', '19:00:00', 60, 'Male'),
('Fitness', 5, 'Monday', '20:00:00', 60, 'Male'),
('TRX', 3, 'Monday', '21:00:00', 60, 'Male');

##Wdenesday morning
INSERT INTO Classes(ClassName, TrainerID, Day, StartTime, Duration, GenderType) VALUES
('Bodybuilding', 1, 'Wednesday', '10:00:00', 60, 'Male'),
('Yoga', 7, 'Wednesday', '11:00:00', 60, 'Male'),
('Fitness', 5, 'Wednesday', '12:00:00', 60, 'Male'),
('TRX', 3, 'Wednesday', '13:00:00', 60, 'Male');

##Wdenesday evening
INSERT INTO Classes(ClassName, TrainerID, Day, StartTime, Duration, GenderType) VALUES
('Bodybuilding', 1, 'Wednesday', '18:00:00', 60, 'Male'),
('Yoga', 7, 'Wednesday', '19:00:00', 60, 'Male'),
('Fitness', 5, 'Wednesday', '20:00:00', 60, 'Male'),
('TRX', 3, 'Wednesday', '21:00:00', 60, 'Male');


INSERT INTO Enrollments(MemberID, ClassID) VALUES
##Female Bodybuilding
(1, 9),
(2, 9),
(3, 9),
(4, 9),
(5, 9),
(6, 9),
(7, 9),

## Female Yoga
(8, 11),
(9, 11),
(10, 11),
(11, 11),
(12, 11),
(13, 11),
(14, 11),

## Female Fitness
(15, 10),
(16, 10),
(17, 10),
(18, 10),
(19, 10),
(20, 10),
(21, 10),

## Female Trx
(22, 12),
(23, 12),
(24, 12),
(25, 12),
(26, 12),
(27, 12),
(28, 12),

##Female Pilates
(29, 13),
(30, 13),
(31, 13),
(32, 13),
(33, 13),
(34, 13),
(35, 13),

##Female Aerial
(36, 14),
(37, 14),
(38, 14),
(39, 14),
(40, 14),
(41, 14),
(42, 14),

##Male Bodybuilding
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),

## Male Fitness
(50, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(56, 2),

## Male Yoga
(57, 3),
(58, 3),
(59, 3),
(60, 3),
(61, 3),
(62, 3),
(63, 3),

##Male TRX
(64, 4),
(65, 4),
(66, 4),
(67, 4),
(68, 4),
(69, 4),
(70, 4);


INSERT INTO Payments (MemberID, Amount, PaymentDate, ClassID) VALUES

## Female Bodybuilding
(1, 400000, '2025-12-01', 9),
(2, 400000, '2025-12-02', 9),
(3, 400000, '2025-12-03', 9),
(4, 400000, '2025-12-04', 9),
(5, 400000, '2025-12-05', 9),
(6, 400000, '2025-12-06', 9),
(7, 400000, '2025-12-07', 9),

## Female Yoga
(8, 600000, '2025-12-01', 11),
(9, 600000, '2025-12-02', 11),
(10, 600000, '2025-12-03', 11),
(11, 600000, '2025-12-04', 11),
(12, 600000, '2025-12-05', 11),
(13, 600000, '2025-12-06', 11),
(14, 600000, '2025-12-07', 11),

## Female Fitness
(15, 500000, '2025-12-01', 10),
(16, 500000, '2025-12-02', 10),
(17, 500000, '2025-12-03', 10),
(18, 500000, '2025-12-04', 10),
(19, 500000, '2025-12-05', 10),
(20, 500000, '2025-12-06', 10),
(21, 500000, '2025-12-07', 10),

## Female TRx
(22, 700000, '2025-12-01', 12),
(23, 700000, '2025-12-02', 12),
(24, 700000, '2025-12-03', 12),
(25, 700000, '2025-12-04', 12),
(26, 700000, '2025-12-05', 12),
(27, 700000, '2025-12-06', 12),
(28, 700000, '2025-12-07', 12),

## Female Pilates
(29, 800000, '2025-12-01', 13),
(30, 800000, '2025-12-02', 13),
(31, 800000, '2025-12-03', 13),
(32, 800000, '2025-12-04', 13),
(33, 800000, '2025-12-05', 13),
(34, 800000, '2025-12-06', 13),
(35, 800000, '2025-12-07', 13),

## Female Aerial
(36, 900000, '2025-12-01', 14),
(37, 900000, '2025-12-02', 14),
(38, 900000, '2025-12-03', 14),
(39, 900000, '2025-12-04', 14),
(40, 900000, '2025-12-05', 14),
(41, 900000, '2025-12-06', 14),
(42, 900000, '2025-12-07', 14),

## Male Bodybuilding
(43, 400000, '2025-12-01', 1),
(44, 400000, '2025-12-02', 1),
(45, 400000, '2025-12-03', 1),
(46, 400000, '2025-12-04', 1),
(47, 400000, '2025-12-05', 1),
(48, 400000, '2025-12-06', 1),
(49, 400000, '2025-12-07', 1),

## Male Fitness
(50, 500000, '2025-12-01', 2),
(51, 500000, '2025-12-02', 2),
(52, 500000, '2025-12-03', 2),
(53, 500000, '2025-12-04', 2),
(54, 500000, '2025-12-05', 2),
(55, 500000, '2025-12-06', 2),
(56, 500000, '2025-12-07', 2),

## Male Yoga
(57, 600000, '2025-12-01', 3),
(58, 600000, '2025-12-02', 3),
(59, 600000, '2025-12-03', 3),
(60, 600000, '2025-12-04', 3),
(61, 600000, '2025-12-05', 3),
(62, 600000, '2025-12-06', 3),
(63, 600000, '2025-12-07', 3),

## Male TRx
(64, 700000, '2025-12-01', 4),
(65, 700000, '2025-12-02', 4),
(66, 700000, '2025-12-03', 4),
(67, 700000, '2025-12-04', 4),
(68, 700000, '2025-12-05', 4),
(69, 700000, '2025-12-06', 4),
(70, 700000, '2025-12-07', 4);


