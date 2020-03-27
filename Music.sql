query (1)
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

SELECT SUM(i.quantity) , t.name
  FROM invoiceline AS i
   JOIN track AS t
   ON t.trackid = i.trackid
   group by t.name
      order by SUM(i.quantity) DESC
   LIMIT 10
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
QUERY (2)
///////////////////////////////////////////
SELECT SUM(i.total) SUM_INVOICE_TOTAL, c.country

FROM invoice AS i

JOIN customer AS c

 ON i.customerid = c.customerid
  GROUP BY c.country
   ORDER BY SUM(i.total) DESC
    LIMIT 10 ;

///////////////////////////////////////////
( 3 )
SELECT c.city,
	AVG(i.total) Average
    FROM invoice AS i
     JOIN Customer  AS c
      ON c.CustomerID = i.CustomerId
       GROUP BY c.city
        ORDER BY AVG(i.total)  DESC
         LIMIT 15 ;
///////////////////////////////////////////
( 4 )

SELECT a.name, COUNT(i.unitPrice) unitPrice
FROM Track t
JOIN  InvoiceLine AS i
ON i.TrackId = t.trackid  

JOIN Artist AS a
ON a.ArtistId = al.ArtistId

JOIN Album AS Al
ON Al.AlbumId = T.AlbumId

GROUP BY a.name
ORDER BY COUNT(i.unitPrice) DESC
LIMIT 7