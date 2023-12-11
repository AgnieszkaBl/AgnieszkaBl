--Zad. 5
--Use AdventureWorks2012
--SELECT AddressLine1, City, PostalCode
--FROM Person.Address

--Zad.6
--SELECT *
--FROM Sales.Currency

--Zad. 7
--SELECT FirstName, LastName, FirstName + ' ' + LastName, N'Dzia³ IT'
--FROM Person.Person

--Zad. 8 
--SELECT FirstName, LastName
--FROM Person.Person
--WHERE PersonType = 'IN'

--Zad. 9
--SELECT *
--FROM Person.Person
--WHERE LastName != 'Ford'

--zad. 10
--SELECT TOP 10*
--FROM Person.Person 

--SELECT TOP 10 PERCENT*
--FROM Person.Person

--zad.11
--SELECT DISTINCT FirstName, LastName
--FROM Person.Person

--zad.12
--SELECT ProductID as Product_ID, OrderQty as Zamowiona_ilosc, DueDate as Data_wymagalnosci
--FROM Production.WorkOrder

--zad. 13
--SELECT *
--FROM Person.Person as pp
--WHERE LastName = 'Walters'

--zad.14
--SELECT Name, ProductNumber, StandardCost, ListPrice
--FROM Production.Product
--WHERE StandardCost >= 1000
--and ListPrice > 2000

--zad. 15
--SELECT ProductID
--FROM Production.WorkOrder
--WHERE ProductID in (718, 807, 901)

--zad. 16
--SELECT *
--FROM Production.WorkOrder
--WHERE EndDate between '20050704' and '20050725' 

--zad. 17
--SELECT LastReceiptDate, ProductID
--FROM Purchasing.ProductVendor
--WHERE LastReceiptDate between '20110829' and '20140111'
--ORDER BY LastReceiptDate 

--zad. 18
--SELECT *
--FROM Employees
--WHERE City not in ('Tacoma', 'London')
--and BirthDate not between '19480101' and '19481231'

--zad. 19
--SELECT *
--FROM Person.Person
--WHERE LastName like 'E%'

--zad.20
--SELECT *
--FROM Person.Address
--WHERE (City like 'M%' or City like 'W%')
--and StateProvinceID not in (79, 65)
--and ModifiedDate not between '20050101' and '20051231'

--zad. 21
--SELECT FirstName, LastName as Nazwisko, MiddleName, EmailPromotion
--FROM Person.Person
--WHERE LastName not like 'M%'
--and MiddleName is not NULL
--and EmailPromotion > 0

