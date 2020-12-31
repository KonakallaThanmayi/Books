/**Books list**/
CREATE TABLE BOOKS(ID INTEGER PRIMARY KEY, NAME TEXT, AUTHOR TEXT,EDITION INTEGER);
INSERT INTO BOOKS VALUES(1,"Indian_Polity", "Lakshmi_Kanth", "12");
INSERT INTO BOOKS VALUES(2,"Environment", "Shankar","3");
INSERT INTO BOOKS VALUES(3,"Indian_Geography", "Majid Husian","8");
INSERT INTO BOOKS VALUES(4,"Indian_Economy", "Ramesh Singh","1");
INSERT INTO BOOKS VALUES(5,"Ancient_and_Medival_History","Ncert","15");
INSERT INTO BOOKS VALUES(6,"Girl_Power", "Neha_J", "12");
INSERT INTO BOOKS VALUES(7,"Indian_women_who_broke_all_the_rules", "Hirnandani","7");
INSERT INTO BOOKS VALUES(8,"My_Life_My_Mission", "Baba_Ramdev","9");
INSERT INTO BOOKS VALUES(9,"The_Third_Pillar", "Raghuram_Rajan","6");
INSERT INTO BOOKS VALUES(10,"Game_Changer","Shahid_Afridi","4");
INSERT INTO BOOKS VALUES(11,"Changing_India","Manmohan_Singh","2");
SELECT * FROM BOOKS;

/*aisle of the books should be added as I forgot to do it earlier*/

ALTER TABLE BOOKS ADD AISLE INTEGER DEFAULT "CHECK_THE_SECOND_HALF";
INSERT INTO BOOKS(NAME, AUTHOR, EDITION, AISLE) VALUES("Indian_Polity", "Lakshmi_Kanth", "12","24");
INSERT INTO BOOKS (NAME, AUTHOR, EDITION, AISLE)VALUES("Environment", "Shankar","3", "4");
INSERT INTO BOOKS (NAME, AUTHOR, EDITION, AISLE)VALUES("Indian_Geography", "Majid Husian","8", "8");
INSERT INTO BOOKS (NAME, AUTHOR, EDITION, AISLE)VALUES("Indian_Economy", "Ramesh Singh","1", "2");
INSERT INTO BOOKS (NAME, AUTHOR, EDITION, AISLE)VALUES("Ancient_and_Medival_History","Ncert","15","7");
INSERT INTO BOOKS (NAME, AUTHOR, EDITION, AISLE)VALUES("Girl_Power", "Neha_J", "12", "16");
INSERT INTO BOOKS (NAME, AUTHOR, EDITION, AISLE)VALUES("Indian_women_who_broke_all_the_rules", "Hirnandani","7","19");
INSERT INTO BOOKS (NAME, AUTHOR, EDITION, AISLE)VALUES("My_Life_My_Mission", "Baba_Ramdev","9", "15");
INSERT INTO BOOKS (NAME, AUTHOR, EDITION, AISLE)VALUES("The_Third_Pillar", "Raghuram_Rajan","6", "10");
INSERT INTO BOOKS (NAME, AUTHOR, EDITION, AISLE)VALUES("Game_Changer","Shahid_Afridi","4", "17");
INSERT INTO BOOKS (NAME, AUTHOR, EDITION, AISLE)VALUES("Changing_India","Manmohan_Singh","2", "22");
SELECT * FROM BOOKS;

/* nOW i wold LIKE TO DELETE THE ROWS WHERE AISLE DATA IS NOT PRESENR*/

DELETE FROM BOOKS WHERE AISLE = "CHECK_THE_SECOND_HALF";
SELECT * FROM BOOKS;

/*To make my work easier I would now like to order  the books table by aisle*/

SELECT * FROM BOOKS ORDER BY AISLE;

/*Now I doudt if I included GIRL POWER book on the list, so I am going to check it? */

SELECT * FROM BOOKS WHERE NAME = "Girl_Power";

/*Now I would like to make my work more efficient. As my friend and I went together, WE WOULD LIKE TO STOP TOGETHER AND SPLIT THE STORE SO THAT I can shop in half of the store and she can shop the other half and we meet at the checkout*/
SELECT * FROM BOOKS  WHERE AISLE>12 AND AISLE<25  ORDER BY AISLE;
