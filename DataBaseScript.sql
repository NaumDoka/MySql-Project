############################################################################################################################
######################                      FORMATO DA: DOKA NAUM                                     ######################
######################                  Matricola: 7011512    @Author: DOKA NAUM                      ######################
######################                    Script per il progetto BDSI 2019/20                         ######################
############################################################################################################################


############################################################################################################################
######################                                                                                ######################
######################              Creazione dell'istanza e popolamento delle tabelle                ######################
######################                                                                                ######################
############################################################################################################################

CREATE DATABASE IF NOT EXISTS DanceStudio;

CREATE TABLE REGION
(RegionID CHAR(1),
  RegionName VARCHAR(20),
  PRIMARY KEY (RegionID)
  )ENGINE=INNODB;

CREATE TABLE STUDIO
(StudioName VARCHAR(20),
  StudioAddress VARCHAR(20),
  StudioID CHAR(2),
  StudioEmail VARCHAR(10),
  RegionID CHAR(1),
  PRIMARY KEY (StudioID),
  FOREIGN KEY (RegionID) REFERENCES REGION(RegionID)
  )ENGINE=INNODB;

CREATE TABLE INSTRUCTOR
(InstructorFirstName VARCHAR(20),
  InstructorLastName VARCHAR(20),
  InstructorID CHAR(3),
  InstructorPhoneNumber VARCHAR(10),
  PRIMARY KEY (InstructorID)
  )ENGINE=INNODB;

CREATE TABLE DANCE
(DanceName VARCHAR(25),
  DanceType VARCHAR(15),
  DanceChoreography VARCHAR(15),
  DanceMusic VARCHAR(15),
  PRIMARY KEY (DanceName)
  )ENGINE=INNODB;

CREATE TABLE CONCERT
(ConcertType VARCHAR(20),
  ConcertAddress VARCHAR(15),
  ConcertName VARCHAR(20),
  ConcertID CHAR(3),
  PRIMARY KEY (ConcertID)
  )ENGINE=INNODB;

CREATE TABLE COMPETE
(NoOfShows INT,
  StudioID CHAR(2),
  ConcertID CHAR(3),
  PRIMARY KEY (NoOfShows, StudioID, ConcertID),
  FOREIGN KEY (StudioID) REFERENCES STUDIO(StudioID),
  FOREIGN KEY (ConcertID) REFERENCES CONCERT(ConcertID)
  )ENGINE=INNODB;

CREATE TABLE LOCATEDIN
(StudioID CHAR(2),
  RegionID CHAR(1),
  PRIMARY KEY (StudioID, RegionID),
  FOREIGN KEY (StudioID) REFERENCES STUDIO(StudioID),
  FOREIGN KEY (RegionID) REFERENCES REGION(RegionID)
  )ENGINE=INNODB;

CREATE TABLE CLIENT
(ClientID CHAR(2),
  ClientPhoneNumber VARCHAR(10),
  ClientAge INT,
  ClientFirstName VARCHAR(20),
  ClientLastName VARCHAR(20),
  InstructorID CHAR(3),
  DanceName VARCHAR(20),
  PRIMARY KEY (ClientID),
  FOREIGN KEY (InstructorID) REFERENCES INSTRUCTOR(InstructorID),
  FOREIGN KEY (DanceName) REFERENCES DANCE(DanceName)
  )ENGINE=INNODB;

CREATE TABLE DANCECLASS
(ClassName VARCHAR(20),
  ClassID CHAR(4),
  ClassPrice NUMERIC(4),
  ClassCategory VARCHAR(15),
  StudioID CHAR(2),
  InstructorID CHAR(3),
  PRIMARY KEY (ClassID),
  FOREIGN KEY (StudioID) REFERENCES STUDIO(StudioID),
  FOREIGN KEY (InstructorID) REFERENCES INSTRUCTOR(InstructorID)
  )ENGINE=INNODB; 

  
                   

INSERT INTO REGION VALUES ('1', 'Elbasan');
INSERT INTO REGION VALUES ('2', 'Durres');
INSERT INTO REGION VALUES ('3', 'Tirane');
INSERT INTO REGION VALUES ('4', 'Korce');
INSERT INTO REGION VALUES ('5', 'Shkoder');
INSERT INTO REGION VALUES ('6', 'Vlore'); 
INSERT INTO REGION VALUES ('7', 'Sarande');
INSERT INTO REGION VALUES ('8', 'Divjake');
INSERT INTO REGION VALUES ('9', 'Lac');

