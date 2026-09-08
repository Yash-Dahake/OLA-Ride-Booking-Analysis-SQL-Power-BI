DROP TABLE IF EXISTS bookings;

CREATE TABLE bookings (
    date DATE,
    time TIME,
    booking_id VARCHAR(50) PRIMARY KEY,
    booking_status VARCHAR(50),
    customer_id VARCHAR(50),
    vehicle_type VARCHAR(50),
    pickup_location VARCHAR(100),
    drop_location VARCHAR(100),
    v_tat NUMERIC,
    c_tat NUMERIC,
    canceled_rides_by_customer VARCHAR(255),
    canceled_rides_by_driver VARCHAR(255),
    incomplete_rides VARCHAR(10),
    incomplete_rides_reason VARCHAR(255),
    booking_value NUMERIC(10, 2),
    payment_method VARCHAR(50),
    ride_distance NUMERIC(10, 2),
    driver_ratings NUMERIC(3, 2),
    customer_rating NUMERIC(3, 2),
    vehicle_images TEXT
);

--import dataset
SET datestyle = 'DMY';

COPY bookings FROM 'C:/CSV/Bookings-100000-Rows.csv' 
WITH (
    FORMAT csv, 
    HEADER true, 
    DELIMITER ',', 
    NULL 'null'
);
Select * from bookings; 

SELECT COUNT(*) FROM bookings;

SELECT 
    COUNT(*) FILTER (WHERE v_tat IS NULL) AS null_v_tat_count,
    COUNT(*) FILTER (WHERE canceled_rides_by_driver IS NULL) AS null_driver_cancel_count
FROM bookings;

ALTER TABLE bookings
DROP COLUMN vehicle_images;  --extra column 


SELECT column_name
FROM information_schema.columns
WHERE table_name = 'bookings'
ORDER BY ordinal_position;


-- Business Problem Analysis
SELECT * FROM bookings;

--1. Retrieve all successful bookings:
Create view Successful_Bookings as
SELECT * FROM bookings
where booking_status = 'Success';    --63967

SELECT * FROM Successful_Bookings ;

--2. Find the average ride distance for each vehicle type:
Create View avg_ride_distance_by_vehicle As
SELECT * FROM bookings
where booking_status = 'Success';    --63967


--3. Get the total number of cancelled rides by customers:

DROP view if exists cancelled_rides_by_customers;
Create view cancelled_rides_by_customers as
SELECT COUNT(*) FROM bookings
where booking_status = 'Canceled by Customer';    --10499

 SELECT * FROM cancelled_rides_by_customers;

--4. List the top 5 customers who booked the highest number of rides:
Create View Top_5_Customers As
SELECT customer_id,
	COUNT(booking_id) AS total_rider
	FROM bookings
GROUP BY customer_id
ORDER BY 2 DESC 
limit 5;


--5. Get the number of rides cancelled by drivers due to personal and car-related issues:
Create View Rides_cancelled_by_Drivers_P_C_Issues As
SELECT COUNT(*) FROM bookings
where canceled_rides_by_driver= 'Personal & Car related issue';


--6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
Create View Max_Min_Driver_Rating As
SELECT
		MAX(Driver_Ratings)as max_rating,
	   MIN(Driver_Ratings)as min_rating
	FROM bookings
WHERE vehicle_Type = 'Prime Sedan';



--7. Retrieve all rides where payment was made using UPI:
Create View UPI_Payment As
SELECT *
FROM bookings 
WHERE Payment_Method = 'UPI'

--8. Find the average customer rating per vehicle type:
Create View AVG_Cust_Rating As
SELECT Vehicle_Type, 
	ROUND(AVG(Customer_Rating),2) as avg_customer_rating
	FROM bookings
GROUP BY Vehicle_Type

--9. Calculate the total booking value of rides completed successfully:
Create View total_successful_ride_value As
SELECT SUM(Booking_value) as Total_Booking_value
	FROM bookings
WHERE Booking_Status = 'Success';

--10. List all incomplete rides along with the reason:
Create View Incomplete_Rides_Reason As
SELECT  Booking_ID, Incomplete_Rides_Reason
	FROM bookings
WHERE Incomplete_Rides='Yes';







--------------------------------------------------------------------------------------
Ans

--#1. Retrieve all successful bookings:
Select * From Successful_Bookings;


--#2. Find the average ride distance for each vehicle type:
Select * from avg_ride_distance_by_vehicle;

--#3. Get the total number of cancelled rides by customers:
Select * from cancelled_rides_by_customers;

--#4. List the top 5 customers who booked the highest number of rides:
Select * from Top_5_Customers;


--#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
Select * from Rides_cancelled_by_Drivers_P_C_Issues;

--#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
Select * from Max_Min_Driver_Rating;

--#7. Retrieve all rides where payment was made using UPI:
Select * from UPI_Payment;

--#8. Find the average customer rating per vehicle type:
Select * from AVG_Cust_Rating;

--#9. Calculate the total booking value of rides completed successfully:
Select * from total_successful_ride_value;

--#10. List all incomplete rides along with the reason:
Select * from Incomplete_Rides_Reason