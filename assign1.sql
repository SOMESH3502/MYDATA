
select CustomerID from Orders group by CustomerID
select a.CustomerID  from (select  CustomerID ,count(*) as higest  from orders group by CustomerID  having count(*)>1 order by higest desc
)orders as a

WITH HIGHEST AS 
( 
select top 3  CustomerID ,count(*) as higest  from orders group by CustomerID  having count(*)>1 order by higest desc
)
select top 3 * from HIGHEST 
SELECT * ,DENSE_RANK() OVER (ORDER BY higest DESC ) AS DENSERANK FROM HIGHEST

SELECT * FROM HIGHEST WHERE DENSERANK=1 OR DENSERANK=2 