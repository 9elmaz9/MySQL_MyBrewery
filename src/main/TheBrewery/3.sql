
SELECT b.Id AS Id,
       b.Name AS BeerName,
       b.BrewerId AS BrewersId,
       c.Category AS CategoryName,
       b.Price AS Price,
       b.Stock AS Stock,
       b.Alcohol AS Alcohol,
       b.Version AS Version ,
       b.Image AS Image
FROM Beers b
  INNER JOIN  Categories c ON b.CategoryID=c.Id
WHERE( c.Category = 'Alcoholvrij' OR c.Category='Light')
AND (b.Name LIKE '%J%' OR b.Name LIKE 'St%')
AND b.Alcohol <=2 ;


