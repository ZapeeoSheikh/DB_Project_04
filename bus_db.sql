
CREATE TABLE Bus_Depot
(
  id NUMBER(10) NOT NULL,
  no_of_busses NUMBER(10) NOT NULL,
  out_of_service NUMBER(10) NOT NULL,
  PRIMARY KEY (id)
);

ALTER TABLE bus_depot
ADD Name varchar(255);


create table Role   -----------------
( 
 RoleId number(10) not null,
 Title varchar(20) not null,
 Card_Limit number(4) not null
)



insert into role(roleid,title, card_limit) values (1,'Bus Attendent', 5000);
insert into role(roleid,title, card_limit) values (2,'Driver', 9000);
insert into role(roleid,title, card_limit) values (3,'Passenger', 1000);







CREATE TABLE Bus_Depot ----------------
(
  id NUMBER(10) NOT NULL,
  no_of_busses NUMBER(10) NOT NULL,
  bus_check_in Varchar2(20),
  bus_check_out Varchar2(20),
  out_of_service NUMBER(10) NOT NULL,
  PRIMARY KEY (id)
);

desc bus_depot;

insert into bus_depot(id, no_of_busses, bus_check_in, bus_check_out, out_of_service, name ) values (1, 20 , 'May 12, 2022', 'May 13, 2022', 3, 'main');
insert into bus_depot(id, no_of_busses, bus_check_in, bus_check_out, out_of_service, name ) values (2, 10 , 'May 13, 2022', 'May 14, 2022', 4, 'main');
insert into bus_depot(id, no_of_busses, bus_check_in, bus_check_out, out_of_service, name ) values (3, 12 , 'May 14, 2022', 'May 15, 2022', 1, 'main');
insert into bus_depot(id, no_of_busses, bus_check_in, bus_check_out, out_of_service, name ) values (4, 10 , 'May 16, 2022', 'May 16, 2022', 6, 'main');
insert into bus_depot(id, no_of_busses, bus_check_in, bus_check_out, out_of_service, name ) values (5, 15 , 'May 17, 2022', 'May 17, 2022', 16, 'main');
insert into bus_depot(id, no_of_busses, bus_check_in, bus_check_out, out_of_service, name ) values (6, 1 , 'May 18, 2022', 'May 18, 2022', 14, 'main');
insert into bus_depot(id, no_of_busses, bus_check_in, bus_check_out, out_of_service, name ) values (6, 1 , 'May 18, 2022', 'May 18, 2022', 14, 'main');
insert into bus_depot(id, no_of_busses, bus_check_in, bus_check_out, out_of_service, name ) values (8, 12 , 'May 20, 2022', 'May 21, 2022', 12, 'main');
insert into bus_depot(id, no_of_busses, bus_check_in, bus_check_out, out_of_service, name ) values (9, 11 , 'May 22, 2022', 'May 22, 2022', 22, 'terminal');
insert into bus_depot(id, no_of_busses, bus_check_in, bus_check_out, out_of_service, name ) values (10, 4 , 'May 23, 2022', 'May 23, 2022', 2, 'terminal');
insert into bus_depot(id, no_of_busses, bus_check_in, bus_check_out, out_of_service, name ) values (11, 2 , 'May 24, 2022', 'May 25, 2022', 1, 'terminal');


select * from bus_depot; 
select * from bus_depot where out_of_service > 10;
select * from bus_depot where out_of_service between 10 and 20;


CREATE TABLE Token ----------------
(
  TokenId NUMBER(10) NOT NULL,
  valid_Time Varchar2(20),
  num NUMBER(30) NOT NULL,
  PRIMARY KEY (TokenId)
)

desc token;

insert into token(tokenid, valid_time, num) values (1, '1 hour', 281033898213);
insert into token(tokenid, valid_time, num) values (2, '1.5 hour', 2231233898213);
insert into token(tokenid, valid_time, num) values (3, '5 hour', 2231233898213);
insert into token(tokenid, valid_time, num) values (4, '5.4 hour', 22312143898213);
insert into token(tokenid, valid_time, num) values (5, '4 hour', 124123112312312);
insert into token(tokenid, valid_time, num) values (6, '5 hour', 12412235212312);
insert into token(tokenid, valid_time, num) values (7, '5.32 hour', 124123523242312);
insert into token(tokenid, valid_time, num) values (8, '24 hour', 12412323242312);
insert into token(tokenid, valid_time, num) values (9, '23 hour', 12412323225712);
insert into token(tokenid, valid_time, num) values (10, '3 hour', 12412329325712);
insert into token(tokenid, valid_time, num) values (11, '3 hour', 1241232325712);
insert into token(tokenid, valid_time, num) values (12, '13 hour', 1241212232325712);
insert into token(tokenid, valid_time, num) values (13, '13.4 hour', 124124232325712);