--zad. 22
--SELECT *
--FROM Production.Product
--WHERE StandardCost >= 1000
--and Size >= 42
--and ProductLine != 'H'
--and (Color = 'Blue' or Color = 'Yellow)

--zad. 23
--SELECT *
--FROM Person.Person
--WHERE MiddleName is NULL
--and Title is not NULL

-- zad. 24
--SELECT *
--FROM Person.ContactType
--WHERE Name in ('Export Administrator', 'Marketing Representative')

--exc. 25
--SELECT *
--FROM Sales.SalesPerson
--WHERE CommissionPct between 0.01 and 0.015
--and TerritoryID not in (3, 5)
--and SalesYTD > 1500

--exc. 26
--SELECT *, FirstName + ' ' + LastName as Name
--FROM Person.Person
--ORDER BY Name desc

--exc. 27
--SELECT *
--FROM Production.WorkOrder
--WHERE ProductID in (718, 807)
--and StartDate not in ('20050704', '20050725')
--and EndDate between '20111001' and '20111031'
--and DueDate not between '20111101' and '20111130'
--and OrderQty = StockedQty


-- exc. 28
--SELECT *
--FROM Person.Person
--WHERE LastName like 'A%' or LastName like 'B%' or LastName like 'C%' or LastName like'D%'

--exc. 29
--SELECT *
--FROM Person.Person
--WHERE LastName like 'B%f'

--exc. 30
--SELECT *
--FROM Person.Person
--WHERE LastName like 'E%' 
--and FirstName not like '%r'


--exc. 31
--SELECT CustomerID, StoreID
--FROM Sales.Customer
--WHERE StoreID between 620 and 934

--exc. 32
--SELECT BusinessEntityID, AverageLeadTime, StandardPrice, LastReceiptCost, LastReceiptCost - StandardPrice as Roznica
--FROM Purchasing.ProductVendor
--WHERE AverageLeadTime > 17
--and LastReceiptCost >StandardPrice

--exc. 33
--SELECT ProductID, LocationID, ScheduledStartDate, ScheduledEndDate
--FROM Production.WorkOrderRouting
--WHERE ProductID between 517 and 777
--and ScheduledStartDate > '20110705'
--and ScheduledEndDate < '20110718'

--exc. 34
--SELECT *
--FROM Purchasing.ProductVendor
--WHERE OnOrderQty is not NULL

--exc. 35
--SELECT *
--FROM Person.Person
--WHERE PersonType != 'EM'
--and FirstName not like 'G%'
--and LastName like 'M%'
--and EmailPromotion > 1
--and MiddleName is not null

--exc. 36
--SELECT TOP 3 *
--FROM Purchasing.PurchaseOrderDetail
--WHERE DueDate between '20110430' and '20130129'
--and OrderQty < 500

--EXC. 37
--SELECT *
--FROM Sales.SalesTaxRate
--ORDER BY TaxType, TaxRate desc


--EXC. 38
--SELECT *
--FROM Purchasing.ProductVendor
--WHERE LastReceiptDate between '20110813' and '20110825'
--ORDER BY LastReceiptDate

--exc. 39
--SELECT UnitPrice, LineTotal
--FROM Sales.SalesOrderDetail
--WHERE UnitPrice <> LineTotal

--EXC. 40
--SELECT DISTINCT FirstName, LastName 
--FROM Person.Person
--WHERE MiddleName is not NULL

--exc. 41
--SELECT ProductNumber, StandardCost, StandardCost *2, StandardCost * 1.2
--FROM Production.Product

--exc. 42
--SELECT OrderQty, ProductID, CEILING (UnitPrice), LineTotal, FLOOR (UnitPrice*OrderQty-LineTotal)
--FROM Sales.SalesOrderDetail

--EXC. 43
--SELECT UnitPrice, UnitPriceDiscount, ROUND (UnitPrice * (1-UnitPriceDiscount), 2)
--FROM Sales. SalesOrderDetail
--ORDER BY UnitPriceDiscount > 0 --KONSULTACJA

--EXC. 44
--SELECT SalesOrderID, OrderQty, UnitPrice, ROUND (OrderQty * UnitPrice, 3) as Suma_total
--FROM Sales.SalesOrderDetail
--WHERE ROUND (OrderQty * UnitPrice, 3) > 100
--ORDER BY Suma_total

--exc. 45
--SELECT Name, LEN (Name) as Ilosc_znakow
--FROM Sales.Store

--exc. 46
--SELECT NationalIDNumber, LEN (NationalIDNumber)
--FROM HumanResources.Employee
--WHERE LEN (NationalIDNumber) < 9

--EXC. 47
--SELECT NationalIDNumber, LTRIM (RTRIM(NationalIDNumber))
--FROM HumanResources.Employee

--exc. 48
--SELECT ProductNumber, LEFT (ProductNumber, 2)
--FROM Production.Product --KONSULTACJA

--EXC. 49
--SELECT AccountNumber, REPLACE (AccountNumber, 'AW', 'BC ')
--FROM Sales.Customer

--exc. 50
--SELECT AccountNumber, REPLICATE (AccountNumber + ' ', 2) as Podwojony_account
--FROM Sales.Customer

--exc. 51
--SELECT AccountNumber, SUBSTRING (AccountNumber, 3, 8) as Wyciety_account
--FROM Sales.Customer

--EXC. 52
--SELECT LastName, UPPER (LastName)
--FROM Person.Person

--exc. 53
--SELECT FirstName, LastName, LOWER (FirstName) + '.' + UPPER (LastName) + '@avendi.edu.pl' as Email
--FROM Person.Person

--exc. 54
--SELECT ModifiedDate, DATEADD (MONTH, 1, ModifiedDate) as Nowa_data
--FROM Person.Person

--exc. 55
--SELECT ModifiedDate, DATEADD (DAY, 90, ModifiedDate)
--FROM Person.Password

--exc. 56
--SELECT DueDate, ModifiedDate, DATEDIFF (DAY, ModifiedDate, DueDate) as Nowa_data, OrderQty, UnitPrice
--FROM Purchasing.PurchaseOrderDetail
--WHERE OrderQty > 100
--and UnitPrice > 20

--exc. 57
--SELECT ProductID, StartDate, EndDate, DueDate, DATEDIFF (DAY, DueDate, EndDate) as Roznica
--FROM Production.WorkOrder
--WHERE DATEDIFF (DAY, DueDate, EndDate) > 7

--EXC. 58
--SELECT EmployeeID, LastName, LastName, HireDate, DATEDIFF (YEAR, HireDate, GETDATE())
--FROM Employees
--WHERE DATEDIFF (YEAR, HireDate, GETDATE()) >= 25

--Exc. 59
--SELECT DueDate, MONTH (DueDate), YEAR (DueDate)
--FROM Purchasing.PurchaseOrderDetail

--exc. 60
--SELECT EndDate, DAY (EndDate), MONTH (EndDate), YEAR (EndDate)
--FROM Production.WorkOrder
--WHERE MONTH (EndDate) = 5

--exc. 61
--SELECT Name, 'sprzeda¿ w roku' as Sprzedaz_rok, YEAR (ModifiedDate) as Rok, SalesLastYear as Wartosc_sprzedazy
--FROM Sales.SalesTerritory

--exc. 62
--SELECT StartDate, EndDate, DATEDIFF (DAY, StartDate, EndDate)
--FROM Sales.SpecialOffer

-- exc. 63
--SELECT FirstName, REPLACE (FirstName, 'Roberto', 'Robert')
--FROM Person.Person
--WHERE PersonType = 'SC'

--exc. 64
--SELECT ModifiedDate, YEAR (ModifiedDate) as Rok1, MONTH (ModifiedDate) as Miesiac1
--FROM Person.Person

--exc. 65
--SELECT ModifiedDate, DATEADD (Day, 2, ModifiedDate)
--FROM Person.Person

--exc. 66
--SELECT *
--FROM Person.Person
--WHERE SUBSTRING (FirstName, 3, 1) in ('a', 'b')

--exc. 67
--SELECT BirthDate, GETDATE () as akt_data, DATEDIFF (YEAR, BirthDate, GETDATE ()) as akt_data
--FROM HumanResources.Employee

--exc. 68
--SELECT StartDate, EndDate, DATEDIFF (MONTH, StartDate, EndDate)
--FROM Sales.SalesTerritoryHistory
--WHERE DATEDIFF (MONTH, StartDate, EndDate) > 10

--EXC. 69
--SELECT DueDate, YEAR (DueDate), MONTH (DueDate)
--FROM Purchasing.PurchaseOrderDetail

--exc. 70
--SELECT SalesYTD, SalesLastYear
--FROM Sales.SalesTerritory

--EXC. 71
--SELECT OrderQty,
--CASE 
--WHEN ReceivedQty < 300 THEN 's³aba sprzeda¿'
--WHEN ReceivedQty BETWEEN 300 AND 500 THEN 'ŒREDNIA sprzeda¿'
--ELSE 'dobra sprzeda¿'
--END as sprzedaz
--FROM Purchasing.PurchaseOrderDetail 

--EXC. 72
--SELECT FirstName, LastName,
--CASE
--WHEN FirstName LIKE 'M%' THEN '£ADNE IMIÊ'
--ELSE 'OK' 
--END NEW
--FROM Person.Person

--exc. 73
--SELECT FirstName,
--CASE
--WHEN FirstName like '%a' THEN 'KOBIETA'
--ELSE 'MÊ¯CZYZNA'
--END as P£eæ
--FROM Person.Person

--exc. 74
--SELECT FirstName,
--CASE
--WHEN FirstName like 'P%' THEN 'weso³y'
--WHEN FirstName like 'O%' THEN 'szczêœliwy'
--ELSE 'radosny'
--END
--FROM Person.Person


--EXC. 75
--SELECT DiscountPct, 
--CASE
--WHEN DiscountPct < 0.20 THEN 'niska zni¿ka'
--WHEN DiscountPct between 0.20 and 0.35 THEN 'œrednia zni¿ka'
--ELSE 'wysoka zni¿ka'
--END
--FROM Sales.SpecialOffer

-- EXC. 76
--SELECT [Group], SalesLastYear,
--CASE
--WHEN [Group] = 'North America' THEN SalesLastYear * 1.15
--WHEN [Group] = 'Europe' THEN SalesLastYear * 1.23
--ELSE SalesLastYear
--END
--FROM Sales.SalesTerritory

--EXC. 77
--SELECT WorkOrderID, StartDate, EndDate, DueDate, DATEDIFF (DAY, EndDate, DueDate),
--CASE
--WHEN DATEDIFF (DAY, EndDate, DueDate) >= 1 THEN 'ok'
--WHEN DATEDIFF (DAY, EndDate, DueDate) = 0 THEN 'wysy³aæ'
--ELSE 'opóŸnienie'
--END
--FROM Production.WorkOrder

--exc. 78
--SELECT [Name]
--IFF ([Name] like '%manager%', 'menad¿erowie', 'pozostali pracownicy') 
--FROM Person.ContactType

--exc. 79
--SELECT [Name] + ': ' + CAST (SalesLastYear as varchar (100)), SalesLastYear
--FROM Sales.SalesTerritory

--exc. 80
--SELECT DueDate, CONVERT (varchar (10), DueDate, 104) as DueDate1
--FROM Purchasing.PurchaseOrderDetail

--exc.81
--SELECT [Name] + ': ' + CAST (SalesLastYear as nvarchar)
--FROM Sales.SalesTerritory

--exc. 82
--SELECT UnitPrice, CAST (UnitPrice as INT)
--FROM Purchasing.PurchaseOrderDetail

--exc. 83
--SELECT LineTotal, CONVERT (int, LineTotal)
--FROM Purchasing.PurchaseOrderDetail

--exc. 84
--SELECT DueDate, CONVERT (Date, DueDate, 120)
--FROM Purchasing.PurchaseOrderDetail

--exc. 85
--SELECT COUNT (*)
--FROM Person.Person

--EXC. 86
--SELECT PersonType, COUNT (*)
--FROM Person.Person
--GROUP BY PersonType

--exc. 87
--SELECT COUNT (*)
--FROM HumanResources.Employee
--WHERE MaritalStatus = 'S' and YEAR (HireDate) = '2003'


--exc. 88
--SELECT COUNT (*)
--FROM HumanResources.Employee
--WHERE MaritalStatus in ('S', 'M') 
--and YEAR (HireDate) in (2010, 2011)

--exc. 89
--SELECT SUM (SalesLastYear)
--FROM Sales.SalesTerritory

--exc. 90
--SELECT ProductID, SUM (UnitPriceDiscount) as Suma_zni¿ek 
--FROM Sales.SalesOrderDetail
--GROUP BY ProductID
--ORDER BY Suma_zni¿ek desc

--esc. 91
--SELECT COUNT (MiddleName)
--FROM Person.Person

--EXC. 92
--SELECT COUNT (DISTINCT MiddleName)
--FROM Person.Person


--EXC. 93
--SELECT ProductID, SUM (LineTotal)
--FROM Sales.SalesOrderDetail
--GROUP BY ProductID
--HAVING SUM (LineTotal) > 3000000

--EXC. 94
--SELECT JobTitle, Gender, MaritalStatus, COUNT (*)
--FROM HumanResources.Employee
--GROUP BY JobTitle, Gender, MaritalStatus
--HAVING COUNT (*) > 5

--exc. 95
--SELECT JobTitle,  MaritalStatus, COUNT (*)
--FROM HumanResources.Employee
--WHERE Gender = 'M'
--GROUP BY JobTitle, Gender, MaritalStatus 
--HAVING COUNT (*) > 5

--exc. 96
--SELECT SUM (Freight) as WartoscLadunku, ShipCity
--FROM Orders
--WHERE ShipCountry = 'Germany' AND ShipCity not in ('Stuttgart', 'Branderburg')
--GROUP BY ShipCity
--HAVING SUM (Freight) > 5
--ORDER BY WartoscLadunku


--EXC. 97
--SELECT AVG (Bonus)
--FROM Sales.SalesPerson

--exc. 98
--SELECT AVG (StandardCost) as SredniKoszt, AVG (StandardCost) * 1,23 as SrKosztPodatek
--FROM Production.Product

--EXC. 99
--SELECT MIN (UnitPrice), MAX (UnitPrice)
--FROM Sales.SalesOrderDetail

--exc. 100
--SELECT MIN (SellStartDate), MAX (SellStartDate) as Koniec_sprzeda¿y
--FROM Production.Product

--exc. 101
--SELECT MIN (SellStartDate), MAX (SellStartDate), 
--DATEDIFF (MONTH, MIN (SellStartDate), MAX (SellStartDate))

--EXC. 102
--SELECT 
--[Group],
--SUM (SalesLastYear) as Sprzeda¿_old,
--SUM (SalesYTD) as sprzeda¿_new,
--SUM (SalesYTD) - SUM (SalesLastYear) as Roznica
--FROM Sales.SalesTerritory
--GROUP BY [Group]
--ORDER BY Roznica desc


--exc. 103
--SELECT 
--YEAR (StartDate) as rok,
--MONTH (StartDate) as miesiac,
--SUM (OrderQty)
--FROM Production.WorkOrder
--GROUP BY YEAR (StartDate),
--MONTH (StartDate) 
--ORDER BY YEAR (StartDate),
--MONTH (StartDate) 

--exc. 104
--SELECT 
--CASE 
--WHEN DATEDIFF (YEAR, BirthDate, GetDate()) < 35 THEN N'm³ody',
--WHEN DATEDIFF (YEAR, BirthDate, GetDate()) <= 45 THEN N'ŒRDENI'
--ELSE 'SENIOR'
--END as 'Grupa'
--COUNT (*) as LiczbaPracownikow
--FROM HumanResources.Employee
--GROUP BY 
--CASE 
--WHEN DATEDIFF (YEAR, BirthDate, GetDate()) < 35 THEN N'm³ody',
--WHEN DATEDIFF (YEAR, BirthDate, GetDate()) <= 45 THEN N'ŒRDENI'
--ELSE 'SENIOR'
--END as 'Grupa'

--EXC. 85
--SELECT COUNT (*)
--FROM Person.Person

--EXC. 86
--SELECT COUNT (*), PersonType
--FROM Person.Person
--GROUP BY PersonType

--exc. 87
--SELECT COUNT (*)
--FROM HumanResources.Employee
--WHERE MaritalStatus = 'S'
--and YEAR (HireDate) = '2007'

--EXC. 88
--SELECT COUNT (*)
--FROM HumanResources.Employee
--WHERE MaritalStatus in ('S', 'M')
--and HireDate between '2007' and '2008'

--exc. 87
--SELECT COUNT (*)
--FROM HumanResources.Employee
--WHERE MaritalStatus = 'S'
--and
--YEAR (HireDate) = 2007

--exc. 88
--SELECT COUNT (*)
--FROM HumanResources.Employee
--WHERE MaritalStatus in ('S', 'M')
--and YEAR (HireDate) in (2007, 2008)

--exc. 89
--SELECT SUM (SalesLastYear)
--FROM Sales.SalesTerritory

--EXC. 90
--SELECT SUM (UnitPriceDiscount) as Suma_zni¿ek, ProductID
--FROM Sales.SalesOrderDetail
--GROUP BY ProductID
--ORDER BY Suma_zni¿ek desc

--exc. 91
--SELECT COUNT (MiddleName)
--FROM Person.Person

----exc. 92
--SELECT COUNT (DISTINCT MiddleName)
--FROM Person.Person


--EXC. 93
--SELECT ProductID, SUM (LineTotal) 
--FROM Sales.SalesOrderDetail
--GROUP BY ProductID
--HAVING SUM (LineTotal) > 3000000

--EXC. 94
--SELECT COUNT (*), JobTitle, Gender, MaritalStatus
--FROM HumanResources.Employee
--GROUP BY JobTitle, Gender, MaritalStatus
--HAVING COUNT (*) > 5

--EXC. 95
--SELECT MaritalStatus, JobTitle, COUNT (*)
--FROM  HumanResources.Employee
--WHERE MaritalStatus = 'M'
--GROUP BY MaritalStatus, JobTitle
--HAVING COUNT (*) > 5

--exc. 96
--SELECT SUM (Freight) as Suma_wartoœæ_³adunku, ShipCity
--FROM Orders
--WHERE ShipCountry in ('Germany')
--and ShipCity not in ('Stuttgart', 'Brandenburg')
--GROUP BY ShipCity
--HAVING SUM (Freight) > 500
--ORDER BY Suma_wartoœæ_³adunku

--exc. 97
--SELECT AVG (Bonus)
--FROM Sales.SalesPerson

--EXC. 98
--SELECT AVG (StandardCost) as Sr_Koszt, (AVG (StandardCost) * 1.23) as Sr_koszt_podatek
--FROM Production.Product

--exc. 99
--SELECT MAX (UnitPrice), MIN (UnitPrice)
--FROM Sales.SalesOrderDetail

----EXC. 100
--SELECT MIN (SellStartDate), MAX (SellStartDate)
--FROM Production.Product

--exc. 101
--SELECT MIN (SellStartDate), MAX (SellStartDate),
--DATEDIFF (MONTH, MIN (SellStartDate), MAX (SellStartDate))
--FROM Production.Product

--EXC. 102
--SELECT [Group], SUM (SalesLastYear) as Sprzeda¿_old, SUM (SalesYTD) as Sprzeda¿_new, SUM (SalesYTD) - SUM (SalesLastYear) AS Ró¿nica
--FROM Sales.SalesTerritory
--GROUP BY [Group]
--ORDER BY Ró¿nica desc

--exc. 103
--SELECT SUM (OrderQty), MONTH (StartDate), YEAR (StartDate)
--FROM Production.WorkOrder
--GROUP BY MONTH (StartDate), YEAR (StartDate)
--ORDER BY MONTH (StartDate), YEAR (StartDate)

--EXC. 104
--SELECT 
--CASE
--WHEN DATEDIFF (YEAR, BirthDate, GETDATE()) < 35 THEN 'm³ody'
--WHEN DATEDIFF (YEAR, BirthDate, GETDATE()) >= 35 and DATEDIFF (YEAR, BirthDate, GETDATE()) <= 45 THEN 'œredni'
--ELSE 'senior' 
--END as 'Grupa',
--COUNT (*) as Liczba_pracowników
--FROM HumanResources.Employee
--GROUP BY 
--CASE
--WHEN DATEDIFF (YEAR, BirthDate, GETDATE()) < 35 THEN 'm³ody'
--WHEN DATEDIFF (YEAR, BirthDate, GETDATE()) >= 35 and DATEDIFF (YEAR, BirthDate, GETDATE()) <= 45 THEN 'œredni'
--ELSE 'senior' 
--END 

--exc. 105
--SELECT a.FirstName, a.LastName, b.EmailAddress
--FROM Person.Person a
--JOIN Person.EmailAddress b
--ON a.BusinessEntityID = b.BusinessEntityID

--exc. 105
--SELECT a.FirstName, a.LastName, b.EmailAddress
--FROM Person.Person a
--JOIN Person.EmailAddress b
--ON a.BusinessEntityID = b.BusinessEntityID

--exc. 106
--SELECT a.*, b.*
--FROM AdventureWorks2012.Production.Product a
--JOIN Northwind.dbo.Products b
--ON a.ProductID = b.ProductID

--exc. 107
--SELECT a.*, b.*
--FROM AdventureWorks2012.Production.Product a
--LEFT JOIN Northwind.dbo.Products b
--ON a.ProductID = b.ProductID
--WHERE b.ProductID is NULL

-- exc. 108
--SELECT a.*, b.*
--FROM AdventureWorks2012.Production.Product a
--RIGHT JOIN Northwind.dbo.Products b
--ON a.ProductID = b.ProductID
--WHERE a.ProductID is NULL

--exc. 109
--SELECT a.*, b.*
--FROM AdventureWorks2012.Production.Product a
--FULL JOIN Northwind.dbo.Products b
--ON a.ProductID = b.ProductID
--WHERE a.ProductID IS NULL or b.ProductID IS NULL

----EXC. 110
--SELECT a.FirstName, a.LastName, b.PhoneNumber
--FROM Person.Person a 
--JOIN Person.PersonPhone b
--ON a.BusinessEntityID = b.BusinessEntityID

--exc. 111
--SELECT a.FirstName, a.LastName, MAX (b.PhoneNumber), MAX (c.[Name])
--FROM Person.Person a
--JOIN Person.PersonPhone b
--ON a.BusinessEntityID = b.BusinessEntityID
--JOIN Person.PhoneNumberType c
--ON b.PhoneNumberTypeID = c.PhoneNumberTypeID
--WHERE c.[Name] = 'Cell'
--GROUP BY a.FirstName, a.LastName

--exc. 112
--SELECT a.FirstName, a.LastName, b.PhoneNumber, c.EmailAddress
--FROM Person.Person a
--LEFT JOIN  Person.PersonPhone b
--ON a.BusinessEntityID = b.BusinessEntityID
--LEFT JOIN Person.EmailAddress c
--ON a.BusinessEntityID = c.BusinessEntityID

--exc. 113
--SELECT a.*, b.*
--FROM Person.Person a
--LEFT JOIN Person.[Address] b
--ON a.BusinessEntityID = b.AddressID

--exc. 114
--SELECT a.FirstName, a.LastName, AddressLine1, City, PostalCode
--FROM Person.Person a
--JOIN Person.BusinessEntityAddress b
--ON a.BusinessEntityID = b.BusinessEntityID
--JOIN Person.[Address]
--ON a.BusinessEntityID = b.BusinessEntityID
--WHERE a.LastName not in ('Robinson', 'Patel')

--exc. 115
--SELECT TOP 5. b.ProductID, b.ProductName, SUM (a.Quantity) as Sprzeda¿_ca³kowita
--FROM [Order Details] a
--JOIN Products b
--ON a.ProductID = b.ProductID
--GROUP BY b.ProductID, b.ProductName
--ORDER BY SUM (a.Quantity) desc


--EXC. 116
--SELECT *, a.BusinessEntityID, b.BusinessEntityID
--FROM Person.Person a
--LEFT JOIN Sales.PersonCreditCard b
--ON a.BusinessEntityID = b.BusinessEntityID
--WHERE b.BusinessEntityID is NULL

--EXC. 117
--SELECT *
--FROM Customers a
--LEFT JOIN Orders B
--ON a.CustomerID = b.CustomerID
--ORDER BY a.CustomerID

--SELECT *
--FROM Customers a
--JOIN Orders B
--ON a.CustomerID = b.CustomerID
--ORDER BY a.CustomerID

--EXC. 118
--SELECT *
--FROM Employees a
--RIGHT JOIN Orders b
--ON a.EmployeeID = b.EmployeeID
--ORDER BY a.EmployeeID

--exc. 119
--SELECT b.ProductName
--FROM [Order Details] a
--JOIN Products b
--ON a.ProductID = b.ProductID
--JOIN Orders c
--ON a.OrderID = c.OrderID
--WHERE YEAR (c.OrderDate) = 1998

--exc. 120
--SELECT d.CategoryName
--FROM [Order Details] a
--JOIN Products b
--ON a.ProductID = b.ProductID
--JOIN Orders c
--ON a.OrderID = c.OrderID
--JOIN Categories d
--ON b.CategoryID = d.CategoryID
--WHERE YEAR (c.OrderDate) = 1998
--GROUP BY d.CategoryName

--exc. 121
--SELECT a.ContactName, b.ContactName, a.City
--FROM Customers a
--JOIN Customers b
--ON a.City = b.City
--and a.CustomerID != b.CustomerID
--ORDER BY a.City

--exc. 122
--SELECT FirstName, LastName, 'AdventureWorks2012'
--FROM AdventureWorks2012.Person.Person
--UNION 
--SELECT FirstName, LastName, 'Northwind'
--FROM Northwind.dbo.Employees

--exc. 123
--SELECT [Name], 'AdventureWorks2012' 
--FROM AdventureWorks2012.Production.Product
--UNION ALL
--SELECT ProductName, 'Northwind'
--FROM Northwind.dbo.Products

--exc. 124
--SELECT 
--FROM 

--EXC. 125
--SELECT City
--FROM Customers
--EXCEPT
--SELECT City
--FROM Employees


--EXC. 126
--Use AdventureWorks2012
--INSERT INTO Sales.Currency (CurrencyCode, [Name], ModifiedDate)
--VALUES ('GiL', 'Zlllloty Golden', '20171116')

--SELECT CurrencyCode, [Name], ModifiedDate
--FROM Sales.Currency

--exc. 127
--SELECT *
--INTO #CurrencyU
--FROM Sales.Currency
--WHERE CurrencyCode like 'U%'

--exc. 128
--SELECT *
--INTO #CurrencyP
--FROM Sales.Currency
--WHERE CurrencyCode like 'P%'

--exc. 129
--INSERT INTO #CurrencyP
--SELECT *
--FROM #CurrencyU

--exc. 130
--SELECT a.BusinessEntityID, a.FirstName, a.LastName, c.AddressLine1, c.City, c.PostalCode, d.EmailAddress, e.PhoneNumber
--INTO KlienciAll
--FROM Person.Person a
--JOIN Person.BusinessEntityAddress b
--ON a.BusinessEntityID = b.BusinessEntityID
--JOIN Person.Address c
--ON b.AddressID = c.AddressID
--JOIN Person.EmailAddress d
--ON a.BusinessEntityID = d.BusinessEntityID
--JOIN Person.PersonPhone e
--ON a.BusinessEntityID = e.BusinessEntityID
--SELECT *
--FROM KlienciAll

--exc. 131
--DELETE FROM #CurrencyP
--WHERE CurrencyCode != 'P%'

--exc. 132
--TURNCATE TABLE #CurrencyP

--exc. 133
--UPDATE Person.Person
--SET LastName = 'Mordka'
--WHERE LastName = 'Margheim'

--exc. 134
--UPDATE Sales.SalesTerritoryHistory
--SET EndDate = '20180101'
--WHERE EndDate is NULL

--exc. 135
--UPDATE Person.EmailAddress
--SET ModifiedDate = '20180531'

--exc. 136
--UPDATE a
--SET a.ModifiedDate = b.ModifiedDate
--FROM Person.Person a
--JOIN Person.EmailAddress b
--ON a.BusinessEntityID = b.BusinessEntityID

--exc. 137
--SELECT TerritoryID, [Name], SalesYTD, (SalesYTD * 1.23) as YTDPlusPodatek, SalesLastYear, (SalesLastYear * 1.23) as LastYearPlusPodatek
--INTO Sprzeda¿Podatek
--FROM Sales.SalesTerritory

--UPDATE a
--SET a.SalesYTD = b.YTDPlusPodatek,
--a.SalesLastYear = b. LastYearPlusPodatek
--FROM Sales.SalesTerritory a
--JOIN Sprzeda¿Podatek b
--ON a.TerritoryID = b.TerritoryID

----EXC. 138
--ALTER TABLE Person.Person
--ADD score VARCHAR (50)
--GO

--UPDATE Person.Person
--SET score = ' '
--GO

--ALTER TABLE Person.Person
--ALTER COLUMN score varchar (50) not null

--EXC. 139
--CREATE TABLE New_Table 
--(ID INT, 
--Imie varchar (50),
--Nazwisko varchar (50),
--Data_zakupu DATE)

--EXC. 140
--ALTER TABLE Person.Person
--DROP COLUMN score



--LEVEL II
----exc. 2.1
--SELECT COUNT (*)
--FROM HumanResources.Employee
--WHERE MaritalStatus in ('S', 'M')
--and
--YEAR (HireDate) in (2003, 2004);


--exc. 2.2
--SELECT JobTitle, Gender, MaritalStatus, COUNT (*) as Liczba_pracowników
--FROM HumanResources.Employee
--WHERE MaritalStatus in ('S', 'M')
--and Gender in ('F', 'M') 
--GROUP BY JobTitle, Gender, MaritalStatus
--HAVING COUNT (*) > 5

--exc. 2.3
--SELECT MIN (SellStartDate) as pierwsza_sprzeda¿, MAX (SellStartDate) as ostatnia_sprzeda¿, DATEDIFF (MONTH, MIN (SellStartDate), MAX (SellStartDate))
--FROM Production.Product

----exc. 2.4
--SELECT AVG (StandardCost) as œredni_koszt, 1.23 * AVG (StandardCost) as œredni_koszt_podatek
--FROM Production.Product

--exc. 2.5
--SELECT [Group], 
--SUM (SalesLastYear) as Sprzeda¿_old, 
--SUM (SalesYTD) as Sprzeda¿_new, 
--SUM (SalesYTD) - SUM (SalesLastYear) as ró¿nica
--FROM Sales.SalesTerritory
--GROUP BY [Group]

--------exc. 2.6
--SELECT M.ProductModelID as Identyfikator_modelu, 
--M.[Name] as Nazwa_modelu
--COUNT (*) as Liczba_produktów
--FROM Production.Product P
--JOIN Production.ProductModel M
--ON P.ProductModelID = M.ProductModelID
--GROUP BY M.ProductModelID, M.[Name]
--ORDER BY COUNT (*) DESC

--SELECT TOP 5*
--FROM Production.Product

----exc. 2.7
--SELECT *
--FROM Customers
--WHERE Country in ('Ger*many')

--exc. 2.8

--SELECT *
--FROM Orders
--WHERE CustomerID = 'VINET' AND EmployeeID in (2, 3, 5)
--OR CustomerID = 'RICSU' AND EmployeeID in (2, 5, 7)

----exc. 2.9
--SELECT SUM (Quantity * UnitPrice) as Wartoœæ_sprzeda¿y,
--OrderID as ID_zamówienia
--FROM [Order Details]
--GROUP BY OrderID 
--HAVING SUM (Quantity * UnitPrice)> 12000
--ORDER BY Wartoœæ_sprzeda¿y desc
 
 --exc. 2.10
 --SELECT *
 --FROM Person.[Address] 
 --WHERE City like '[MW]%'
 --AND StateProvinceID not in (79, 65)
 --AND ModifiedDate not between '20050101' and '20051231'

 ----exc. 2.11
 --SELECT JobTitle, MaritalStatus, COUNT (*) as Liczba_pracowników
 --FROM HumanResources.Employee
 --WHERE Gender like 'M'
 --GROUP BY JobTitle, MaritalStatus
 --HAVING COUNT (*) > 5
 
 ----exc. 2.12
 --SELECT TOP (10) OrderID, OrderDate, CustomerID
 --FROM Orders
 --ORDER BY OrderDate desc

 --exc. 2.13
 --SELECT TOP 5 WITH TIES OrderID, OrderDate, CustomerID
 --FROM Orders
 --ORDER BY OrderDate desc

 --exc. 2.14
-- SELECT OrderID, OrderDate, CustomerID, EmployeeID
-- FROM Orders
-- ORDER BY OrderDate desc, OrderID
--OFFSET 30 ROWS 
--FETCH NEXT 20 ROWS ONLY

--exc. 2.11
--SELECT COUNT (*) as LiczbaPracownikow, JobTitle, MaritalStatus
--FROM HumanResources.Employee
--WHERE Gender = 'M'
--GROUP BY MaritalStatus, JobTitle
--HAVING COUNT (*) > 5

----exc. 2.12
--SELECT TOP 10 OrderID, OrderDate, CustomerID
--FROM Orders
--ORDER BY OrderDate DESC

--EXC. 2.13
--SELECT TOP (5) WITH TIES OrderID, OrderDate, CustomerID
--FROM Orders
--ORDER BY OrderDate DESC

--EXC. 2.14
--SELECT OrderID, OrderDate, CustomerID, EmployeeID
--FROM Orders
--ORDER BY OrderDate, OrderID
--OFFSET 30 ROWS 
--FETCH NEXT 20 ROWS ONLY

--EXC. 2.15
--SELECT @@VERSION
--SELECT 
--d.name, 
--d.compatibility_level
--FROM sys.databases d
--WHERE d.name = 'Northwind'
--and d.name = 'AdventureWorks'

--2.16
--ALTER DATABASE Northwind
--SET COMPATIBILITY_LEVEL = 110

--2.17
--SELECT PostalCode, City,
--ISNUMERIC (PostalCode) as spr
--FROM Person.Address
--WHERE ISNUMERIC (PostalCode) <> '1'

--2.18
--SELECT 
--DATEPART (yy, ShippedDate) as rok,
--DATEPART (qq, ShippedDate) as kwartal,
--SUM (Freight) as wartosc_ladunku
--FROM Orders
--GROUP BY 
--DATEPART (yy, ShippedDate) as rok,
--DATEPART (qq, ShippedDate) as kwartal,
--ORDER BY 
--DATEPART (yy, ShippedDate) as rok,
--DATEPART (qq, ShippedDate) as kwartal

----2.19
--SELECT 
--YEAR (OrderDate) as rok,
--DATENAME (WEEKDAY, OrderDate) as dzieñ_tygodnia,
--SUM (Freight) as suma
--FROM Orders
--GROUP BY
--YEAR (OrderDate),
--DATENAME (WEEKDAY, OrderDate),
--DATEPART (WEEKDAY, OrderDate)
--ORDER BY 
--YEAR (OrderDate),
--DATEPART (WEEKDAY, OrderDate)

--2.20
--SELECT DueDate, DATEFROMPARTS (2018, MONTH (DueDate), DAY (DueDate))
--FROM Purchasing.PurchaseOrderDetail

--2.21
--SELECT OrderID, OrderDate, CustomerID, EmployeeID
--FROM Orders
--WHERE OdrerDate  = EOMONTH (OrderDate)

--2.22
--SELECT ContactName,
--CHARINDEX (' ', ContactName),
--SUBSTRING (ContactName, 1, CHARINDEX (' ', ContactName) - 1) fn,
--SUBSTRING (ContactName, CHARINDEX (' ', ContactName) + 1, 9999) ln
--FROM Customers

--2.23
--SELECT HomePhone,
--CHARINDEX (' ', HomePhone) as pierwsza_spacja,
--SUBSTRING (HomePhone, 2, CHARINDEX (' ', HomePhone) - 3) as nr_kierunkowy
--FROM dbo.Employees

--2.24
--SELECT Title, STUFF (Title, 1, 0, 'Position ')
--FROM dbo.Employees

--2.25
--SELECT REPLICATE ('0', 9-len (Extension)) + Extension, Extension
--FROM dbo.Employees

----2.26
--SELECT OrderDate,
--FORMAT (OrderDate, 'MM/dd/yy')
--FROM Orders

--2.27
--SELECT CustomerID, City
--FROM Customers
--WHERE City LIKE N'[ABC]%'

--2.28
--SELECT City, PostalCode, AddressLine1
--FROM Person.Address
--WHERE City LIKE N'[A-K]%'

--2.29
--SELECT *
--FROM Person.Person
--WHERE LastName LIKE N'[^A-P]%'

--2.30
--SELECT [Group] + ': ' + CONVERT (VARCHAR, SUM (SalesYTD), 120) as sprzeda¿
--FROM Sales.SalesTerritory
--GROUP BY [Group]

--2.31
--SELECT CAST (a.[PostalCode] as int)
--FROM Person.Address

--SELECT TRY_CAST ([PostalCode] as int)
--FROM [Person].[Address]

----2.32
--SELECT *, COALESCE (MiddleName, 'brak danych')
--FROM Person.Person
--WHERE PersonType NOT LIKE 'EM'
--AND FirstName NOT LIKE 'G%'
--AND EmailPromotion > 1

----2.33
--SELECT EmployeeID, FirstName, LastName
--FROM Employees
--WHERE LastName LIKE '%a%a%'

----2.34
--SELECT SUM (LEN (FirstName) - LEN (REPLACE (firstname, 'a', '')))
--FROM Person.Person

--2.35
--SELECT 
--LEFT (FirstName, 1),
--COUNT (*)
--FROM Person.Person
--GROUP BY 
--LEFT (FirstName, 1)
--ORDER BY 
--LEFT (FirstName, 1)

----2.36

--SELECT COUNT (MiddleName), COUNT (*)
--FROM Person.Person

--2.37
--SELECT a.FirstName, a.LastName, b.EmailAddress
--FROM Person.Person a
--JOIN Person.EmailAddress b
--ON a.BusinessEntityID = b.BusinessEntityID

--2.38
--SELECT a.FirstName, a.LastName, c.AddressLine1, c.City, c.PostalCode
--FROM Person.Person a
--JOIN Person.BusinessEntityAddress b
--ON a.BusinessEntityID = b.BusinessEntityID
--JOIN Person.Address c
--ON b.AddressID = c.AddressID
--WHERE LastName NOT IN ('Robinson', 'Patel')

--2.39
--SELECT a.FirstName, a.LastName, a.BusinessEntityID, c.PostalCode
--FROM Person.Person a
--JOIN Person.BusinessEntityAddress b
--ON a.BusinessEntityID = b.BusinessEntityID
--JOIN Person.Address c
--ON b.AddressID = c.AddressID
--WHERE LEN (c.PostalCode) = 4

----2.40
--SELECT TOP 5 a.ProductID, a.ProductName, 
--SUM (b.Quantity)
--FROM Products a
--JOIN [Order Details] b
--ON a.ProductID = b.ProductID
--GROUP BY a.ProductID, a.ProductName
--ORDER BY SUM (b.Quantity)

--2.41
--SELECT a.*
--FROM Customers a
--JOIN Orders b
--ON a.CustomerID = b.CustomerID
--WHERE b.OrderID is NULL

--2.42

--SELECT b.ProductID, b.ProductName, SUM (Quantity) as sprzeda¿_ca³kowita
--FROM [Order Details] a
--JOIN Products b
--ON a.ProductID = b.ProductID
--JOIN Orders c
--ON a.OrderID = c.OrderID
--WHERE YEAR (c.OrderDate) = 1998
--GROUP BY b.ProductID, b.ProductName
--ORDER BY SUM (Quantity) DESC


--2.43
--SELECT DISTINCT d.CategoryName
--FROM [Order Details] a
--JOIN Products b
--ON a.ProductID = b.ProductID
--JOIN Orders c
--ON a.OrderID = c.OrderID
--JOIN Categories d
--ON d.CategoryID = b.CategoryID
--WHERE YEAR (c.OrderDate) = 1998

--2.44

--SELECT a.ContactName as klient1, b.ContactName as klient2, a.City
--FROM Customers a
--JOIN Customers b
--ON a.City = b.City
--AND a.CustomerID <> b.CustomerID
--ORDER BY a.City

--2.45
--SELECT a.CustomerID, COUNT (DISTINCT b.OrderID) as liczba_zam, SUM (c.Quantity) as suma_zam
--FROM Customers as a
--JOIN Orders as b
--ON a.CustomerID = b.CustomerID
--JOIN [Order Details] c
--ON c.OrderID = b.OrderID
--WHERE Country like 'USA'
--GROUP BY a.CustomerID

--2.46
--SELECT EmployeeID, 
--YEAR (OrderDate) as rok_zamówienia, 
--SUM (Freight) as wartoœæ_³adunku, 
--COUNT (OrderID) as liczba_zamówieñ
--FROM Orders
--WHERE CustomerID = 'VINET'
--GROUP BY EmployeeID, YEAR (OrderDate)

----2.47
--SELECT EmployeeID, YEAR (OrderDate) as rok_zamówienia, COUNT (CustomerID) as liczba_klientów
--FROM Orders
--GROUP BY EmployeeID, YEAR (OrderDate)

--SELECT FirstName
--FROM (SELECT FirstName, LastName
--FROM Person.Person
--WHERE PersonType = 'IN') as A

--SELECT BusinessEntityID,
--(SELECT COUNT(AddressTypeID)
--FROM [Person].[BusinessEntityAddress] as a
--WHERE a.BusinessEntityID = b.BusinessEntityID) as LZ
--FROM Person.Person as b
--ORDER BY LZ desc

--2.48
--SELECT LastName
--FROM
--(SELECT LastName, FirstName
--FROM 
--(SELECT BusinessEntityID, LastName, FirstName, ModifiedDate
--FROM Person.Person) as moje_pierwsze_podzapytanie) as moje_drugie_podz

--2.49
--SELECT *
--FROM
--(SELECT TOP 10 ProductID, ProductName, UnitPrice
--FROM Products
--ORDER BY UnitPrice) as najdro¿sze
--ORDER BY ProductName

--2.50

--SELECT OrderID, OrderDate, EmployeeID, CustomerID
--FROM Orders
--WHERE OrderID = (SELECT MAX (O.OrderID ) FROM Orders AS O)

--2.51

--SELECT YEAR (OrderDate) as rok_zamówienia, 
--COUNT (CustomerID) as liczba_klientow
--FROM Orders 
--GROUP BY YEAR (OrderDate)
--HAVING COUNT (DISTINCT CustomerID) > 70

--SELECT rok_zamowienia, liczba_klientow
--FROM
--(SELECT rok_zamowienia, COUNT (DISTINCT CustomerID) as liczba_klientow
--FROM (SELECT YEAR (OrderDate) as rok_zamowienia, CustomerID 
--FROM Orders) as a
--GROUP BY rok_zamowienia) as b
--WHERE liczba_klientow > 70

----exc. 2.52
--SELECT YEAR (OrderDate) as orderyear, COUNT (*) as numorders
--FROM Orders
--GROUP BY YEAR (OrderDate) as CUR...............

-- 2.53
--SELECT CustomerID, OrderID, OrderDate, EmployeeID
--FROM Orders as a
--WHERE OrderID =
--(SELECT MAX (b.OrderID) 
--FROM Orders as b 
--WHERE b.CustomerID = a.CustomerID)

----2.54
--SELECT OrderID, OrderDate, EmployeeID, CustomerID,
--(SELECT MAX (b.OrderID) 
--FROM Orders as b
--WHERE b.OrderID < a.OrderID and b.CustomerID = a.CustomerID) as ID_poprz_zam
--FROM Orders as a
--ORDER BY OrderID

----2.55
--SELECT OrderID, OrderDate, EmployeeID, CustomerID
--FROM Orders
--WHERE OrderDate = (SELECT MAX (OrderDate) FROM Orders)

----2.56
--SELECT CustomerID, OrderDate, OrderID,
--DATEDIFF (Day, 
--(SELECT TOP (1) b.OrderDate 
--FROM Orders as b
--WHERE b.CustomerID = a.CustomerID
--AND (b.OrderDate = a.OrderDate
--AND b.OrderID < a.OrderID
--OR b.OrderDate < a.OrderDate)
--ORDER BY b.OrderDate DESC , b.OrderID DESC), OrderDate) as diff
--FROM Orders as a
--ORDER BY CustomerID, OrderDate, OrderID

----exc. 2.57
--SELECT CustomerID
--FROM Orders
--GROUP BY CustomerID 
--HAVING COUNT (DISTINCT EmployeeID) = 9


----exc. 2.58
--SELECT *
--FROM Person.Person
--WHERE BusinessEntityID in 
--(SELECT TOP 10 MAX (BusinessEntityID)
--FROM Person.Person 
--GROUP BY FirstName
--ORDER BY COUNT (*) DESC)
--ORDER BY BusinessEntityID

--2.59
--SELECT b.CategoryID, min (b.UnitPrice), as cenamin, max (b.UnitPrice) as cenamaks, 
--(SELECT TOP 1 ProductName FROM dbo.Products a
--WHERE a.UnitPrice = min (b.UnitPrice) AND a.CategoryID = b.CategoryID) as nazwamin,
--SELECT TOP 1 ProductName FROM dbo.Products a
--WHERE a.UnitPrice = max (b.UnitPrice) AND a.CategoryID = b.CategoryID) as nazwamaks
--FROM dbo.Products b
--GROUP BY CategoryID