INSERT INTO STUDIO VALUES('Dance Plus', 'st.5maji', '11', 'ds@gmail', '2' );
INSERT INTO STUDIO VALUES('Dance Plus1', 'st.Egnatia', '12', 'ds1@gmail', '3' );
INSERT INTO STUDIO VALUES('Dance Plus2', 'st.MyslymShyri', '13', 'ds2@gmail', '1' );
INSERT INTO STUDIO VALUES('Dance Plus3', 'st.Pazari', '14', 'ds3@gmail', '5' );
INSERT INTO STUDIO VALUES('Dance Plus4', 'st.Pedonalja', '15', 'ds4@gmail', '4' );

INSERT INTO INSTRUCTOR VALUES('Ema','Kola', 'A12', '0692351234');
INSERT INTO INSTRUCTOR VALUES('Enxhi','Koduzi', 'B22', '0699291011');
INSERT INTO INSTRUCTOR VALUES('Barbi','Beqiraj', 'C23', '0699291022' );
INSERT INTO INSTRUCTOR VALUES('Krenar', 'Korca', 'D14', '0695142789');
INSERT INTO INSTRUCTOR VALUES('Artan', 'Bena', 'E54', '0692117991');
INSERT INTO INSTRUCTOR VALUES('Kejsi','Cakani', 'E33', '0698734907');
INSERT INTO INSTRUCTOR VALUES('Aldo','Kala', 'C11', '0695467889');
INSERT INTO INSTRUCTOR VALUES('Henri','Thoma', 'F45', '0696787965');
INSERT INTO INSTRUCTOR VALUES('Trevi','Myqelefi', 'V32', '0690086521');
INSERT INTO INSTRUCTOR VALUES('Ola','Karaj', 'J79', '0695587411');
INSERT INTO INSTRUCTOR VALUES('Liti','Qoku', 'K71', '0696398556');
INSERT INTO INSTRUCTOR VALUES('Doni','Hankja', 'O93', '0692233568');  
INSERT INTO INSTRUCTOR VALUES('Dorina','Hakani', 'P92', '0696212335');
INSERT INTO INSTRUCTOR VALUES('Ashli','Kera', 'L84', '0697854221');

INSERT INTO DANCE VALUES('Vallja e Tropojes', 'Folk Dance', 'Finished', 'Valle Music');
INSERT INTO DANCE VALUES('Bachada', 'Latin Dance', 'Unfinished', 'Latin Music');
INSERT INTO DANCE VALUES('Vallja e Rugoves', 'Folk Dance', 'Unfinished', 'Valle2 Music');
INSERT INTO DANCE VALUES('Merengue', 'Latin Dance', 'Finished', 'Latin3 Music');
INSERT INTO DANCE VALUES('Zumba Go', 'Zumba Dance', 'Finished', 'Zumba1 Music');
INSERT INTO DANCE VALUES('Freestyle', 'Hip-hop Dance', 'Unfinished', 'Hip-hop1 Music');
INSERT INTO DANCE VALUES('Liqeni Mjellmave', 'Ballet Dance', 'Finished', 'Ballet2 Music');
INSERT INTO DANCE VALUES('Vallja e Malsise Madhe', 'Folk Dance', 'Unfinished', 'Valle5 Music');
INSERT INTO DANCE VALUES('Vallja e Sh.Mesme', 'Folk Dance', 'Finished', 'Kenga1 Music');
INSERT INTO DANCE VALUES('Drop it', 'Hip-hop Dance', 'Unfinished', 'Free Music');
INSERT INTO DANCE VALUES('Vallja e Shamiave', 'Folk Dance', 'Finished', 'Kenga3 Music');
INSERT INTO DANCE VALUES('Elastic', 'Ballet Dance', 'Unfinished', ' 2 Music');
INSERT INTO DANCE VALUES('Vallja e Dardhareve', 'Folk Dance', 'Unfinished', '3 Music');
INSERT INTO DANCE VALUES('Cha cha cha', 'Latin Dance', 'Unfinished', ' Latin7 Music');
INSERT INTO DANCE VALUES('Feelings', 'Ballet Dance', 'Finished', '0 Music');

