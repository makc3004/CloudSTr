DROP TABLE IF EXISTS TEST;
DROP TABLE IF EXISTS USERS;
DROP TABLE IF EXISTS TOKENS;
CREATE TABLE USERS(ID INT PRIMARY KEY AUTO_INCREMENT, LOGIN VARCHAR(255) UNIQUE, PASSWORD VARCHAR(255));
CREATE TABLE TOKENS(ID INT PRIMARY KEY AUTO_INCREMENT, USER_ID  INT, TOKEN VARCHAR(255), foreign key (USER_ID) references USERS(ID));
INSERT INTO USERS (LOGIN, PASSWORD) VALUES ('user1', 'p1');
INSERT INTO USERS (LOGIN, PASSWORD) VALUES ('user2', 'p2');
INSERT INTO USERS (LOGIN, PASSWORD) VALUES ('user3', 'p3');
select * from users;