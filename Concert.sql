--create table
CREATE TABLE concerts(
id CHAR(2)  PRIMARY KEY NOT NULL ,
band_name VARCHAR(50 ),
venue_name VARCHAR(50 ),
show_date  DATE
);
--populate table
INSERT INTO concerts
   (id,band_name, venue_name, show_date)
VALUES (1,'New Politics','Irving Plaza','25-Nov-2014'),
 (2,'Three Days Grace', 'Highline Ballroom', '30-Mar-2015'),
 (3,'The Wombats','Rough Trade','26-Apr-2015'),
 (4,'Panic! at the Disco','La Possion Rougue','14-Jan-2016'),
 (5,'Weezer','Rough Trade', '1-Apr-2016'),
 (6,'Panic! at the Disco', 'Jones Beach','3-Jun-2016'),
 (7,'Good Charlotte','iHeart Radio Theater','15-Jul-2016'),
 (8,'Death Spells','Bowery Electric','17-Aug-2016'),
 (9,'AFI','Terminal 5','3-Feb-2017'),
 (10,'Panic! at the Disco','Madison Square Garden','2-Mar-2017'),
 (11,'Green Day','Barclays Center','15-Mar-2017'),
 (12,'Enter Shikari','Irving Plaza','23-Mar-2017'),
 (13,'Frank Iero and The Patience','Music Hall of Williamsburg','18-Apr-2017'),
 (14,'Rise Against','House of Vans','24-Apr-2017'),
 (15,'311','Manhattan Center','11-Jul-2017'),
 (16,'Good Charlotte','Webster Hall','6-Aug-2017'),
 (17,'P.O.D','Grammercy Theater','7-Sep-2017'),
 (18,'Enter Shikari','Rough Trade','30-Sep-2017'),
 (19,'Radiate','Gold Sounds','7-Nov-2017'),
 (20,'Radiate','Grammercy Theater','13-Jan-2018'),
 (21,'Enter Shikari','Music Hall of Williamsburg','2-Feb-2018'),
 (22, 'Anti-Flag','Highline Ballroom','11-Feb-2018'),
 (23,'A Day to Remember','Manhattan Center','12-Mar-2018'),
 (24,'MGMT','Brooklyn Steel','25-Mar-2018'),
 (25,'Radiate','Knitting Factory','4-May-2018'),
 (26,'Summ 41','Terminal 5','12-May-2018'),
 (27,'Panic! at the Disco','Madison Square Garden','24-Jul-2018'),
 (28,'Warped Tour','Jones Beach','28-Jul-2018'),
 (29,'Smashing Pumpkins','Madison Square Garden','1-Aug-2018'),
 (30,'Good Charlotte','Terminal 5','29-Oct-2018'),
 (31,'Radiate','Gold Sounds','10-Nov-2018'),
 (32,'Payale Royale','Grammercy Theater','12-Nov-2018'),
 (33,'Real Friends','Irving Plaza','18-Nov-2018'),
 (34,'3OH3','Irving Plaza','27-Nov-2018'),
 (35,'Underoath','Playstation Theater','5-Dec-2018'),
 (36,'Panic! at the Disco','Barclays Center','16-Jan-2019'),
 (37,'Bring Me the Horizon','Manhattan Center','30-Jan-2019'),
 (38,'Blaqk Audio','Bowery Ballroom','1-Apr-2019'),
 (39,'Movements','Irving Plaza','7-May-2019'),
 (40,'Warped Tour', 'Atlantic City Beach', '29-Jun-2019'),
 (41,'Papa Roach', 'Pier 17', '11-Aug-2019'),
 (42,'Radiate', 'Knitting Factory ', '8-Sept-2019'),
 (43,'Blink-182', 'Barclays Center', '20-Sept-2019'),
 (44,'Enter Shikari', 'Bowery Ballroom', '30-Sept-2019'),
 (45,'Ice Nine Kills', 'Webster Hall', '1-Dec-2019'),
 (46,'The Used', 'Grammercy Theater', '11-Feb-2020');

--shows all the concerts
       SELECT * FROM concerts ORDER BY id;
--shows all the panic at the disco concerts
       SELECT * FROM concerts
        WHERE band_name = 'Panic! at the Disco' ORDER BY show_date;

        SELECT count(venue_name) AS 'count'From concerts;
--shows all the venues that I have been to 3 or more times. It's ordered by the total number of times I went.               
       SELECT venue_name, count(*) FROM concerts GROUP BY venue_name HAVING
       COUNT(*) > 2;