INSERT INTO CONCERT VALUES ('Folk Concert', 'Belesh', 'Liqenet e Dumrese', '556');
INSERT INTO CONCERT VALUES ('Hip-hop Concert', 'Prishtine', 'Shake it', '765');
INSERT INTO CONCERT VALUES ('Folk Concert', 'Struga', 'Kenga Jeho', '121');
INSERT INTO CONCERT VALUES ('Latin Concert', 'Oher', 'Il Ritmo', '900');
INSERT INTO CONCERT VALUES ('Ballet Concert', 'Gjakove', 'Express Yourself', '897');
INSERT INTO CONCERT VALUES ('Hip-hop Concert', 'Elbasan', 'Free spirit', '345');
INSERT INTO CONCERT VALUES ('Ballet Concert', 'Fier', 'The rise of the sun', '100');
INSERT INTO CONCERT VALUES ('Hip-hop Concert', 'Tirane', 'Break the rules', '299');
INSERT INTO CONCERT VALUES ('Latin Concert', 'Sarande', 'Essential', '067');
INSERT INTO CONCERT VALUES ('Folk Concert', 'Gramsh', 'Daullet', '888');
INSERT INTO CONCERT VALUES ('Zumba Concert', 'Cerrik', 'Fitness', '777');
INSERT INTO CONCERT VALUES ('Zumba Concert', 'Lac', 'Infinite summer', '263');
INSERT INTO CONCERT VALUES ('Folk Concert', 'Shkoder', 'Kalaja', '190');
INSERT INTO CONCERT VALUES ('Folk Concert', 'Vlore', 'Rilidhja', '887');
INSERT INTO CONCERT VALUES('Latin Concert', 'Peje', 'Move your feet', '666');

INSERT INTO COMPETE VALUES ('5', '11', '556');
INSERT INTO COMPETE VALUES ('7', '13', '100');
INSERT INTO COMPETE VALUES ('3', '12', '897');
INSERT INTO COMPETE VALUES ('6', '11', '299');
INSERT INTO COMPETE VALUES ('9', '14', '067');
INSERT INTO COMPETE VALUES ('4', '11', '121');
INSERT INTO COMPETE VALUES ('7', '13', '263');
INSERT INTO COMPETE VALUES ('5', '11', '666');
INSERT INTO COMPETE VALUES ('3', '15', '887');
INSERT INTO COMPETE VALUES ('2', '12', '190');
INSERT INTO COMPETE VALUES ('8', '12', '345');
INSERT INTO COMPETE VALUES ('9', '14', '765');
INSERT INTO COMPETE VALUES ('6', '11', '888');
INSERT INTO COMPETE VALUES ('1', '15', '777');
INSERT INTO COMPETE VALUES ('8', '13', '897');
INSERT INTO COMPETE VALUES ('2', '14', '900');

INSERT INTO LOCATEDIN VALUES ('11','2');
INSERT INTO LOCATEDIN VALUES ('12', '1');
INSERT INTO LOCATEDIN VALUES ('12','4');
INSERT INTO LOCATEDIN VALUES ('13', '3');
INSERT INTO LOCATEDIN VALUES ('14','5');
INSERT INTO LOCATEDIN VALUES ('15', '5');
INSERT INTO LOCATEDIN VALUES ('12','6');
INSERT INTO LOCATEDIN VALUES ('11', '7');
INSERT INTO LOCATEDIN VALUES ('14','8');
INSERT INTO LOCATEDIN VALUES ('13', '9');

INSERT INTO CLIENT VALUES('T4', '0692557886', '15', 'Aldo', 'Murrizi', 'A12', 'Vallja e Tropojes' );
INSERT INTO CLIENT VALUES('V6', '0690259663', '17', 'Erjola', 'Braho', 'B22', 'Merengue' );
INSERT INTO CLIENT VALUES('M5', '0691232554', '20', 'Tania', 'Meri', 'K71', 'Zumba Go' );
INSERT INTO CLIENT VALUES('N8', '0695742339', '21', 'Mateo', 'Lazareni', 'F45', 'Vallja e Rugoves' );
INSERT INTO CLIENT VALUES('Q2', '0692548444', '20', 'Grisilda', 'Doda', 'E54', 'Vallja e Sh.Mesme' );
INSERT INTO CLIENT VALUES('J5', '0693689547', '19', 'Stela', 'Dollaku', 'E33', 'Elastic' );
INSERT INTO CLIENT VALUES('Y8', '0691478956', '10', 'Anisa', 'Gjoni', 'D14', 'Feelings' );
INSERT INTO CLIENT VALUES('X0', '0692278654', '11', 'Samed', 'Kombi', 'O93', 'Cha cha cha' );