--2.60
--SELECT ProductName, UnitPrice
--FROM dbo.Products
--WHERE UnitPrice > (SELECT AVG (UnitPrice) FROM dbo.Products)

--2.61
--SELECT TOP 5 *
--FROM Employees

--SELECT DATEDIFF (YEAR, BirthDate, GETDATE ()) as age, *
--FROM Employees
--WHERE DATEDIFF (YEAR, BirthDate, GETDATE ()) <
--(SELECT AVG (DATEDIFF (YEAR, BirthDate, GETDATE ())) as age_avg
--FROM Employees)

--2.62
--SELECT ProductName, ProductID, UnitPrice
--FROM dbo.Products
--WHERE UnitPrice > (SELECT AVG (UnitPrice) FROM dbo.Products)

----2.63
--SELECT a.OrderID, a.*
--FROM dbo.Orders a
--JOIN
--(SELECT b.CustomerID, MAX (b.OrderDate) as datamax
--FROM dbo.Orders b
--GROUP BY b.CustomerID) c
--ON a.CustomerID = c.CustomerID
--AND
--c.datamax = a.OrderDate

--2.64
--SELECT OrderID
--FROM Orders
--WHERE EmployeeID IN 
--(SELECT E.EmployeeID
--FROM Employees AS E
--WHERE LastName LIKE 'D%')

