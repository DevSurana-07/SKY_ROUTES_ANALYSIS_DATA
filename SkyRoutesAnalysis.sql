LOAD DATA LOCAL INFILE 'E:/R&W/Bussiness case study/SkyRoutes/AirlineRoutesData (2).csv'
INTO TABLE AirlineRoutes
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(FlightID, RouteCode, Origin, Destination, FlightDate, FlightDurationMins, 
 AircraftType, SeatsAvailable, SeatsSold, Revenue, OperationalCost);

 CREATE TABLE AirlineRoutes (
  FlightID INT PRIMARY KEY,
  RouteCode VARCHAR(10),
  Origin VARCHAR(10),
  Destination VARCHAR(10),
  FlightDate DATE,
  FlightDurationMins INT,
  AircraftType VARCHAR(10),
  SeatsAvailable INT,
  SeatsSold INT,
  Revenue DECIMAL(12,2),
  OperationalCost DECIMAL(12,2)
);

-- Perform the following queries:

-- 1. List top 10 most frequent routes based on number of flights.
SELECT RouteCode , COUNT(*) AS flight_Count 
FROM AirlineRoutes
GROUP BY RouteCode
ORDER BY flight_Count DESC
LIMIT 10;

-- 2.Calculate average revenue, cost, and profit per route.
SELECT RouteCode,
ROUND(AVG(Revenue),2) As average_revenue,
ROUND(AVG(OperationalCost),2) As average_cost,
ROUND(AVG(Revenue - OperationalCost),2) As average_profit
FROM AirlineRoutes
GROUP BY RouteCode;

-- 3.Identify underperforming routes where average profit is negative.
SELECT RouteCode,
ROUND(AVG(Revenue - OperationalCost),2) As average_profit
FROM AirlineRoutes
GROUP BY RouteCode
HAVING average_profit < 0;

-- 4.Calculate seat occupancy % for each route.
SELECT RouteCode,
ROUND(100.0 * SUM(SeatsSold)/SUM(SeatsAvailable),2) AS ocuupancy_rate
FROM AirlineRoutes
GROUP BY RouteCode;

-- 5.Extract monthly trend of profit per route.
SELECT RouteCode , MONTH(FlightDate) AS monthly_trend,
ROUND(AVG(Revenue - OperationalCost),2) AS average_profit
FROM AirlineRoutes
GROUP BY RouteCode , MONTH(FlightDate);

-- 6.Compare profitability of domestic vs international routes.
SELECT 
    CASE
        WHEN LENGTH(Origin) = 3 AND LENGTH(Destination) = 3 AND LEFT(Origin,1) = LEFT(Destination,1)
        THEN 'Domestic'
        ELSE 'International'
    END AS RouteType,
    ROUND(AVG(Revenue - OperationalCost), 2) AS AvgProfit
FROM AirlineRoutes
GROUP BY RouteType;
 
-- 7.Rank routes based on revenue per minute of flight duration.
SELECT RouteCode,
       ROUND(SUM(Revenue) / SUM(FlightDurationMins), 2) AS RevenuePerMinute
FROM AirlineRoutes
GROUP BY RouteCode
ORDER BY RevenuePerMinute DESC;



