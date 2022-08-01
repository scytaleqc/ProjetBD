CREATE TABLE Etudiant (
Id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
Nom varchar(50) NOT NULL,
Prenom varchar(50) NOT NULL,
Age int NOT NULL,
Statut varchar(10),
NombreCreditReussis int DEFAULT 0,
CodePermanent varchar(15) UNIQUE,
DateNaissance date NOT NULL
);



CREATE TABLE Telephone (
id int NOT NULL AUTO_INCREMENT,
Indicatif varchar(3),
Numero varchar(7) NOT NULL,
Principal BOOLEAN DEFAULT 0,
Cellulaire BOOLEAN DEFAULT 0,
CodePermanent varchar(20),
PRIMARY KEY (id),
FOREIGN KEY (CodePermanent) REFERENCES Etudiant(CodePermanent)
);



CREATE TABLE Adresse (
id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
Numero varchar(10),
Rue varchar(50),
Ville varchar(50),
CodePostal varchar(6) NOT NULL,
Province varchar(50),
Pays varchar(30),
Principale BOOLEAN DEFAULT 0,
Supprimé BOOLEAN DEFAULT 0,
CodePermanent varchar(11),
FOREIGN KEY (CodePermanent) REFERENCES Etudiant(CodePermanent)
);



INSERT INTO Etudiant
(Nom, Prenom, Age, Statut, NombreCreditReussis, CodePermanent, DateNaissance)
VALUES
('Blow', 'Joe', 72, 'Partiel', 12, 'BJOE4578545', '1950-01-01'),
('Luke', 'Lucky', 85, 'Partiel', 3, 'LUCL2504584', '1937-05-06'),
('Allen', 'Woody', 86, 'Plein', 21, 'WOOA8545788', '1933-07-08'),
('Mouse', 'Mickey', 22, 'Plein', 30, 'MICM7878802', '1990-11-08'),
('Duck', 'Donald', 28, 'Partiel', 2, 'DOND4512458', '1990-11-09'),
('Tarrantino', 'Quentin', 58, 'Partiel', 18, 'QEUT2054854', '1965-05-06'),
('Morisson', 'Jim', 37, 'Plein', 3, 'JIM7878545', '1949-01-01'),
('John', 'Elton', 33, 'Partiel', 33, 'ELTJ2004584', '1970-12-15'),
('Star', 'Ringo', 47, 'Plein', 54, 'RINS8545332', '1932-07-22'),
('Lennon', 'John', 62, 'Partiel', 9, 'JOHL7802027', '1982-11-08'),
('Trump', 'Donald', 100, 'Plein', 0, 'DONT0254875', '1950-02-09'),
('Van Halen', 'Eddy', 65, 'Partiel', 21, 'EDYV3652698', '1965-05-06');



INSERT INTO Telephone
(Indicatif, Numero, Principal, CodePermanent)
VALUES
('518', '6632545', 1, 'BJOE4578545​'),
('514', '4522125', 1, 'LUCL2504584'),
('418', '7774585', 1, 'WOOA8545788'),
('418', '7852251', 1, 'MICM7878802'),
('819', '4520215', 1, 'DOND4512458'),
('819', '7845252', 1, 'QEUT2054854'),
('418', '5552360', 0, 'JIM7878545'),
('514', '8755850', 1, 'ELTJ2004584'),
('819', '4580258', 1, 'RINS8545332'),
('819', '7855541', 0, 'JOHL7802027'),
('514', '7745582', 1, 'DONT0254875'),
('514', '3025520', 1, 'EDYV3652698');



INSERT INTO Adresse
(CodePostal, CodePermanent)
VALUES
('G3C 4R5', 'BJOE4578545'),
('G4F V3R', 'LUCL2504584'),
('F3F R3W', 'WOOA8545788'),
('G5Y 7U8', 'MICM7878802'),
('2W3 R3W', 'DOND4512458'),
('G5Y R3W', 'QEUT2054854'),
('G3C 4R5', 'JIM7878545'),
('G4F V3R', 'ELTJ2004584'),
('F3F R3W', 'RINS8545332'),
('G5Y 7U8', 'JOHL7802027'),
('2W3 R3W', 'DONT0254875'),
('G5Y R3W', 'EDYV3652698');



INSERT INTO telephone (indicatif, numero, principal, cellulaire, CodePermanent)
VALUES
('581', '7758845', 1, 1, 'JIM7878545'),
('581', '4258859', 0, 1, 'ELTJ2004584'),
('819', '4471125', 1, 1, 'JOHL7802027'),
('418', '7539518', 0, 1, 'LUCL2504584');



INSERT INTO adresse
(Numero, Rue, Ville, CodePostal, Province, Pays, Principale, Supprimé, CodePermanent)
VALUES
('4449', 'Winding Way', 'Providence', 'N4G 9A0', 'Rhode Island', 'United States', 1, 0, 'BJOE4578545'),
('2264', 'Overlook Drive', 'New Lisbon', 'J6R 7H0', 'Indiana', 'United States', 1, 0, 'LUCL2504584'),
('2918', 'Woodrow Way', 'London', 'E8N 9R6', 'Ontario', 'Canada', 1, 0, 'WOOA8545788'),
('447', 'Formula Lane', 'Squirrel Depot', 'A1V 2P6', 'Newfoundland', 'Canada', 1, 0, 'MICM7878802'),
('3277', 'Stoney Lonesome Road', 'Pine Grove', 'N4L 8E1', 'Alberta', 'Canada', 1, 0, 'DOND4512458'),
('32', 'Blair Court', 'Toronto', 'L3Z 6V5', 'Ontario', 'Canada', 1, 0, 'QEUT2054854'),
('215', 'Post Farm Road', 'Atlanta', 'G0S 1K8', 'Georgia', 'United States', 1, 0, 'JIM7878545'),
('564', 'Elkview', 'Brisbane', 'R5H 6L3', 'Manitoba', 'Canada', 1, 0, 'ELTJ2004584'),
('4639', 'Ashton Lane', 'Peterborough', 'N8A 1C3', 'Ontario', 'Canada', 0, 1, 'ELTJ2004584'),
('33', 'Mercier', 'Lévis', 'G7A 5N8', 'Québec', 'Canada', 1, 0, 'RINS8545332'),
('1163', 'Carillon', 'Saint-Félicien', 'G0M 3K5', 'Québec', 'Canada', 1, 0, 'JOHL7802027'),
('4634', 'Eagan', 'Charlottesville', 'L6A 9P6', 'Minnesota', 'United States', 1, 0, 'DONT0254875'),
('5', 'Honey Grove', 'Gloucester', 'V9G 5A0', 'British Columbia', 'Canada', 1, 0, 'EDYV3652698'),
('2506', 'Jones Street', 'Dallas', 'J1N 9H0', 'Texas', 'Canada', 0, 0, 'DOND4512458'),
('4657', 'Byrd Lane', 'Hampstead', 'P1L 5K0', 'Ontario', 'Canada', 1, 0, 'LUCL2504584'),
('3098', 'Harley Vincent Drive', 'Mesopotamia', 'E9G 5A1', 'Saskatchewan', 'Canada', 0, 1, 'RINS8545332'),
('3558', 'Des Arbrisseaux', 'Ste-Julie', 'J3X 0G8', 'Québec', 'Canada', 0, 1, 'QEUT2054854');