--2.65
--SELECT OrderID, CustomerID, EmployeeID
--FROM dbo.Orders
--WHERE CustomerID in (SELECT CustomerID FROM dbo.Customers WHERE Country = 'USA')
--AND EmployeeID in (SELECT EmployeeID FROM dbo.Employees WHERE Title = 'Sales Representative')
--ORDER BY CustomerID, OrderID

--2.66
--SELECT CustomerID, MIN (OrderID) as pierwsze_zamow, MAX (OrderID) as ostatnie_zamow
--FROM dbo.Orders
--GROUP BY CustomerID
--HAVING CustomerID in (SELECT CustomerID FROM dbo.Customers WHERE Country = 'Germany')
--ORDER BY CustomerID

----2.67
--SELECT OrderID, OrderDate, CustomerID, EmployeeID
--FROM Orders
--WHERE OrderDate IN 
--(SELECT MAX (OrderDate)
--FROM Orders
--GROUP BY YEAR (OrderDate), MONTH (OrderDate))

--2.68
--SELECT EmployeeID, FirstName, LastName
--FROM Employees
--WHERE EmployeeID NOT IN 
--(SELECT O.EmployeeID
--FROM Orders AS O
--WHERE O.OrderDate >= '19980501')

--2.69
--SELECT Country
--FROM Customers
--WHERE Country NOT IN
--(SELECT E.Country FROM Employees as E)

