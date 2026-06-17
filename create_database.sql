drop database if exists RideSharingDatabase ;
create database RideSharingDatabase ;
use RideSharingDatabase ;
create table roles (
	id int auto_increment primary key not null,
    title varchar(20) not null unique,
    description varchar(255)
);
insert into roles (title) values ('admin'), ('passenger'), ('driver');

create table countries(
	id int not null auto_increment primary key,
    name varchar(50) not null unique
);

create table cities(
	id int not null auto_increment primary key,
    countryId int not null,
    name varchar(50),
    foreign key (countryId) references countries(id)
);


create table addresses (
	id int auto_increment primary key not null,
    numInFloor varchar(10),
    floor int,
    number int,
    street varchar(50),
    cityId int not null,
    postalCode varchar(50),
    foreign key (cityId) references cities(id)
);


create table persons (
	id int auto_increment primary key not null,
    firstName varchar(255) not null,
    lastName varchar(255) not null,
    emailAddress varchar(255) not null unique,
    birthday date default '1900-01-01' not null,
    billingAddressId int,
    passwordHash varchar(255),
    foreign key (billingAddressId) references addresses(id)
);

create table personToRole (
	personId int not null,
    roleId int not null,
    isActive boolean default true,
    foreign key (personId) references persons(id),
    foreign key (roleId) references roles(id)
);

create table personsToAddresses (
	personId int not null,
    addressId int not null,
    name varchar(255),
    foreign key (personId) references persons(id),
    foreign key (addressId) references addresses(id)
);

create table carManufacturers (
	id int not null auto_increment primary key,
    name varchar(50)
);

create table carModels (
	id int not null auto_increment primary key,
    manufacturerId int not null,
    name varchar(50),
    foreign key (manufacturerId) references carManufacturers(id)
);

create table cars (
	id int auto_increment not null primary key,
	lisencePlate varchar(20) not null,
    modelId int not null,
    manufacturingYear int,
    capacity int,
    haveBicycleRack boolean,
    mayUseTrunk boolean,
    haveTrailerHook boolean,
    foreign key (modelId) references carModels(id)
);

create table carsToDrivers (
	carId int not null,
    driverId int not null,
    foreign key (carId) references cars(id),
    foreign key (driverId) references persons(id)
);

create table requestedRidesStatuses (
	id int auto_increment not null primary key,
    status varchar(30) not null unique
);
insert into requestedRidesStatuses (status) values ('pending'), ('expired'), ('accepted'), ('cancelled');

create table requestedRides (
	id int auto_increment not null primary key,
    status int not null default 1,
    passengerId int not null,
    requestTimeAndDate datetime default CURRENT_TIMESTAMP not null,
    requestExpireDateTime datetime,
    passengerNumber int default 1,
    pickupAddressId int not null,
    pickupTime datetime not null,
    dropoffAddressId int not null,
    addBicycle boolean default false,
    addTrunkSpace boolean default false,
    foreign key (status) references requestedRidesStatuses(id),
    foreign key (passengerId) references persons(id),
    foreign key (pickupAddressId) references addresses(id),
    foreign key (dropoffAddressId) references addresses(id)
);

create table offersStatuses (
	id int auto_increment not null primary key,
    status varchar(30) not null unique
);
insert into offersStatuses (status) values ('pending'), ('accepted'), ('rejected'), ('expired');

create table offersToRequestedRides (
	id int auto_increment not null primary key,
    requestedRideId int not null,
    offerDateTime DATETIME DEFAULT CURRENT_TIMESTAMP,
    status int not null,
    driverId int not null,
    carId int not null,
    price decimal(10,2),
    foreign key (requestedRideId) references requestedRides(id),
    foreign key (status) references offersStatuses(id),
    foreign key (driverId) references persons(id),
    foreign key (carId) references cars(id)
);

Create table realisedRides (
	id int auto_increment not null primary key,
    offerId int not null unique,
    actualPickupDateTime datetime not null,
    actualDropoffDateTime datetime,
    cancellingDateTime datetime,
    cancelledById int,
	cancellationReason VARCHAR(255),
    passengerFeedbackScore int,
    driverFeedbackScore int,
    foreign key (offerId) references offersToRequestedRides(id),
    foreign key (cancelledById) references persons(id)
);