INSERT INTO DANCECLASS VALUES('Folk Class', '1112', '5000', 'beginners', '11', 'A12');
INSERT INTO DANCECLASS VALUES('Ballet Class', '1113', '1200', 'beginners', '12', 'B22');
INSERT INTO DANCECLASS VALUES('Hip-hop', '1114', '6500', 'amateur', '13', 'C23');
INSERT INTO DANCECLASS VALUES('Latin Class', '1115', '7500', 'amateur', '12', 'D14');
INSERT INTO DANCECLASS VALUES('Zumba Class', '1116', '5500', 'amateur', '15', 'E54');
INSERT INTO DANCECLASS VALUES('Folk Class', '1117', '9000', 'professional', '11', 'E33');
INSERT INTO DANCECLASS VALUES('Folk Class', '1119', '7000', 'professional', '11', 'K71');
INSERT INTO DANCECLASS VALUES('Zumba Class', '1110', '6000', 'beginners', '12', 'O93');
INSERT INTO DANCECLASS VALUES('Hip-hop Class', '1120', '9500', 'professional', '13', 'L84');
INSERT INTO DANCECLASS VALUES('Latin', '1121', '8500', 'beginners', '13', 'C11');
INSERT INTO DANCECLASS VALUES('Zumba Class', '1122', '6500', 'professional', '14', 'V32');
INSERT INTO DANCECLASS VALUES('Hip-hop Class', '1123', '1000', 'professional', '15', 'A12');



SELECT * FROM REGION 
ORDER BY RegionID;

SELECT * FROM STUDIO
ORDER BY StudioID;

SELECT * FROM INSTRUCTOR
ORDER BY InstructorID;

SELECT * FROM DANCE
ORDER BY DanceName;

SELECT * FROM CONCERT
ORDER BY ConcertID;

SELECT * FROM COMPETE
ORDER BY NoOfShows ;

SELECT * FROM LOCATEDIN
ORDER BY StudioID ;

SELECT * FROM CLIENT
ORDER BY ClientID ;

SELECT * FROM DANCECLASS
ORDER BY StudioID ;


############################################################################################################################
######################                                                                                ######################
######################                                 Interrogazioni                                 ######################
######################                                                                                ######################
############################################################################################################################

SELECT ClientID, ClientFirstName, ClientLastName, ClientAge, ClientPhoneNumber
FROM CLIENT, DANCE
WHERE CLIENT.DanceName=DANCE.DanceName AND DanceType='Folk Dance'
ORDER BY ClientID;


SELECT StudioName, StudioAddress, STUDIO.StudioID, StudioEmail,ConcertName
FROM STUDIO, CONCERT, COMPETE
WHERE STUDIO.StudioID=COMPETE.StudioID AND COMPETE.ConcertID=CONCERT.ConcertID
AND ConcertType IN(SELECT ConcertType
                   FROM CONCERT
                   WHERE ConcertType='Hip-hop Concert')
ORDER BY STUDIO.StudioID;


SELECT InstructorFirstName, InstructorLastName, InstructorPhoneNumber, i.InstructorID,
       ClassName, ClassPrice, ClientFirstName, ClientLastName, ClientAge, d.ClassID
FROM CLIENT c, INSTRUCTOR i, DANCECLASS d
WHERE  i.InstructorID=c.InstructorID AND i.instructorID=d.InstructorID AND ClientAge<21
GROUP BY InstructorFirstName, InstructorLastName, InstructorPhoneNumber, i.InstructorID,
         ClassName, ClassPrice, ClientFirstName, ClientLastName, ClientAge, ClassID
HAVING ClassPrice>5000
ORDER BY i.InstructorID;


SELECT DanceChoreography, DanceMusic, DANCE.DanceName, DanceType, ClientID
FROM DANCE, CLIENT
WHERE DANCE.DanceName=CLIENT.DanceName AND DanceChoreography='Finished'
ORDER BY ClientID;


SELECT DanceChoreography, DanceMusic, DANCE.DanceName, DanceType , ClientID ,ClientLastName
FROM DANCE, CLIENT
WHERE DANCE.DanceName=CLIENT.DanceName AND DanceType='Ballet Dance'
ORDER BY ClientID;


SELECT ConcertType, ConcertName, ConcertAddress, CONCERT.ConcertID,NoOfShows
FROM CONCERT, COMPETE
WHERE CONCERT.ConcertID=COMPETE.ConcertID   
GROUP BY ConcertType, ConcertName, ConcertAddress, CONCERT.ConcertID,NoOfShows
HAVING NoOfShows>2
ORDER BY  CONCERT.ConcertID;


SELECT ClassID, ClassName, ClassPrice, InstructorFirstName, INSTRUCTOR.InstructorID 
FROM DANCECLASS , INSTRUCTOR
WHERE INSTRUCTOR.InstructorID=DANCECLASS.InstructorID AND ClassPrice < (SELECT AVG(ClassPrice)
                                                                        FROM DANCECLASS)                                                                    