--2.70
--SELECT CustomerID
--FROM Customers
--WHERE YEAR (OrderDate) = 1997
--EXCEPT
--SELECT CustomerID
--FROM Orders
--WHERE YEAR (OrderDate) = 1998

--2.71
--SELECT CustomerID, Companyname
--FROM Customers AS C
--WHERE Country = 'Spain'
--AND EXISTS 
--(SELECT * FROM Orders as O
--WHERE O.CustomerID = C.CustomerID)

--2.72
--SELECT *
--FROM Customers 
--WHERE CustomerID IN
--(SELECT CustomerID
--FROM [Order Details] a
--JOIN Orders b
--ON a.OrderID = b.OrderID
--WHERE a.ProductID = 12)

--2.73
--SELECT CustomerID, CompanyName
--FROM Customers AS C
--WHERE EXISTS
--(SELECT *
--FROM Orders AS O
--WHERE O.CustomerID = C.CustomerID)
--
--2.74
--SELECT EmployeeID, City
--FROM Employees as A
--WHERE EXISTS 
--(SELECT EmployeeID, City FROM Orders as B
--WHERE a.City = b.ShipCity
--AND a.EmployeeID = b.EmployeeID)

--2.75
--SELECT DISTINCT O.CustomerID
--FROM dbo.[Order Details] AS OD
--JOIN dbo.Orders as O
--ON OD.OrderID = O.OrderID
--WHERE OD.ProductID = 1
--AND EXISTS 
--(SELECT *
--FROM dbo.[Order Details] OD2 
--JOIN dbo.Orders O2
--ON OD2.OrderID = O2.OrderID
--WHERE O.CustomerID = O2.CustomerID
--AND OD2.ProductID = 55)

