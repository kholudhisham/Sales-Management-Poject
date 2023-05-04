/****** Script for SelectTopNRows command from SSMS  ******/
SELECT  c.customerkey AS [CustomerKey]
      --,[GeographyKey]
     -- ,[CustomerAlternateKey]
     -- ,[Title]
      ,c.firstname AS [FirstName]
      --,[MiddleName]
      ,c.lastname [LastName]
	  ,c.firstname +' ' + c.lastname AS [FullName]
    --  ,[NameStyle]
    --  ,[BirthDate]
    --  ,[MaritalStatus]
     -- ,[Suffix]
      ,Case c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender
     -- ,[EmailAddress]
     -- ,[YearlyIncome]
     -- ,[TotalChildren]
    --  ,[NumberChildrenAtHome]
     -- ,[EnglishEducation]
    --  ,[SpanishEducation]
     -- ,[FrenchEducation]
     -- ,[EnglishOccupation]
     -- ,[SpanishOccupation]
    --  ,[FrenchOccupation]
     -- ,[HouseOwnerFlag]
     -- ,[NumberCarsOwned]
    --  ,[AddressLine1]
    --  ,[AddressLine2]
     -- ,[Phone]
      ,c. datefirstpurchase AS [DateFirstPurchase]
     -- ,[CommuteDistance]
	 ,g.City AS CustomerCity 
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] AS c
  LEFT JOIN dbo.DimGeography AS g ON g.GeographyKey = c.GeographyKey
  --WHERE 
  --YEAR([DateFirstPurchase]) <2022 AND  YEAR([DateFirstPurchase]) >=2019
  ORDER BY c.CustomerKey 