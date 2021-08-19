DROP DATABASE IF EXISTS town;
CREATE DATABASE TOWN:
USE Cinema:

CREATE TABLE Customer (
	Customer_ID INT AUTO_INCREMENT,
	Customer_name VARCHAR(25) NOT NULL,
	Customer_phone_number VARCHAR(15) NOT NULL,
	Customer_email VARCHAR(40) NOT NULL,
	PRIMARY KEY (Customer_ID)
	);

CREATE TABLE Booking (
	Booking_ID INT AUTO_INCREMENT,
	Customer_ID INT NOT NULL,
	Film_ID INT NOT NULL,
	Seats_booked SMALLINT NOT NULL,
	Location_ID INT NOT NULL,
	FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
	FOREIGN KEY (Film_ID) REFERENCES Films(Film_ID),
	FOREIGN KEY (Location_ID) REFERENCES Location(Location_ID),
	PRIMARY KEY (Booking_ID)
	);

CREATE TABLE Films (
	Film_ID INT AUTO_INCREMENT,
	Film_name VARCHAR(50) NOT NULL,
	Film_length SMALLINT NOT NULL,
	Film_age_rating SMALLINT NOT NULL,
	Location_ID INT NOT NULL,
	FOREIGN KEY (Location_ID) REFERENCES Location(Location_ID),
	PRIMARY KEY (Film_ID)
	);

CREATE TABLE Location (
	Location_ID INT AUTO_INCREMENT,
	Location_address VARCHAR(70) NOT NULL,
	Location_phone_number VARCHAR(15) NOT NULL,
	Location_email VARCHAR(40) NOT NULL,
	Staff_ID INT NOT NULL,
	FOREIGN KEY (Staff_ID) REFERENCES Staff(Staff_ID),
	PRIMARY KEY (Location_ID)
	);
		
CREATE TABLE Availibility (
	Availibility_ID INT NOT NULL,
	Location_ID INT NOT NULL,
	Film_ID INT NOT NULL,
	available BOOLEAN NOT NULL,
	FOREIGN KEY (Location_ID) REFERENCES Location(Location_ID),
	FOREIGN KEY (Film_ID) REFERENCES Films(Film_ID),
	PRIMARY KEY (Availibility_ID)
	);

CREATE TABLE Staff (
	Staff_ID INT AUTO_INCREMENT,
	Staff_name VARCHAR(25) NOT NULL,
	Staff_phone_number VARCHAR(15) NOT NULL,
	Staff_email VARCHAR(40) NOT NULL,
	PRIMARY KEY (Staff_ID)
	);