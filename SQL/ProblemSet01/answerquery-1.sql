/*problem set1,november-15-2017*/
/* n.kanchanamala */

/*1. List full details of all hotels.*/
 
 select * from Hotel;
  
/* Record Count: 6;*/
 
 
/*2. List full details of all hotels in New York. */
 
 select * from Hotel where City='New York';

/*Record Count: 2;*/
 
 
 /*3. List the names and cities of all guests, ordered according to their cities.*/ 
 
 select Name,City from Guest order by City;
 
/*Record Count: 6;*/

 
 /*4. List all details for non-smoking rooms in ascending order of price.*/
 
 select * from Room where Type ='N' order by price;
 
/*Record Count: 8;*/

 
 /*5. List the number of hotels there are.*/
 
 select count(Hotel_No) as "No. of Hotels" from Hotel;
 
/*Record Count: 1;*/

 
 /*6.List the cities in which guests live. Each city should be listed only once.*/
 
 select distinct(City) as "Cities in which People Live" from Guest;

/*Record Count: 4; */
 
 
 /*7. List the average price of a room.*/
 
 select Avg(Price) as "Average Price" from Room;
 
/*Record Count: 12;*/ 


 /*8.List hotel names, their room numbers, and the type of that room.*/
 
 select Name,Room_No,Type from Room r join Hotel h on r.Hotel_No=h.Hotel_No;
 
/*Record Count: 12;*/


 /*9. List the hotel names, booking dates, and room numbers for all hotels in New York.*/ 
 
 
 select name,date_from,date_to,room_no from booking b join hotel h on b.hotel_no=h.hotel_no where city='New York';
 
 /*Record Count: 3;*/

 
 /*10.  What is the number of bookings that started in the month of September?*/ 
 
  select count(guest_no) as sep_booking from booking
 
 where extract(month from date_from)=9;
 
/*Record Count: 1*/
 
 
 /*11.  List the names and cities of guests who began a stay in New York in August.*/ 
 
 select g.Name,g.City from guest g  join booking b on
 
 g.guest_No=b.guest_No inner join Hotel h on
 
 h.Hotel_no=b.Hotel_No where h.City='New York' and 
 
 EXTRACT(month FROM b.Date_From)=8; 
 
/*Record Count: 2; */ 


  /*12.  List the hotel names and room numbers of any hotel rooms that have not been booked.*/  

 select h.name,s.room_no from hotel h inner join (select room_no,hotel_no from room where room_no not in(select room_no from booking)) s on 
 h.hotel_no=s.hotel_no; 


/* Record Count: 5;*/
 
  /*13.  List the hotel name and city of the hotel with the highest priced room */

  select Name,City from Hotel join Room on Hotel.Hotel_No=Room.Hotel_no where Price=(select MAX(Rrice) from Room);

/*Record Count: 1;*/  


/*14.  List hotel names, room numbers, cities, and prices for hotels that have rooms with prices lower than the lowest priced room in a Boston hotel. */
  
  select h.Name,h.City,r.Room_no,r.Price from Hotel h inner join Room r on h.Hotel_No=r.Hotel_No
  where r.Price<
  (select MIN(r.Price) from Room r inner join Hotel h on h.Hotel_No=r.Hotel_No where h.City='Boston');
 
/*Record Count: 2;*/ 


 /*15.  List the average price of a room grouped by city.*/
 
 select avg(price) from room r join 
 
 hotel h on r.hotel_no=h.hotel_no group by h.city; 

/*Record Count: 3;*/












 


