create database ManagerSale;
create table Customer(
cID int auto_increment primary key,
cName varchar(20),
cAge int
);
create table Product(
pID int auto_increment primary key,
pName varchar(50) not null,
pPrice double not null
);

create table Orders(
oID int auto_increment primary key,
cID int,
foreign key(cID)  references Customer(cID),
oDate datetime,
oToltalPrice double

);
create table OderDetail(
oID int,
pID int,
odQTY int,
primary key (oID,pID)
);
