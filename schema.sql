
//---------User table that stores their data -------//
CREATE DATABASE planner_db;
USE planner_db;

CREATE TABLE users
(
	id INTEGER NOT NULL AUTO_INCREMENT,
	username VARCHAR(30),
	email VARCHAR(50),
	password VARCHAR(64),
	activation CHAR(32),
	PRIMARY KEY (id)
);

//------------Remember Me Table --------------//

CREATE TABLE remember_me
(
	id INTEGER NOT NULL AUTO_INCREMENT,
	authentificator1 CHAR(20),
	authentificator2 CHAR(64),
	user_id INTEGER,
	expires DATETIME,
	PRIMARY KEY (id)
);

//------------------- Forgot Password Table

CREATE TABLE forgot_password
(
	id INTEGER NOT NULL AUTO_INCREMENT,
	user_id INTEGER,
	rkey CHAR(32),
	mytime INTEGER,
	status VARCHAR(7),
	PRIMARY KEY (id)
);