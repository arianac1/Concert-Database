--create table
CREATE TABLE concerts(
id INTEGER PRIMARY KEY,
band_name VARCHAR2(50 CHAR),
venue_name VARCHAR2(50 CHAR),
show_date  DATE
);
--populate table
INSERT INTO concerts (id,band_name, venue_name, show_date)
VALUES (1,'New Politics','Irving Plaza','25-Nov-2014');

INSERT INTO concerts (id,band_name, venue_name, show_date)
VALUES (2,'Three Days Grace', 'Highline Ballroom', '30-Mar-2015');

INSERT INTO concerts(id,band_name, venue_name, show_date)
VALUES (3,'The Wombats','Rough Trade','26-Apr-2015');

INSERT INTO concerts (id,band_name, venue_name, show_date)
VALUES (4,'Panic! at the Disco','La Possion Rougue','14-Jan-2016');

INSERT INTO concerts (id,band_name, venue_name, show_date)
VALUES (5,'Weezer','Rough Trade', '1-Apr-2016');
       
INSERT INTO concerts (id,band_name, venue_name, show_date)
VALUES (6,'Panic! at the Disco', 'Jones Beach','3-Jun-2016');

INSERT INTO concerts (id,band_name, venue_name, show_date)
VALUES (7,'Good Charlotte','iHeart Radio Theater','15-Jul-2016');
       
INSERT INTO concerts (id,band_name, venue_name, show_date)
VALUES (8,'Death Spells','Bowery Electric','17-Aug-2016');

INSERT INTO concerts (id,band_name, venue_name, show_date)
VALUES (9,'AFI','Terminal 5','3-Feb-2017');

INSERT INTO concerts (id,band_name, venue_name, show_date)
VALUES (10,'Panic! at the Disco','Madison Square Garden','2-Mar-2017');

INSERT INTO concerts (id,band_name, venue_name, show_date)
VALUES (11,'Green Day','Barclays Center','15-Mar-2017');

INSERT INTO concerts (id,band_name, venue_name, show_date)
VALUES (12,'Enter Shikari','Irving Plaza','23-Mar-2017');

INSERT INTO concerts (id,band_name, venue_name, show_date)
VALUES (13,'Frank Iero and The Patience','Music Hall of Williamsburg','18-Apr-2017');

INSERT INTO concerts (id,band_name, venue_name, show_date)
VALUES (14,'Rise Against','House of Vans','24-Apr-2017');

INSERT INTO concerts (id,band_name, venue_name, show_date)
VALUES (15,'311 and New Politics','Manhattan Center','11-Jul-2017');

INSERT INTO concerts (id,band_name, venue_name, show_date)
VALUES (16,'Good Charlott and 3OH3','Webster Hall','6-Aug-2017');

INSERT INTO concerts (id,band_name, venue_name, show_date)
VALUES (17,'P.O.D and Alien Ant Farm','Grammercy Theater','7-Sep-2017');

INSERT INTO concerts (id,band_name, venue_name, show_date)
VALUES (18,'Enter Shikari','Rough Trade','30-Sep-2017');

INSERT INTO concerts (id,band_name, venue_name, show_date)
VALUES (19,'Radiate','Gold Sounds','7-Nov-2017');

INSERT INTO concerts (id,band_name, venue_name, show_date)
VALUES (20,'Radiate','Grammercy Theater','13-Jan-2018');

INSERT INTO concerts (id,band_name, venue_name, show_date)
VALUES (21,'Enter Shikari','Music Hall of Williamsburg','2-Feb-2018');

INSERT INTO concerts (id,band_name, venue_name, show_date)
VALUES (22, 'Anti-Flag','Highline Ballroom','11-Feb-2018');

INSERT INTO concerts (id,band_name, venue_name, show_date)
VALUES (23,'A Day to Remember','Manhattan Center','12-Mar-2018');

INSERT INTO concerts (id,band_name, venue_name, show_date)
VALUES (24,'MGMT','Brooklyn Steel','25-Mar-2018');

INSERT INTO concerts (id,band_name, venue_name, show_date)
VALUES (25,'Radiate','Knitting Factory','4-May-2018');

INSERT INTO concerts (id,band_name, venue_name, show_date)
VALUES (26,'Summ 41','Terminal 5','12-May-2018');

INSERT INTO concerts (id,band_name, venue_name, show_date)
VALUES (27,'Panic! at the Disco','Madison Square Garden','24-Jul-2018');

INSERT INTO concerts (id,band_name, venue_name, show_date)
VALUES (28,'Warped Tour','Jones Beach','28-Jul-2018');

INSERT INTO concerts (id,band_name, venue_name, show_date)
VALUES (29,'Smashing Pumpkins','Madison Square Garden','1-Aug-2018');

INSERT INTO concerts (id,band_name, venue_name, show_date)
VALUES (30,'Good Charlotte and Sleeping W Sirens','Terminal 5','29-Oct-2018');

INSERT INTO concerts (id,band_name, venue_name, show_date)
VALUES (31,'Radiate','Gold Sounds','10-Nov-2018');

INSERT INTO concerts (id,band_name, venue_name, show_date)
VALUES (32,'Payale Royale','Grammercy Theater','12-Nov-2018');

INSERT INTO concerts (id,band_name, venue_name, show_date)
VALUES (33,'Real Friends','Irving Plaza','18-Nov-2018');

INSERT INTO concerts (id,band_name, venue_name, show_date)
VALUES (34,'3OH3 and emo nite','Irving Plaza','27-Nov-2018');

INSERT INTO concerts (id,band_name, venue_name, show_date)
VALUES (35,'Underoath and Dance Gavin Dance','Playstation Theater','5-Dec-2018');

INSERT INTO concerts (id,band_name, venue_name, show_date)
VALUES (36,'Panic! at the Disco','Barclays Center','16-Jan-2019');

INSERT INTO concerts (id,band_name, venue_name, show_date)
VALUES (37,'Bring Me the Horizon','Manhattan Center','30-Jan-2019');

INSERT INTO concerts (id,band_name, venue_name, show_date)
VALUES (38,'Blaqk Audio','Bowery Ballroom','1-Apr-2019');

INSERT INTO concerts (id,band_name, venue_name, show_date)
VALUES (39,'Movements','Irving Plaza','7-May-2019');

--shows all the concerts
       SELECT * FROM concerts ORDER BY show_date;
--shows all the panic at the disco concerts
       SELECT * FROM concerts WHERE band_name = 'Panic! at the Disco' ORDER BY show_date;
--shows all the venues that I have been to 3 or more times. It's ordered by the total number of times I went.               
       SELECT venue_name, COUNT(venue_name)AS total_num FROM concerts 
       HAVING COUNT(venue_name) > 2 
       GROUP BY venue_name
       ORDER BY total_num ;
        
        
        