--2.76
--SELECT COUNT (*) as calosc, 
--(SELECT COUNT (*)
--FROM Orders
--WHERE MONTH (OrderDate) = 12 AND DAY (OrderDate) BETWEEN 1 AND 23 AS SWIATECZNE,
--100.0* (SELECT COUNT (*))
--FROM Orders
--WHERE MONTH (OrderDate) = 12 AND DAY (OrderDate) BETWEEN 1 AND 23 / COUNT (*) AS Procent
--FROM Orders


----2.77
--SELECT SUM (ilosc_zamowien) as ³¹czna_ilosc_zamowien
--FROM 
--(SELECT TOP 2 COUNT (CustomerID) as ilosc_zamowien
--FROM Orders
--GROUP BY CustomerID
--ORDER BY COUNT (CustomerID) DESC) AS podzapytanie

--2.78
--SELECT *
--FROM (SELECT TOP 1 [SalesOrderID] from Sales.SalesOrderHeader ORDER BY OrderDate) as a
--UNION ALL
--SELECT * 
--FROM (SELECT TOP 1 [SalesOrderID] from Sales.SalesOrderHeader ORDER BY OrderDate desc ) as b

----2.79
--SELECT SQ.GRUPA AS GRUPA, 
--COUNT (*) AS LICZBA_PRACOWNIKOW
--FROM 
--(SELECT YEAR (E.HireDate) as rok, 
--CASE 
--WHEN YEAR (E.HireDate) < 2000
--THEN '1.Zatrudnieni przed 2000'
--WHEN YEAR (E.HireDate) >= 2000 AND YEAR (E.HireDate) <= 2005
--THEN '2. Zatrudnieni przed 2005'
--WHEN YEAR (E.HireDate) > 2005
--THEN '3. Zatrudnieni po 2005'
--END) AS GRUPA
--FROM HumanResources.Employee E) as SQ
--GROUP BY SQ.GRUPA
--ORDER BY 1