GROUP BY ClassID, ClassName, ClassPrice, InstructorFirstName, INSTRUCTOR.InstructorID, ClassCategory
HAVING ClassCategory='amateur';


SELECT ConcertType, ConcertName, CONCERT.ConcertID , StudioName, STUDIO.StudioID, SUM(NoOfShows)
FROM CONCERT, STUDIO, COMPETE
WHERE CONCERT.ConcertID=COMPETE.ConcertID AND COMPETE.StudioID=STUDIO.StudioID 
AND ConcertType IN(SELECT ConcertType
                    FROM CONCERT
                     WHERE ConcertType='Folk Concert')
GROUP BY ConcertType, ConcertName, CONCERT.ConcertID , StudioName, STUDIO.StudioID;


SELECT ClassCategory, case
WHEN ClassCategory = "beginners" then "beg"
WHEN ClassCategory = "amateur" then "am"
WHEN ClassCategory = "professional" then "pro"
END AS ClassCategory 
FROM DANCECLASS 
ORDER BY ClassCategory;


############################################################################################################################
######################                                                                                ######################
######################                  Procedure, Funzioni, Viste, Trigger                           ######################
######################                                                                                ######################
############################################################################################################################

DELIMITER $$
DROP PROCEDURE IF EXISTS DanceDescription $$
CREATE PROCEDURE DanceDescription(dt VARCHAR(15))
  SELECT DanceName
  FROM DANCE
  WHERE DanceType = dt $$
DELIMITER ;
CALL DanceDescription('Folk Dance');


DELIMITER $$
DROP PROCEDURE IF EXISTS DanceClassClient $$
CREATE PROCEDURE DanceClassClient(IN n varchar(20), IN c varchar(20), OUT NoShows INT)
BEGIN
  DECLARE TMP INT;
  SELECT ClientFirstName, ClientLastName, NoOfShows
  FROM CLIENT NATURAL JOIN COMPETE
  WHERE ClientFirstName = n AND ClientFirstName = c;
  SELECT SUM(NoOfShows) INTO TMP
  FROM CLIENT NATURAL JOIN COMPETE
  WHERE ClientFirstName = n AND ClientLastName = c;
SET NoShows = TMP;
END $$
DELIMITER ;
CALL DanceClassClient('Tania', 'Meri', @NoShows);
SELECT @NoShows;


DELIMITER $$
DROP PROCEDURE IF EXISTS InsertClient $$
CREATE PROCEDURE InsertClient(IN id_client char(2), IN phone_client varchar(10), IN age_client INT, IN name_client varchar(20),
IN lastn_client varchar(20), IN id_instructor char(3), IN name_dance varchar(20))
BEGIN
 DECLARE EXIT HANDLER FOR SQLSTATE '23000'
     SELECT CONCAT(current_date,': insertion refused, violazione foreign key') as Errore;
 INSERT INTO CLIENT VALUES (id_client, phone_client, age_client, name_client, lastn_client, id_instructor, name_dance);
END $$
DELIMITER ;


CREATE VIEW ViewClient as 
SELECT ClientID, ClientPhoneNumber, ClientAge, ClientFirstName, ClientLastName, InstructorID,DanceName
FROM CLIENT 
WHERE ClientAge > 8 AND ClientAge <= 20
WITH LOCAL CHECK OPTION;


DELIMITER $$
CREATE FUNCTION NumberOfCompetitions(id_studio CHAR(2), id_concert CHAR(3), y YEAR)
RETURNS INT
BEGIN 
  DECLARE num INT DEFAULT 0;
  SELECT COUNT(*) INTO num
  FROM COMPETE NATURAL JOIN STUDIO NATURAL JOIN CONCERT
  WHERE StudioID = id_studio AND ConcertID = id_concert AND YEAR(data) = y;
  RETURN num;
END $$
DELIMITER ;


DELIMITER $$
CREATE TRIGGER UpdateRegion 
BEFORE UPDATE ON REGION
FOR EACH ROW 
BEGIN
  INSERT INTO Region_log SET
  old_regionname = OLD.RegionName,
  new_regionnome = NEW.RegionName,
  old_regionid = OLD.RegionID,
  new_regionid = NEW.RegionID, 
  modificato = NOW(); 
END $$
DELIMITER ;



DROP TABLE COMPETE ;
DROP TABLE LOCATEDIN ;
DROP TABLE CONCERT ;
DROP TABLE DANCECLASS ;
DROP TABLE STUDIO ;
DROP TABLE CLIENT ;
DROP TABLE INSTRUCTOR ;
DROP TABLE DANCE ;
DROP TABLE REGION ;
