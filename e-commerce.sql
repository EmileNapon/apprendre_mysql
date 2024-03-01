Create table Client (
no_client varchar(20) not null ,
nom varchar(20),
prenom varchar(20),
numero_civique varchar(10),
rue varchar(30),
ville varchar(20),
province varchar(20),
pays varchar(20),
code_postal varchar(20),
sexe varchar(20),
payeur boolean,
primary key(no_client)
) ;


Create table Commande(
no_commande varchar(20),
fk varchar(20),
Date_commande Date,
Date_livraison Date,
total_commande int,
primary key(no_commande),
foreign key (fk) references Client(no_client)
);


Create table Article (
no_article varchar(20) not null,
nom_article varchar(20),
Primary key(no_article)
) ;


Create table Article_commande(
no_comm varchar(20) not null,
no_art varchar(20) not null,
Quantite_commande int;
Prix_unitaire float
Primary key(quantite_commande,no_comm,no_art)
Foreign key(no_comm) references Commande(no_commande),
Foreign key(no_art) references Article(no_article)
);




INSERT INTO `client` (`no_client`, `nom`, `prenom`, `numero_civique`, `rue`, `ville`, `province`, `pays`, `code_postal`, `sexe`, `payeur`) VALUES ('23', 'napon', 'Pierre', 'bg012', 'karpala', 'paris', 'jh', 'bf', 'bf012', 'm', '0');
INSERT INTO `client` (`no_client`, `nom`, `prenom`, `numero_civique`, `rue`, `ville`, `province`, `pays`, `code_postal`, `sexe`, `payeur`) VALUES ('14', 'napon', 'Hamidou', 'M012', 'zone1', 'Ouag', 'jh', 'bf', 'bf012', 'f', '1');
INSERT INTO `client` (`no_client`, `nom`, `prenom`, `numero_civique`, `rue`, `ville`, `province`, `pays`, `code_postal`, `sexe`, `payeur`) VALUES ('73', 'kadio', 'elie', 'eli012', 'siao', 'bobo', 'jh', 'bf', 'bf012', 'f', '0');
INSERT INTO `client` (`no_client`, `nom`, `prenom`, `numero_civique`, `rue`, `ville`, `province`, `pays`, `code_postal`, `sexe`, `payeur`) VALUES ('23', 'napon', 'Pierre', 'bg012', 'karpala', 'paris', 'jh', 'bf', 'bf012', 'm', '0');
INSERT INTO `client` (`no_client`, `nom`, `prenom`, `numero_civique`, `rue`, `ville`, `province`, `pays`, `code_postal`, `sexe`, `payeur`) VALUES ('30', 'nignan', 'Georges', 'ng012', 'Pissi', 'Ouaga', 'jh', 'bf', 'bf012', 'm', '0');
INSERT INTO `client` (`no_client`, `nom`, `prenom`, `numero_civique`, `rue`, `ville`, `province`, `pays`, `code_postal`, `sexe`, `payeur`) VALUES ('234', 'nabie', 'oumorou', 'no012', 'karpala', 'Ouaga', 'jh', 'bf', 'bf012', 'm', '1');
INSERT INTO `client` (`no_client`, `nom`, `prenom`, `numero_civique`, `rue`, `ville`, `province`, `pays`, `code_postal`, `sexe`, `payeur`) VALUES ('231', 'kabore', 'Leticia', 'KL072', 'Tampuy', 'kaya', 'jh', 'bf', 'bf012', 'f', '1');
INSERT INTO `client` (`no_client`, `nom`, `prenom`, `numero_civique`, `rue`, `ville`, `province`, `pays`, `code_postal`, `sexe`, `payeur`) VALUES ('233', 'sonda', 'karim', 'sk012', 'koko', 'Leo', 'jh', 'bf', 'bf012', 'm', '0');
INSERT INTO `client` (`no_client`, `nom`, `prenom`, `numero_civique`, `rue`, `ville`, `province`, `pays`, `code_postal`, `sexe`, `payeur`) VALUES ('65', 'napon', 'Pierre', 'bg012', 'karpala', 'paris', 'jh', 'bf', 'bf012', 'm', '1');
INSERT INTO `client` (`no_client`, `nom`, `prenom`, `numero_civique`, `rue`, `ville`, `province`, `pays`, `code_postal`, `sexe`, `payeur`) VALUES ('23', 'napon', 'Emile', 'nE012', 'S5', 'Leo', 'jh', 'bf', 'bf012', 'm', '1');
INSERT INTO `client` (`no_client`, `nom`, `prenom`, `numero_civique`, `rue`, `ville`, `province`, `pays`, `code_postal`, `sexe`, `payeur`) VALUES ('756', 'kama', 'Kevin', 'kk012', 'Ouaga200', 'Ouaga', 'jh', 'bf', 'bf012', 'm', '0');
INSERT INTO `client` (`no_client`, `nom`, `prenom`, `numero_civique`, `rue`, `ville`, `province`, `pays`, `code_postal`, `sexe`, `payeur`) VALUES ('223', 'Herling', 'Hallang', 'HH012', 'City', 'machester', 'jh', 'Norvege', 'bf012', 'm', '1');
INSERT INTO `client` (`no_client`, `nom`, `prenom`, `numero_civique`, `rue`, `ville`, `province`, `pays`, `code_postal`, `sexe`, `payeur`) VALUES ('345', 'Kevin', 'De Debruyne', 'KDB012', 'istand', 'Istanbul', 'jh', 'Italie', 'bf012', 'm', '1');
INSERT INTO `client` (`no_client`, `nom`, `prenom`, `numero_civique`, `rue`, `ville`, `province`, `pays`, `code_postal`, `sexe`, `payeur`) VALUES ('87', 'napon', 'karnine', 'nk012', 'Centre Ville', 'Ouaga', 'jh', 'bf', 'bf012', 'm', '1');
INSERT INTO `client` (`no_client`, `nom`, `prenom`, `numero_civique`, `rue`, `ville`, `province`, `pays`, `code_postal`, `sexe`, `payeur`) VALUES ('43', 'Bernado', 'Silva', 'BS012', 'city', 'machester', 'jh', 'portugal', 'bf012', 'm', '0');




