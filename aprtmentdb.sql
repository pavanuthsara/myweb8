create table seller(
	sellerId int AUTO_INCREMENT PRIMARY KEY,
    sUserName varchar(45) unique,
    sellerName varchar(45),
    password varchar(45),
    email varchar(45)   
);

create table buyer(
	buyerId int AUTO_INCREMENT PRIMARY KEY,
    bUserName varchar(45) unique,
    buyerName varchar(45),
    password varchar(45),
    email varchar(45)   
);


create table staff(
	sid int AUTO_INCREMENT PRIMARY KEY,
    staffUserName varchar(45) unique,
    name varchar(45),
    position varchar(45)   
);

create table apartment(
	aid int AUTO_INCREMENT PRIMARY KEY,
    name varchar(45),
    address varchar(45),
    availableHomes int,
    sellerId int,

    foreign key sellerId REFERENCES seller(sellerId) 
);

create table buyerComplaint(
    cid int AUTO_INCREMENT PRIMARY KEY,
    userId int ,
    complaint varchar(45),

    foreign key userId references buyer(buyerId)

)

create table booking(
    bookingId  int AUTO_INCREMENT primary key,
    userId int,
    aid int,

    foreign key userId references buyer(buyerId)
)


-- Inserting data into seller table
INSERT INTO seller (sUserName, sellerName, password, email) 
VALUES 
('sandun123', 'Sandun Perera', 'password123', 'sandun@gmail.com'),
('chathuri45', 'Chathuri Fernando', 'chathu789', 'chathuri@hotmail.com'),
('nuwan99', 'Nuwan Jayasuriya', 'nuwanpass99', 'nuwan@outlook.com'),
('isuri.lk', 'Isuri Senanayake', 'isuri567', 'isuri@ymail.com'),
('madawa21', 'Madawa Ranatunga', 'madawa123', 'madawa@gmail.com');

-- Inserting data into buyer table
INSERT INTO buyer (bUserName, buyerName, password, email) 
VALUES 
('rashmi88', 'Rashmi Weerasinghe', 'rashmi2021', 'rashmi@gmail.com'),
('tharindu43', 'Tharindu Gamage', 'thari654', 'tharindu@hotmail.com'),
('vimukthi21', 'Vimukthi Silva', 'vimu432', 'vimukthi@yahoo.com'),
('harshaK', 'Harsha Kothalawala', 'harsha999', 'harsha@gmail.com'),
('senuri45', 'Senuri Wickramasinghe', 'senuri@1', 'senuri@hotmail.com');

-- Inserting data into staff table
INSERT INTO staff (staffUserName, name, position) 
VALUES 
('rajitha_stf', 'Rajitha Dissanayake', 'Manager'),
('kavindi98', 'Kavindi Amarasinghe', 'Sales Executive'),
('kasun_lk', 'Kasun Abeysekara', 'Support Staff'),
('amaya123', 'Amaya Kumari', 'HR Assistant'),
('manjula56', 'Manjula Rathnayake', 'Marketing Head');

-- Inserting data into apartment table
INSERT INTO apartment (name, address, availableHomes, sellerId) 
VALUES 
('Skyline Towers', 'Colombo 07', 15, 1),
('Ocean View', 'Mount Lavinia', 8, 2),
('Sunset Apartments', 'Dehiwala', 10, 3),
('Lakeside Residences', 'Battaramulla', 20, 4),
('Hilltop Villas', 'Kandy', 12, 5);

-- Inserting data into buyerComplaint table
INSERT INTO buyerComplaint (userId, complaint) 
VALUES 
(1, 'Slow response from seller.'),
(2, 'Apartment not as advertised.'),
(3, 'Issue with payment portal.'),
(4, 'Poor customer service.'),
(5, 'Delay in booking confirmation.');

-- Inserting data into booking table
INSERT INTO booking (userId, aid) 
VALUES 
(1, 2),
(2, 1),
(3, 4),
(4, 3),
(5, 5);
