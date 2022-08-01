UPDATE adresse
SET Supprimé = 1
WHERE CodePermanent = 'BJOE4578545';

INSERT INTO adresse
(Numero, Rue, Ville, CodePostal, Province, Pays, Principale, Supprimé, CodePermanent)
VALUES
('742', 'Evergreen Terrace', 'Springfield', 'S6H 3T9', 'Massassuchets', 'United States', 1, 0, 'BJOE4578545');