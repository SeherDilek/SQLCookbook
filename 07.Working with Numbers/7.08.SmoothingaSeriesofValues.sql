SELECT 
    date1, 
    sales,
    LAG(sales, 1) OVER (ORDER BY date1) AS salesLagOne,
    LAG(sales, 2) OVER (ORDER BY date1) AS salesLagTwo,
    (
        sales +
        LAG(sales, 1) OVER (ORDER BY date1) +
        LAG(sales, 2) OVER (ORDER BY date1)
    ) / 3 AS MovingAverage
FROM SalesData;