select * from token;
select * from token order by num desc;



CREATE TABLE Token_Passenger ----------------
(
  id NUMBER(10) NOT NULL,
  TokenId NUMBER(30) NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_Token FOREIGN KEY (TokenId)
    REFERENCES Token(TokenId)
)



desc token_passenger;

insert into token_passenger(id, tokenid) values (1, 3);
insert into token_passenger(id, tokenid) values (2, 1);
insert into token_passenger(id, tokenid) values (3, 2);
insert into token_passenger(id, tokenid) values (4, 5);
insert into token_passenger(id, tokenid) values (5, 4);
insert into token_passenger(id, tokenid) values (7, 13);
insert into token_passenger(id, tokenid) values (8, 10);
insert into token_passenger(id, tokenid) values (9, 9);
insert into token_passenger(id, tokenid) values (10, 6);
insert into token_passenger(id, tokenid) values (11, 8);
insert into token_passenger(id, tokenid) values (12, 7);
insert into token_passenger(id, tokenid) values (13, 12);


select * from token_passenger where tokenId <> 2 or tokenId < 3;
select * from token_passenger where tokenId <> 2 and tokenId < 3;



CREATE TABLE Route ----------------
(
  RouteId NUMBER(10) NOT NULL,
  R_Number NUMBER(10) NOT NULL,
  Distance NUMBER(10) NOT NULL,
  Starting_point varchar(255) not null,
  Ending_point varchar(255) not null,
  PRIMARY KEY (RouteId)
)


insert into route(routeid,r_number,distance,starting_point,ending_point) values (1, 15, 20, 'Bhatti Chowk', 'RA Bazar');
insert into route(routeid,r_number,distance,starting_point,ending_point) values (2, 23, 20, 'Railway Station', 'Rana Town');
insert into route(routeid,r_number,distance,starting_point,ending_point) values (3, 2, 20, 'Nasir Bagh', 'Rana Town');
insert into route(routeid,r_number,distance,starting_point,ending_point) values (4, 3, 20, 'Railway Station', 'Rana Town via Mini market');
insert into route(routeid,r_number,distance,starting_point,ending_point) values (5, 4, 30, 'Jilani Park', 'Cantt');
insert into route(routeid,r_number,distance,starting_point,ending_point) values (6, 5, 30, 'Multan Road ', 'Muzafferabad');
insert into route(routeid,r_number,distance,starting_point,ending_point) values (7, 6, 30, 'Katchery ', 'Janazgah');
insert into route(routeid,r_number,distance,starting_point,ending_point) values (8, 7, 30, 'Mini Market ', 'Bhatti Chowk');
insert into route(routeid,r_number,distance,starting_point,ending_point) values (9, 7, 30, 'Max Opera ', 'Cavilary Chowk');
insert into route(routeid,r_number,distance,starting_point,ending_point) values (10, 8, 25, 'Amritsar Chowk Opera ', 'Wagha Border');
insert into route(routeid,r_number,distance,starting_point,ending_point) values (11, 9, 33, 'Shahdra', 'Gujumata');




select * from route;
select * from route where starting_point Like('M%');
select * from route where starting_point in('Jilani Park', 'Shahdra')

CREATE TABLE Bus ----------------
(
  BusId NUMBER(10) NOT NULL,
  B_Number NUMBER(10) NOT NULL,
  Location NUMBER(10) ,
  departureTime number(20) not null,
  RouteId NUMBER(10) NOT NULL,
  PRIMARY KEY (BusId),
  CONSTRAINT FK_RouteId FOREIGN KEY (RouteId)
    REFERENCES Route(RouteId)
)


CREATE TABLE Line ----------------
(
  LineId NUMBER(10) NOT NULL,
  Current_Stop Varchar2(30) ,
  Previous_Stop Varchar2(30) ,
  Next_Stop Varchar2(30) ,
  RouteId NUMBER(10) NOT NULL,
  BusId NUMBER(10) NOT NULL,

  PRIMARY KEY (LineId),
  CONSTRAINT FK_RId FOREIGN KEY (RouteId)
    REFERENCES Route(RouteId),
  CONSTRAINT FK_BusId FOREIGN KEY (BusId)
    REFERENCES Bus(BusId)
)




CREATE TABLE Card ----------------
(
  CardId NUMBER(10) NOT NULL,
  Balance NUMBER(10) ,
  C_Number Number(30) not null ,
  
  PRIMARY KEY (CardId)
  
)




desc card;


