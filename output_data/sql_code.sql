SELECT 
    YEAR(o.order_date) AS year,
    MONTH(o.order_date) AS month,
    SUM(oi.quantity * (oi.list_price * (1 - oi.discount))) AS total_revenue
FROM 
    BikeStores.sales.orders AS o
INNER JOIN 
    BikeStores.sales.order_items AS oi
    ON o.order_id = oi.order_id
WHERE 
    YEAR(o.order_date) = 2017
GROUP BY 
    YEAR(o.order_date),
    MONTH(o.order_date)
ORDER BY 
    month;