INSERT INTO `commande` (`no_commande` ,`fk`,`Date_commande` ,`Date_livraison` ,`total_commande` ) VALUES ('322', '43', '1997-11-12', '1997-11-22', '10');
INSERT INTO `commande` (no_commande ,fk,Date_commande ,Date_livraison ,total_commande ) VALUES ('2322', '223', '1999-11-11', '1999-11-12', '3');
INSERT INTO `commande` (no_commande ,fk,Date_commande ,Date_livraison ,total_commande ) VALUES ('1223', '233', '2017-11-12', '201711-12', '1');
INSERT INTO `commande` (no_commande ,fk,Date_commande ,Date_livraison ,total_commande ) VALUES ('2322', '223', '1999-11-11', '11-12-1999', '3');
INSERT INTO `commande` (no_commande ,fk,Date_commande ,Date_livraison ,total_commande ) VALUES ('1322', '233', '2017-11-12', '2013-04-05', '1');



INSERT INTO `Article` (no_article,nom_article ) VALUES ('1', 'bic');
INSERT INTO `Article` (no_article,nom_article ) VALUES ('2', 'sac');
INSERT INTO `Article` (no_article,nom_article ) VALUES ('3', 'tee-shirt');
INSERT INTO `Article` (no_article,nom_article ) VALUES ('4', 'robe-courte');
INSERT INTO `Article` (no_article,nom_article ) VALUES ('5', 'robe');
INSERT INTO `Article` (no_article,nom_article ) VALUES ('6', 'patalon');
INSERT INTO `Article` (no_article,nom_article ) VALUES ('7', 'chapeau');
INSERT INTO `Article` (no_article,nom_article ) VALUES ('8', 'sinture');
INSERT INTO `Article` (no_article,nom_article ) VALUES ('9', 'air-force');
INSERT INTO `Article` (no_article,nom_article ) VALUES ('10', 'mache longe');
INSERT INTO `Article` (no_article,nom_article ) VALUES ('11', 'peruque');
INSERT INTO `Article` (no_article,nom_article ) VALUES ('12', 'poisson');
INSERT INTO `Article` (no_article,nom_article ) VALUES ('13', 'sardine');



INSERT INTO `Article_commande` (no_comm ,no_art ,Quantite_commande,Prix_unitaire ) VALUES ('13', '1','4', '1000');
INSERT INTO `Article_commande` (no_comm ,no_art ,Quantite_commande,Prix_unitaire ) VALUES ('13', '2','6', '2000');
INSERT INTO `Article_commande` (no_comm ,no_art ,Quantite_commande,Prix_unitaire ) VALUES ('13', '1','9', '3000');
INSERT INTO `Article_commande` (no_comm ,no_art ,Quantite_commande,Prix_unitaire ) VALUES ('13', '4','90', '2000');
INSERT INTO `Article_commande` (no_comm ,no_art ,Quantite_commande,Prix_unitaire ) VALUES ('13', '3','13', '8000');
INSERT INTO `Article_commande` (no_comm ,no_art ,Quantite_commande,Prix_unitaire ) VALUES ('13', '1','2', '1200');
INSERT INTO `Article_commande` (no_comm ,no_art ,Quantite_commande,Prix_unitaire ) VALUES ('13', '9','1', '4000');
INSERT INTO `Article_commande` (no_comm ,no_art ,Quantite_commande,Prix_unitaire ) VALUES ('13', '13','4', '5000');
INSERT INTO `Article_commande` (no_comm ,no_art ,Quantite_commande,Prix_unitaire ) VALUES ('13', '13','5', '13000');
INSERT INTO `Article_commande` (no_comm ,no_art ,Quantite_commande,Prix_unitaire ) VALUES ('13', '10','7', '2000');
INSERT INTO `Article_commande` (no_comm ,no_art ,Quantite_commande,Prix_unitaire ) VALUES ('13', '2','80', '20000');