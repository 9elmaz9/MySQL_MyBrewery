SELECT b.Id AS BierID,
       b.Name AS BierName,
       IFNULL(br.Name, 'Unknown') AS BrewerName,
       c.Category AS CategoryName,
       b.Price AS BierPrice
FROM Beers b
         LEFT JOIN Brewers br ON b.BrewerId = br.Id
         LEFT JOIN Categories c ON b.CategoryId = c.Id
WHERE br.Name = 'Boon';

