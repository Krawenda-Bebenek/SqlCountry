SELECT o.name
FROM Country o
WHERE NOT EXISTS (
    SELECT *
    FROM City i 
    RIGHT JOIN Building b ON
    i.CityID = b.CityID
    WHERE o.CountryID = i.CountryID 
);