--2.80
--SELECT YEAR (OrderDate) as rok, DATEPART (QQ, OrderDate) as kwartal, COUNT (*) AS orderqty
--FROM Orders
--WHERE YEAR (OrderDate) BETWEEN 1997 AND 1998
--GROUP BY ROLLUP (YEAR (OrderDate), DATEPART (qq, OrderDate))

--2.84 - funkcje okienkowe
--SELECT OrderID, ProductID,
--SUM (UnitPrice*Quantity) OVER (PARTITION BY OrderID) as towar_wartosc,
--SUM (UnitPrice*Quantity) OVER (PARTITION BY OrderID ORDER BY ProductID) as towar_wartosc_naratajaco
--FROM [Order Details]

--2.85
--SELECT PurchaseOrderID, ProductID, OrderQty, 
--SUM (OrderQty) OVER (PARTITION BY PurchaseOrderID) as suma,
--AVG (OrderQty) OVER (PARTITION BY PurchaseOrderID) as srednia,
--COUNT (*) OVER (PARTITION BY PurchaseOrderID) as licznosc,
--MIN (OrderQty) OVER (PARTITION BY PurchaseOrderID) as min_,
--MAX (OrderQty) OVER (PARTITION BY PurchaseOrderID) as MAX_
--FROM Purchasing.PurchaseOrderDetail
--ORDER BY PurchaseOrderID

--2.86
--SELECT 
--Name nazwa, 
--ListPrice,
--RANK() OVER (ORDER BY ListPrice DESC) AS ra,
--DENSE_RANK () OVER (ORDER BY ListPrice DESC) as dense_ra
--FROM Production.Product

--2.87
--SELECT BusinessEntityID, FirstName, LastName,
--pre + IIF ([rank] = 1, '', convert (varchar, [rank])) + post as email 
--FROM 
--(SELECT 
--BusinessEntityID, 
--LOWER (FirstName) + '.' + LOWER (LastName) as pre,
--'avendi.edu.pl' as post,
--RANK () OVER (PARTITION BY FirstName, LastName ORDER BY BusinessEntityID) as [rank],
--FirstName, LastName
--FROM Person.Person) as a
--ORDER BY BusinessEntityID

--SELECT
-- BusinessEntityID, FirstName, LastName,
-- pre + IIF([rank] = 1, '', convert(varchar, [rank])) + post as email
--FROM
--(SELECT
-- BusinessEntityID,
-- LOWER(FirstName)+'.' + LOWER(LastName) as pre,
-- '@avendi.edu.pl' as post,
-- RANK() OVER(PARTITION BY FirstName, LastName ORDER BY BusinessEntityID) AS [rank],
-- FirstName, LastName
--FROM Person.Person) as a
--ORDER BY BusinessEntityID;--2.88--SELECT EmployeeID,--COUNT (CASE WHEN orderyear = 1996 THEN orderyear END) as liczba_1996,--COUNT (CASE WHEN orderyear = 1997 THEN orderyear END) as liczba_1997,--COUNT (CASE WHEN orderyear = 1998 THEN orderyear END) as liczba_1998--FROM (SELECT EmployeeID, YEAR (orderdate) AS orderyear--FROM dbo.Orders) as D--GROUP BY EmployeeID;--SELECT EmployeeID,
--COUNT(CASE WHEN orderyear = 1996 THEN orderyear END) AS liczba_1996,
--COUNT(CASE WHEN orderyear = 1997 THEN orderyear END) AS liczba_1997,
--COUNT(CASE WHEN orderyear = 1998 THEN orderyear END) AS liczba_1998
--FROM (SELECT EmployeeID, YEAR(orderdate) AS orderyear
--FROM dbo.Orders) AS D
--GROUP BY EmployeeID;--2.89--SELECT CustomerID, Region--FROM Customers--ORDER BY--CASE WHEN region is NULL THEN 1--ELSE 0--END, --Region----2.90--SELECT--CASE--WHEN DATEDIFF (year, BirthDate, GETDATE()) < 35 THEN 'MLODY'--WHEN DATEDIFF (year, BirthDate, GETDATE()) < 46 THEN 'SREDNI'--ELSE 'EMERYT'--END as Grupa,--COUNT (*)--FROM HumanResources.Employee--GROUP BY --CASE --WHEN DATEDIFF (year, BirthDate, GETDATE()) < 35 THEN 'MLODY'--WHEN DATEDIFF (year, BirthDate, GETDATE()) < 46 THEN 'SREDNI'--ELSE 'EMERYT'--END--SELECT
--CASE
-- WHEN DATEDIFF(year,BirthDate,GETDATE()) < 35 then 'mlody'
-- WHEN DATEDIFF(year,BirthDate,GETDATE()) < 46 then 'sredni'
-- ELSE 'emeryt'
--END as grupa, COUNT(*)
--FROM HumanResources.Employee
--GROUP BY
--CASE
-- WHEN DATEDIFF(year,BirthDate,GETDATE()) < 35 then 'mlody'
-- WHEN DATEDIFF(year,BirthDate,GETDATE()) < 46 then 'sredni'
-- ELSE 'emeryt'
--END;

--2.91
--SELECT *,
--CASE 
--WHEN [Group] = 'NorthAmerica' THEN SalesYTD/2
--WHEN [Group] = 'Europe' THEN SalesYTD*1.23
--ELSE SalesYTD
--END
--FROM [Sales].[SalesTerritory]

----2.92
--SELECT DISTINCT C.CustomerID, C.CompanyName,
--CASE 
--WHEN O.OrderID is not NULL THEN 'YES' ELSE 'NO'
--END as 'y/n'
--FROM Customers C
--LEFT JOIN Orders as O
--ON O.CustomerID = C.CustomerID
--AND OrderDate < '19970212'

--2.93
--SELECT YEAR (OrderDate) as y, month (OrderDate) as m
--FROM Orders a
--JOIN [Order Details] b
--ON a.OrderID = b.OrderID
--JOIN Products c
--ON b.ProductID = c.ProductID
--GROUP BY YEAR (OrderDate), month (OrderDate)
--HAVING SUM (IIF(c.ProductName = 'Chai', 1, 0)) = 0


----2.94
--CREATE VIEW Widok AS
--select * from
--[Person].[StateProvince] 
--where name like 'A%'

--ALTER VIEW Widok AS
--select * from
--[Person].[StateProvince] 
--where name like 'B%' 

----2.95
--WITH CTE AS (
--SELECT Gender, COUNT (*) as num
--FROM HumanResources.Employee
--GROUP BY Gender
--)
--SELECT Gender, num, CAST (100. * num / SUM(num) OVER () as DECIMAL (5,2)) as Pct
--FROM CTE

----2.96
--SELECT Orderyear, COUNT (DISTINCT CustomerID) as numcusts
--FROM (SELECT YEAR (orderdate) as orderyear, CustomerID
--FROM Orders) as D
--GROUP BY Orderyear

--SELECT YEAR (orderdate) as orderyear, CustomerID
--FROM Orders

--SELECT orderyear, COUNT(DISTINCT CustomerID) AS numcusts
--FROM (SELECT YEAR(orderdate) AS orderyear, CustomerID
--FROM Orders) AS D
--GROUP BY orderyear;

--2.97
--SELECT EmployeeID, MAX (Orderdate) as maksymalna_wartosc
--FROM Orders
--GROUP BY EmployeeID
--SELECT O.EmployeeID, O.OrderDate, O.OrderID, O.CustomerID
--FROM Orders as O
--JOIN (SELECT  EmployeeID, MAX (Orderdate) as maksymalna_wartosc
--FROM Orders
--GROUP BY EmployeeID) AS D
--ON O.EmployeeID = D.EmployeeID
--AND O.OrderDate = D.maksymalna_wartosc

