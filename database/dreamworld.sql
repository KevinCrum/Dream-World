DROP TABLE IF EXISTS subscriber;
DROP SEQUENCE IF EXISTS seq_subscriber_id;
DROP TABLE IF EXISTS subsciber_occupation;
DROP SEQUENCE IF EXISTS seq_subscriber_occupation_id;
DROP TABLE IF EXISTS mentor_occupation;
DROP SEQUENCE IF EXISTS seq_mentor_occupation_id;

DROP TABLE IF EXISTS occupation;
DROP SEQUENCE IF EXISTS seq_occupation_id;

CREATE SEQUENCE seq_subscriber_id;

CREATE TABLE subscriber (
	id INTEGER PRIMARY KEY DEFAULT NEXTVAL('seq_subscriber_id'),
	fname	VARCHAR(60) NOT NULL,
	lname VARCHAR(60) NOT NULL,
	email VARCHAR(256) NOT NULL,
	password VARCHAR(256) NOT NULL
);

CREATE SEQUENCE seq_occupation_id;

CREATE TABLE occupation (
id INTEGER PRIMARY KEY DEFAULT NEXTVAL('seq_occupation_id'),
name VARCHAR(60) NOT NULL,
parent_id INTEGER , 
sequence INTEGER 
);
CREATE TABLE subscriber_occupation (
subscriber_id INTEGER NOT NULL,
occupation_id INTEGER NOT NULL

CONSTRAINT fk_subscriber_occupation_subscriber FOREIGN KEY (subscriber_id) REFERENCES occupation(id),
CONSTRAINT fk_occupation_subscriber_occupation FOREIGN KEY (occupation_id) REFERENCES subsciber(id)
);


INSERT INTO occupation (name, parent_id, sequence) VALUES ('Teacher', NULL, NULL);
INSERT INTO occupation (name, parent_id, sequence) VALUES ('Sports', NULL, NULL);
INSERT INTO occupation (name, parent_id, sequence) VALUES ('Doctor/Veterinarian', NULL, NULL);
INSERT INTO occupation (name, parent_id, sequence) VALUES ('Astronaut', NULL, NULL);
INSERT INTO occupation (name, parent_id, sequence) VALUES ('Banker', NULL, NULL);
INSERT INTO occupation (name, parent_id, sequence) VALUES ('Law Enforcement', NULL, NULL);
INSERT INTO occupation (name, parent_id, sequence) VALUES ('Nurse', NULL, NULL);
INSERT INTO occupation (name, parent_id, sequence) VALUES ('Musicain/ Artist', NULL, NULL);
INSERT INTO occupation (name, parent_id, sequence) VALUES ('Scientist', NULL, NULL);
INSERT INTO occupation (name, parent_id, sequence) VALUES ('Lawyer', NULL, NULL);
INSERT INTO occupation (name, parent_id, sequence) VALUES ('Engineer', NULL, NULL);
INSERT INTO occupation (name, parent_id, sequence) VALUES ('Writer/ Aurthor', NULL, NULL);
INSERT INTO occupation (name, parent_id, sequence) VALUES ('Computer Programmer/ IT', NULL, NULL);
INSERT INTO occupation (name, parent_id, sequence) VALUES ('Film/Television/Media Production/Graphic Design', NULL, NULL);
INSERT INTO occupation (name, parent_id, sequence) VALUES ('FireFighter', NULL, NULL);

