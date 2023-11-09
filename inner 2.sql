USE EntertainmentAgencyExample;
-- Inner join hw
-- HELP: 6, 8

-- ***********************************************************************************
--1. List the first and last names of all agents who have ever booked an engagement. Eliminate all duplicates. (2 columns, 8 rows)
-- ***********************************************************************************
--SELECT AgtFirstName, AgtLastName FROM Agents
--INNER JOIN Engagements on Agents.AgentID = Engagements.AgentID
--GROUP BY AgtFirstName, AgtLastName

--USE SalesOrdersExample;

--List the product number, product name, and category description for all products (40 rows).
--SELECT ProductNumber, ProductName, CategoryDescription FROM Products
--INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID;


-- Find the customer names and order dates for all orders. 
-- Sort by order date from earliest to latest. (944 rows)
--SELECT CustFirstName, CustLastName, OrderDate FROM Customers
--INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
--ORDER BY OrderDate ASC

-- ***********************************************************************************
--2. Find the first and last names of all customers who have paid more than $500 for an engagement. Eliminate all duplicates. (2 columns, 13 rows)
-- ***********************************************************************************
--SELECT CustFirstName, CustLastName FROM Customers
--INNER JOIN Engagements on Customers.CustomerID = Engagements.CustomerID
--WHERE ContractPrice > 500
--GROUP BY CustFirstName, CustLastName

-- ***********************************************************************************
--3. Find the stage names of all entertainers that have worked with agent #3 for an engagement. Eliminate all duplicates. (1 column, 10 rows)
-- ***********************************************************************************

--SELECT EntStageName FROM Entertainers
--INNER JOIN Engagements ON Entertainers.EntertainerID = Engagements.EntertainerID
--WHERE AgentID = 3
--GROUP BY EntStageName
-- ***********************************************************************************
--4. List all entertainer stage names and their musical styles. Sort results by stage name, then musical style alphabetically (2 columns, 32 rows).
-- ***********************************************************************************

--SELECT EntStageName, StyleName FROM Entertainers
--INNER JOIN Entertainer_Styles ON Entertainers.EntertainerID = Entertainer_Styles.EntertainerID
--INNER JOIN Musical_Styles ON Entertainer_Styles.StyleID = Musical_Styles.StyleID
--ORDER BY EntStageName, StyleName ASC

-- ***********************************************************************************
--5. Find the first and last names of all members of 'Jazz Persuasion'. (2 columns, 3 rows)
-- ***********************************************************************************
--SELECT MbrFirstName, MbrLastName FROM Members
--INNER JOIN Entertainer_Members ON Members.MemberID = Entertainer_Members.MemberID
--INNER JOIN Entertainers ON Entertainer_Members.EntertainerID = Entertainers.EntertainerID
--WHERE Entertainers.EntertainerID = 1005

-- ***********************************************************************************
--6. List the stage names of all entertainers that can play at least one musical style that aligns with customer #10008's musical preferences. Eliminate all duplicates. (1 column, 4 rows)
--HELP
-- ***********************************************************************************

--SELECT EntStageName FROM Entertainers
--INNER JOIN Engagements on Entertainers.EntertainerID = Engagements.EntertainerID
--INNER JOIN Customers on Engagements.CustomerID = Customers.CustomerID
--INNER JOIN Musical_Preferences on Customers.CustomerID = Musical_Preferences.CustomerID
--INNER JOIN Musical_Styles on Musical_Preferences.StyleID = Musical_Styles.StyleID
--INNER JOIN Entertainer_Styles on Musical_Styles.StyleID = Entertainer_Styles.StyleID

-- ***********************************************************************************
--7. Find customer ID's and common style ID's for all pairs of customers who share at least one musical preference. Do not repeat the same pair twice. (3 columns, 22 rows)
-- ***********************************************************************************

--SELECT T1.CustomerID AS CustomerOne, T2.CustomerID AS CustomerTwo, T1.StyleID FROM Musical_Preferences AS T1 
--INNER JOIN Musical_Preferences AS T2 ON T1.StyleID = T2.StyleID
--WHERE T1.CustomerID < T2.CustomerID

-- ***********************************************************************************
--8. Find the ID's of all customers who like both Salsa and Jazz styles. Eliminate all duplicates. (1 column, 2 rows)
-- HELP
-- ***********************************************************************************
--SELECT CustomerID FROM Musical_Preferences
--INNER JOIN Musical_Styles ON Musical_Preferences.StyleID = Musical_Styles.StyleID
--GROUP BY Musical_Styles.StyleID
--HAVING Musical_Styles.StyleID = 15 OR 24

--SELECT * FROM Musical_Preferences

--SELECT * FROM Musical_Styles