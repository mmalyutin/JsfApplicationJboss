-- DROP TABLES
DROP TABLE USER;
DROP TABLE ROLE;


-- CREATE TABLES
CREATE TABLE USER (
	USERID INT UNSIGNED NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (USERID),
	NAME VARCHAR(30) NOT NULL,
	PASSWORD VARCHAR(30) NOT NULL
);

CREATE TABLE ROLE (
	ROLEID INT UNSIGNED NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (ROLEID),
	USERID INT UNSIGNED NOT NULL,	
	ROLE VARCHAR(30) NOT NULL
);

-- INSERT USER
INSERT INTO USER (NAME, PASSWORD) VALUES ('admin', 'admin');
INSERT INTO USER (NAME, PASSWORD) VALUES ('AbrahamGabriel', 'admin');
INSERT INTO USER (NAME, PASSWORD) VALUES ('AbrahamFrancisco', 'admin');
INSERT INTO USER (NAME, PASSWORD) VALUES ('CarmenRoman', 'admin');

-- INSERT ROLE
INSERT INTO ROLE (USERID, ROLE) VALUES (1, 'Administrator');
INSERT INTO ROLE (USERID, ROLE) VALUES (1, 'Manager');
INSERT INTO ROLE (USERID, ROLE) VALUES (2, 'User');
INSERT INTO ROLE (USERID, ROLE) VALUES (3, 'User');
INSERT INTO ROLE (USERID, ROLE) VALUES (4, 'User');

-- SELECTS
SELECT * FROM USER;
SELECT * FROM ROLE;

select password from USER where name = 'admin';

select ROLE, 'Roles' from ROLE r, USER u where u.USERID=r.USERID and u.NAME='admin'

INSERT INTO ROLE (USERID, ROLE) VALUES (1, 'Manager');


commit;



--- DATASOURCE Jboss ---

select password from USER where name=?
select ROLE, 'Roles' from ROLE r, USER u where u.USERID=r.USERID and u.NAME=?
