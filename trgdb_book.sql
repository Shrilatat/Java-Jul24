/*
-- Query: SELECT * FROM trgdb.book
LIMIT 0, 1000

-- Date: 2024-08-19 22:18
*/
DROP TABLE IF EXISTS book1; 

CREATE TABLE Book(
BOOKID INT(4) NOT NULL,
BOOKNAME VARCHAR(20) NOT NULL,
AUTHOR VARCHAR(20) NOT NULL,
PRICE decimal(6,2) NOT NULL,
CONSTRAINT BOOK_PK PRIMARY KEY (BOOKID)
);

INSERT INTO `` (`BOOKID`,`BOOKNAME`,`AUTHOR`,`PRICE`) VALUES (1,'book-1','auth-1',100.00);
INSERT INTO `` (`BOOKID`,`BOOKNAME`,`AUTHOR`,`PRICE`) VALUES (101,'Core Java','Cay Horstman',675.00);
INSERT INTO `` (`BOOKID`,`BOOKNAME`,`AUTHOR`,`PRICE`) VALUES (102,'Core Servlets','Chris Brown',625.00);
INSERT INTO `` (`BOOKID`,`BOOKNAME`,`AUTHOR`,`PRICE`) VALUES (103,'Spring Microservces','Alex Antonov',525.00);
INSERT INTO `` (`BOOKID`,`BOOKNAME`,`AUTHOR`,`PRICE`) VALUES (104,'Core Servlet','Dan Brown',300.00);
INSERT INTO `` (`BOOKID`,`BOOKNAME`,`AUTHOR`,`PRICE`) VALUES (105,'SpringBootAdvanced','Chris Brown',320.00);
INSERT INTO `` (`BOOKID`,`BOOKNAME`,`AUTHOR`,`PRICE`) VALUES (108,'Ajax Simplified','Shrilata',320.00);
INSERT INTO `` (`BOOKID`,`BOOKNAME`,`AUTHOR`,`PRICE`) VALUES (109,'Servlets and JSP','Shrilata',605.00);
INSERT INTO `` (`BOOKID`,`BOOKNAME`,`AUTHOR`,`PRICE`) VALUES (110,'Spring Microservices','Cay Jennings',480.00);
INSERT INTO `` (`BOOKID`,`BOOKNAME`,`AUTHOR`,`PRICE`) VALUES (111,'Spring Core','Cay Horstman',575.00);
INSERT INTO `` (`BOOKID`,`BOOKNAME`,`AUTHOR`,`PRICE`) VALUES (112,'Shrilata biography','Shrilata',320.00);
INSERT INTO `` (`BOOKID`,`BOOKNAME`,`AUTHOR`,`PRICE`) VALUES (120,'New Book','New Author',1000.00);