--2.97
--SELECT OrderID, OrderDate, CustomerID, EmployeeID, ROW_NUMBER() OVER (ORDER BY orderdate, orderid) as rownum
--FROM Orders;
--WITH OrdersRN AS
--(
--SELECT orderid, orderdate, CustomerID, EmployeeID,
--ROW_NUMBER () OVER (ORDER BY Orderdate, orderID) as rownum
--FROM Orders
--)
--SELECT * FROM OrdersRN WHERE rownum BETWEEN 11 AND 20

--2.98
--UPDATE O
--SET shipcountry = C.country,
--shipregion = C.region,
--shipcity = C.city
--FROM dbo.Orders AS O
--JOIN dbo.Customers AS C
--ON O.CustomerID = C.CustomerID
--WHERE C.Country = 'UK'

----2.99
--CREATE VIEW Klienci_Germany AS
--SELECT * FROM Customers
--WHERE Country = 'Germany'

--SELECT *
--FROM Klienci_Germany 

--2.100
--SELECT t.name as TabName, c.name as ColName
--FROM sys.columns c
--INNER JOIN sys.tables t 
--on c.object_id = t.object_id
--WHERE C.name like '%price%'

--2.101
--BEGIN TRANSACTION 
--UPDATE Person.Person
--SET FirstName = N'Z£OTA'
--WHERE BusinessEntityID = 2
--UPDATE Person.Person
--SET FirstName = 'SREBRNA'
--WHERE BusinessEntityID = 4
--COMMIT TRANSACTION

----2.102
--DELETE
--FROM Person1
--WHERE BusinessEntityID not in
--(SELECT MIN (BusinessEntityID) FROM Person1 GROUP BY FirstName, LastName);

--2.111
--SELECT DISTINCT a.FirstName, a.LastName, MAX (b.PhoneNumber), MAX (c.[Name])
--FROM Person.Person a
--JOIN Person.PersonPhone b
--ON a.BusinessEntityID = b.BusinessEntityID
--JOIN Person.PhoneNumberType c
--ON b.PhoneNumberTypeID = c.PhoneNumberTypeID
--WHERE c.[Name] = 'cell'
--GROUP BY a.FirstName, a.LastName

--2.112
--SELECT a.FirstName, a.LastName, b.PhoneNumber, c.EmailAddress
--FROM Person.Person a
--LEFT JOIN Person.PersonPhone b
--ON a.BusinessEntityID = b.BusinessEntityID
--LEFT JOIN Person.EmailAddress c
--ON b.BusinessEntityID = c.BusinessEntityID

----2.113
--SELECT a.*, b.* 
--FROM Person.Person a
--LEFT JOIN Person.[Address] b
--ON a.BusinessEntityID = b.AddressID

--2.114
--SELECT a.FirstName, a.LastName, c.AddressLine1, c.City, c.PostalCode
--FROM Person.Person a
--LEFT JOIN Person.BusinessEntityAddress b
--ON a.BusinessEntityID = b.BusinessEntityID
--LEFT JOIN Person.Address c
--ON b.AddressID = c.AddressID
--WHERE a.LastName NOT IN ('Robinson', 'Patel')

----2.115
--SELECT TOP 5 b.ProductID, b.ProductName, SUM (a.Quantity) as Sprzeda¿_ca³kowita
--FROM [Order Details] a
--JOIN Products b
--ON a.ProductID = b.ProductID
--GROUP BY b.ProductID, b.ProductName
--ORDER BY SUM (a.Quantity) DESC

--2.116
--SELECT a.*, a.BusinessEntityID, b.BusinessEntityID
--FROM Person.Person a
--JOIN Sales.PersonCreditCard b
--ON a.BusinessEntityID = b.BusinessEntityID
--WHERE b.BusinessEntityID IS NULL

--2.117
--SELECT a.CustomerID, b.OrderID
--FROM Customers a
--LEFT JOIN Orders b
--ON a.CustomerID = b.CustomerID
--WHERE b.CustomerID IS NOT NULL
--ORDER BY a.CustomerID

--2.118
--SELECT a.*, b.*
--FROM Orders a
--RIGHT JOIN Employees b
--ON a.EmployeeID = b.EmployeeID
--ORDER BY a.EmployeeID

--2.119
--SELECT a.ProductID, b.ProductName, SUM (Quantity) as Sprzeda¿_ca³kowita
--FROM [Order Details] a
--JOIN Products b
--ON a.ProductID = b.ProductID
--JOIN Orders c
--ON a.OrderID = c.OrderID
--WHERE YEAR (c.OrderDate) = 1998
--GROUP BY a.ProductID, b.ProductName
--ORDER BY Sprzeda¿_ca³kowita DESC

--2.120
--SELECT d.CategoryName
--FROM [Order Details] a
--JOIN Products b
--ON a.ProductID = b.ProductID
--JOIN Orders c
--ON a.OrderID = c.OrderID
--JOIN Categories d
--ON b.CategoryID = d.CategoryID
--WHERE YEAR (c.OrderDate) = 1998
--GROUP BY d.CategoryName

--2.121
--SELECT a.ContactName as Klient1, b.ContactName as Klient2, a.City
--FROM Customers a
--JOIN Customers b
--ON a.City = b.City
--AND a.CustomerID > b.CustomerID
--ORDER BY a.City

----2.122
--SELECT FirstName, LastName, 'AdventureWorks2012'
--FROM AdventureWorks2012.Person.Person
--UNION 
--SELECT FirstName, LastName, 'Northwind'
--FROM Northwind.dbo.Employees

--2.123
--SELECT [Name], 'AdventureWorks2012'
--FROM AdventureWorks2012.Production.Product
--UNION ALL
--SELECT ProductName, 'Northwind'
--FROM Northwind.dbo.Products

--2.124
--SELECT City
--FROM Customers
--INTERSECT
--SELECT City
--FROM Employees

--2.125
--SELECT City
--FROM Customers
--EXCEPT
--SELECT City
--FROM Employees


--SELECT City
--FROM Customers
--EXCEPT
--SELECT City
--FROM Employees

--2.126
--INSERT INTO Sales.Currency (CurrencyCode, Name, ModifiedDate)
--VALUES ('GOL', 'Zloty Golden', '20230724')

--2.127
--SELECT *
--INTO #CurrencyU
--FROM Sales.Currency
--WHERE CurrencyCode LIKE 'U%'

--2.128
--SELECT *
--INTO #CurrencyP
--FROM Sales.Currency
--WHERE CurrencyCode like 'P%'
--2.129

--INSERT INTO #CurrencyP
--SELECT *
--FROM Sales.Currency

--2.130
--SELECT a.BusinessEntityID, a.FirstName, a.LastName, c.AddressLine1, c.City,c.PostalCode, d.EmailAddress, e.PhoneNumber
--INTO KlienciAllll
--FROM Person.Person a
--JOIN Person.BusinessEntityAddress b
--ON a.BusinessEntityID = b.BusinessEntityID
--JOIN Person.Address c
--ON b.AddressID = c.AddressID
--JOIN Person.EmailAddress d
--ON b.BusinessEntityID = d.BusinessEntityID
--JOIN Person.PersonPhone e
--ON d.BusinessEntityID = e.BusinessEntityID

----2.131
--DELETE FROM #CurrencyP
--WHERE CurrencyCode NOT LIKE 'P%'

----2.132
--TURNCATE TABLE #CurrencyP

--2.133
--UPDATE Person.Person
--SET LastName = 'Mordka'
--WHERE LastName LIKE 'Margheim'

--2.134
--UPDATE Sales.SalesTerritoryHistory
--SET EndDate = '20180101'
--WHERE EndDate = NULL

--2.135
--UPDATE Person.EmailAddress
--SET ModifiedDate = '20180531'

--2.136
--UPDATE a
--SET a.ModifiedDate = b.ModifiedDate
--FROM Person.Person a
--JOIN Person.EmailAddress B
--ON a.BusinessEntityID = b.BusinessEntityID

--2.137
--SELECT TerritoryID, [Name], SalesYTD * 1.23 as YTDPlusPodatek, SalesLastYear * 1.23 as LastYearPlusPodatek
--INTO Sprzeda¿PPPPodatekkk
--FROM Sales.SalesTerritory

--UPDATE a
--SET a.SalesYTD = b.YTDPlusPodatek,
--a.SalesLastYear = b.LastYearPlusPodatek
--FROM Sales.SalesTerritory a
--JOIN Sprzeda¿PPPPodatekkk b
--ON a.TerritoryID = b.TerritoryID

--2.138
--ALTER TABLE Person.Person
--ADD Score VARCHAR (50) NOT NULL
--GO

--UPDATE Person.Person
--SET Score = ''
--GO

--ALTER TABLE Person.Person
--ALTER COLUMN Score VARCHAR (50) NOT NULL

----2.139
--CREATE TABLE New_tables
--(ID int, 
--FirstName VARCHAR (50),
--LastName VARCHAR (50),
--Data_Zakupu date)

--2.140
--ALTER TABLE Person.Person
--DROP COLUMN Score












