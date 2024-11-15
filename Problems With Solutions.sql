-- 1. Retrieve all successful bookings:

	Select * from booking where Booking_Status='Success';

-- 2. Find the average ride distance for each vehicle type:
	
    select Vehicle_Type,avg(Ride_Distance) as avg_distance from booking 
				group by Vehicle_Type;

-- 3. Get the total number of canceled rides by customers:
	select count(*) as total_count from booking where Booking_status = 'Canceled by Customer';

-- 4.List the top 5 customers who booked the highest number of rides:
	
    Select Customer_ID,count(Booking_ID) as numbers from booking group by Customer_ID order by numbers desc limit 5;
 
-- 5.Get the number of rides canceled by drivers due to personal and car-related issues:
	
    Select count(*) as total from booking where Canceled_Rides_by_Driver='Personal & Car related issue';
 
-- 6.Find the maximum and minimum driver ratings for Prime Sedan bookings:
	
    Select max(Driver_ratings),min(driver_ratings) from booking where vehicle_type='Prime sedan';
    
-- 7. Retrieve all rides where payment was made using UPI:
	
	select * from booking where Payment_Method='UPI'; 
        
-- 8. Find the average customer rating per vehicle type:

	Select Vehicle_Type, avg(Customer_rating) as avg_rating from booking group by Vehicle_Type;

-- 9. Calculate the total booking value of rides completed successfully:

	select sum(booking_value)as total_value from booking where Booking_Status='Success';

-- 10. List all incomplete rides along with the reason:
	
    select Incomplete_Rides_Reason from booking where Incomplete_Rides="Yes";
