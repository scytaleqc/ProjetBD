CREATE TABLE Adresse (
id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
Numero varchar(10) NOT NULL,
Rue varchar(50) NOT NULL,
Ville varchar(50) NOT NULL,
CodePostal varchar(6) NOT NULL,
Province varchar(50) NOT NULL,
Pays varchar(30) NOT NULL,
Principale BOOLEAN DEFAULT 0,
Supprimé BOOLEAN DEFAULT 0,
CodePermanent varchar(11),
FOREIGN KEY (CodePermanent) REFERENCES Etudiant(CodePermanent)
);