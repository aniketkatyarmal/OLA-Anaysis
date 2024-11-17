SELECT * FROM ola.ola;
use ola;
#1 Retrive all successful booking:
create view  successfull_booking as  select * from OLa where Booking_status="success";
select * from successfull_booking ;

 #2 find the average ride distance for each vaical type
 create view ride_distance_for_each_vahicle as
 select vehicle_type,avg(ride_distance) as avg_distance from ola group by vehicle_type;
 SELECT * FROM ride_distance_for_each_vahicle;
 
 #3 get the total canceled ride by the customer
  create view total_cancel_ride_customer as select count(*) from ola where booking_status ="canceled by customer";
  select * from total_cancel_ride_customer;
  
  #4list top 5 customer who book higest number of ride
  select customer_id,count(booking_id) as total_ride from ola group by customer_id order by total_ride desc limit 5;
 
 #5 get the number of ride cancel by drive due to personal or car related issue
create view driver_cancel_drive_by_personal_and_car_related_issue as
select count(*) from ola where  Canceled_Rides_by_Driver ='personal & car related issue';
 
 select * from  driver_cancel_drive_by_personal_and_car_related_issue;
 
 #6. Find the maximum and minimum driver ratings for Prime Sedan bookings:

Create View Max_Min_Driver_Rating As SELECT MAX(Driver_Ratings) as max_rating, MIN (Driver_Ratings) as min_rating FROM ola WHERE Vehicle_Type = 'Prime Sedan';

#7. Retrieve all rides where payment was made using UPI:

Create View UPI_Payment As SELECT * FROM ola WHERE Payment_Method = 'UPI';

#8. Find the average customer rating per vehicle type:

SELECT Vehicle_Type, AVG (Customer_Rating) as avg_customer_rating FROM ola GROUP BY  Vehicle_Type ;
 
 #9. Calculate the total booking value of rides completed successfully:

Select * from total_successful_ride_value;

#10. List all incomplete rides along with the reason:

 Select * from Incomplete_Rides_Reason;