insert into card(cardid, balance, c_number) values (1, 200, 4242342343);
insert into card(cardid, balance, c_number) values (2, 300, 42423423343);
insert into card(cardid, balance, c_number) values (3, 400, 424533543343);
insert into card(cardid, balance, c_number) values (4, 2300, 2343232432432);
insert into card(cardid, balance, c_number) values (6, 9000, 273178293721937);
insert into card(cardid, balance, c_number) values (7, 1000, 273178721937);
insert into card(cardid, balance, c_number) values (8, 1000, 27317832721937);
insert into card(cardid, balance, c_number) values (9, 2000, 27317832721937);
insert into card(cardid, balance, c_number) values (10, 5000, 273214721937);
insert into card(cardid, balance, c_number) values (11, 2000, 27322314721937);
insert into card(cardid, balance, c_number) values (12, 2400, 27322314722417);
insert into card(cardid, balance, c_number) values (13, 4300, 2732231873497);


select * from card;
select Max(balance), Min(Balance) from card;
select Sum(Balance) from card;
select count(Balance) from card;





CREATE TABLE Attendent ----------------
(
  AttendentId NUMBER(10) NOT NULL,
  Name Varchar2(30) ,
  Shift Varchar2(20) ,
  Address Varchar2(255) ,
  Cnic Number(30) not null ,
  Salary Number(6) ,

  BusId Number(30) not null ,
  CardId Number(30) not null ,

  PRIMARY KEY (AttendentId),
   CONSTRAINT FK_BId FOREIGN KEY (BusId)
    REFERENCES Bus(BusId),
   CONSTRAINT FK_CardId FOREIGN KEY (CardId)
    REFERENCES Card(CardId)
  
)



CREATE TABLE Driver ----------------
(
  DriverId NUMBER(10) NOT NULL,
  FirstName Varchar2(30) ,
  LastName Varchar2(30) ,
  Shift Varchar2(20) ,
  Address Varchar2(255) ,
  Cnic Number(30) not null ,
  Salary Number(6) ,

  BusId Number(30) not null ,
  CardId Number(30) not null ,

  PRIMARY KEY (DriverId),
   CONSTRAINT FK_BuId FOREIGN KEY (BusId)
    REFERENCES Bus(BusId),
   CONSTRAINT FK_CId FOREIGN KEY (CardId)
    REFERENCES Card(CardId)
  
)


Insert into driver(id, firstname,lastname, shift,address, cnic, salary, busid, cardid) values (8, 'Muhammad', 'Rameez', 'Morning', '123-C Block', 123, 45000, 2, 3);







CREATE TABLE Passenger ----------------
(
  PassengerId NUMBER(10) NOT NULL,

  BusId Number(30) not null ,
  CardId Number(30) not null ,

  PRIMARY KEY (PassengerId),
   CONSTRAINT FK_BubId FOREIGN KEY (BusId)
    REFERENCES Bus(BusId),
   CONSTRAINT FK_CaId FOREIGN KEY (CardId)
    REFERENCES Card(CardId)
  
)

CREATE TABLE BusStop ----------------
(
  BusStopId NUMBER(10) NOT NULL,
  Name VarChar2(50) not null ,

  BusId Number(30) not null ,
  RouteId Number(30) not null ,

  PRIMARY KEY (BusStopId),
   CONSTRAINT FK_BbId FOREIGN KEY (BusId)
    REFERENCES Bus(BusId),
   CONSTRAINT FK_RoId FOREIGN KEY (RouteId)
    REFERENCES Route(RouteId)
  
)




Insert into driver(id, name, age, salary, expe) values (1, 'Ali', 25, 20000, 2);
Insert into driver(id, name, age, salary, expe) values (2, 'Ahmed', 26, 25000, 3);
Insert into driver(id, name, age, salary, expe) values (3, 'Hashir', 22, 35000, 3);
Insert into driver(id, name, age, salary, expe) values (4, 'Meer', 20, 30000, 1);
Insert into driver(id, name, age, salary, expe) values (5, 'Adil', 21, 35000, 1);
Insert into driver(id, name, age, salary, expe) values (6, 'Bilal', 20, 45000, 4);
Insert into driver(id, name, age, salary, expe) values (7, 'Rizwan', 22, 45000, 2);
Insert into driver(id, name, age, salary, expe) values (8, 'Rameez', 20, 45000, 2);
Insert into driver(id, name, age, salary, expe) values (9, 'Mohsin', 19, 15000, 1);
Insert into driver(id, name, age, salary, expe) values (10, 'Basheer', 23, 35000, 2);
insert into driver(id, name, age , salary, expe ) values(11, 'Shoaib', 22, 12000, 1);
insert into driver(id, name, age , salary, expe ) values(12, 'Shahzaneer', 21, 200000, 2);




