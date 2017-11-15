/* problem set-1 table setup */
/* submission by n.kanchanamala */
/* 15-nov-2017 */


 create table Hotel(Hotel_No char(5),Name varchar(30),City varchar(15),constraint pk_hotel primary key(Hotel_No)); 
 create table Room(Room_No char(5),Hotel_No char(5),Type char,Price decimal(7,2),constraint pk_room primary key(Room_No),constraint fk_room foreign key(Hotel_No) references Hotel(Hotel_No)); 
 create table Guest(Guest_No varchar(5),Name varchar (40),City varchar(20),constraint pk_guest primary key(Guest_No)); 
 create table Booking(Hotel_No char(5),Guest_No varchar(5),Date_From date,Date_To date,Room_NO char(5),constraint fk1_booking foreign key(Hotel_No) references Hotel(Hotel_No),constraint fk2_booking foreign key(Guest_No) references Guest(Guest_No),constraint fk3_booking foreign key(Room_No) references Room(Room_No)); 
 
 
 
 
 
 
 
 
 insert into Hotel values('H111','Empire Hotel','New York'); 
 insert into Hotel values('H235','Park Place','New York'); 
 insert into Hotel values('H432','Brownstone Hotel','Toronto'); 
 insert into Hotel values('H498','James Plaza','Toronto'); 
 insert into Hotel values('H193','Devon Hotel','Boston'); 
 insert into Hotel values('H437','Clairmont Hotel','Boston'); 
 
select *from Hotel;

HOTEL_NO     NAME          CITY

H111     Empire Hotel      New York 
H235     Park Place        New York 
H432     Brownstone Hotel  Toronto 
H498     James Plaza       Toronto 
H193     Devon Hotel       Boston 
H437     Clairmont Hotel   Boston 
 
 
 
 insert into Room values(313,'H111','S',145.00); 
 insert into Room values(412,'H111','N',145.00); 
 insert into Room values(1267,'H235','N',175.00); 
 insert into Room values(1289,'H235','N',195.00); 
 insert into Room values(876,'H432','S',124.00); 
 insert into Room values(898,'H432','S',124.00); 
 insert into Room values(345,'H498','N',160.00); 
 insert into Room values(467,'H498','N',180.00); 
 insert into Room values(1001,'H193','S',150.00); 
 insert into Room values(1201,'H193','N',175.00); 
 insert into Room values(257,'H437','N',140.00); 
 insert into Room values(223,'H437','N',155.00); 
 
 select *from Room;

ROOM_NO  HOTEL_NO TYPE PRICE
313      H111      S   145 
412      H111      N   145 
1267     H235      N   175 
1289     H235      N   195 
876      H432      S   124 
898      H432      S   124 
345      H498      N   160 
467      H498      N   180 
1001     H193      S   150 
1201     H193      N   175 
257      H437      N   140 
223      H437      N   155 

  


 
 insert into Guest values('G256','Adam Wayne','Pittsburgh'); 
 insert into Guest values('G367','Tara Cummings','Baltimore'); 
 insert into Guest values('G879','Venessa Parry','Pittsburgh'); 
 insert into Guest values('G230','Tom Hancock','Philadelphia'); 
 insert into Guest values('G467','Robert Swift','Atlanta'); 
 insert into Guest values('G190','Edward Cane','Baltimore'); 
 
 
 select * from Guest;

GUEST_NO      NAME            CITY
G256      Adam Wayne     Pittsburgh 
G367     Tara Cummings   Baltimore 
G879     Venessa Parry   Pittsburgh 
G230     Tom Hancock     Philadelphia 
G467     Robert Swift    Atlanta 
G190     Edward Cane     Baltimore 

 
 
 
 insert into Booking values('H111','G256','10-AUG-99','15-AUG-99',412); 
 insert into Booking values('H111','G367','18-aug-99','21-aug-99',412); 
 insert into Booking values('H235','G879','05-sep-99','12-sep-99',1267); 
 insert into Booking values('H498','G230','15-sep-99','18-sep-99',467); 
 insert into Booking values('H498','G256','30-nov-99','02-dec-99',345); 
 insert into Booking values('H498','G467','03-nov-99','05-nov-99',345); 
 insert into Booking values('H193','G190','15-nov-99','19-nov-99',1001); 
 insert into Booking values('H193','G367','12-sep-99','14-sep-99',1001); 
 insert into Booking values('H193','G367','01-oct-99','06-oct-99',1201); 
 insert into Booking values('H437','G190','04-oct-99','06-oct-99',223); 
 insert into Booking values('H437','G879','14-sep-99','17-sep-99',223); 
 
 select *from Booking;


HOTEL_NO GUEST_NO       DATE_FROM          DATE_TO           ROOM_NO
H111      G256     1999-08-10T00:00:00Z 1999-08-15T00:00:00Z  412  
H111      G367     1999-08-18T00:00:00Z 1999-08-21T00:00:00Z  412  
H235      G879     1999-09-05T00:00:00Z 1999-09-12T00:00:00Z  1267  
H498      G230     1999-09-15T00:00:00Z 1999-09-18T00:00:00Z  467  
H498      G256     1999-11-30T00:00:00Z 1999-12-02T00:00:00Z  345  
H498      G467     1999-11-03T00:00:00Z 1999-11-05T00:00:00Z  345  
H193      G190     1999-11-15T00:00:00Z 1999-11-19T00:00:00Z  1001  
H193      G367     1999-09-12T00:00:00Z 1999-09-14T00:00:00Z  1001  
H193      G367     1999-10-01T00:00:00Z 1999-10-06T00:00:00Z  1201  
H437      G190     1999-10-04T00:00:00Z 1999-10-06T00:00:00Z  223  
H437      G879     1999-09-14T00:00:00Z 1999-09-17T00:00:00Z  223  

 
 
