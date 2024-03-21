
/* **2. Zoek twee logica fouten in de code en vind een oplossing. De doel van deze statement is om 3 tabelen samen te voegen.** */
SELECT b.Id,
       b.Name as Beer,
       br.Name as Brewery,
       c.Category as Category,
       b.Price,
       b.Stock,
       b.Alcohol,
       b.Version,
       b.Image
FROM thebrewerydb.beers b
         INNER JOIN thebrewerydb.brewers br ON b.BrewerId = br.Id
         INNER JOIN thebrewerydb.categories c ON b.CategoryId = c.Id;