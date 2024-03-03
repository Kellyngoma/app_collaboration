CREATE DATABASE IF NOT EXISTS app_hosto;
USE app_hosto;

CREATE TABLE IF NOT EXISTS categorie_user(
    id int primary key auto_increment,
    nom varchar(30)not null,
    grade varchar(30)not null,
    fonction varchar(55)not null,
    adresse varchar(55)not null 
    
)engine=innodb;
CREATE TABLE IF NOT EXISTS user(
    id int primary key auto_increment,
    nom varchar(30)not null,
    email varchar(55)not null,
    password varchar(255)not null,
    role varchar(55)not null,
    id_cate int,
    CONSTRAINT fk_cate_id FOREIGN KEY (id_cate) REFERENCES categorie_user(id)
)engine=innodb;

CREATE TABLE IF NOT EXISTS patients(
    id int primary key auto_increment,
    nom_pat varchar(30)not null,
    postnom_pat varchar(30)not null,
    adresse varchar(55)not null,
    genre_pat varchar(15)not null,
    poids_pat varchar(20)not null,
    id_user int,
    CONSTRAINT fk_user_id FOREIGN KEY (id_user) REFERENCES user(id)
    
)engine=innodb;

CREATE TABLE IF NOT EXISTS precription(
    id int primary key auto_increment,
    nom_prescrip varchar(30)not null,
    libelle_prescrip varchar(55)not null,
    date_prescript datetime
)engine=innodb;

CREATE TABLE IF NOT EXISTS consultation(
    id int primary key auto_increment,
    nom_consult varchar(30)not null,
    motif_consult varchar(55)not null,
    date_consult datetime,
    id_user int,
    id_pat int,
    id_prescri int,
    CONSTRAINT fk_ident_user FOREIGN KEY (id_user) REFERENCES user(id),
    CONSTRAINT fk_ident_pat FOREIGN KEY (id_pat) REFERENCES patients(id),
    CONSTRAINT fk_ident_precri FOREIGN KEY (id_prescri) REFERENCES precription(id)


)engine=innodb;














-- Inssertion categorie
INSERT INTO categorie_user(id,nom,grade,fonction,adresse) VALUES(null,'Kienge', 'médecin directeur', 'pédiatre', 'Nzuzi n°15 lemba');
-- Admin inssertion
INSERT INTO user(id,email,password,role) VALUES(null, "kienge", 'kienge@gmail.com', '$2y$10$8Vfo2kcYBkDloRQSLBcFjewR7wFc8eHYMtDlwQsmaXQJGBy2AYqEC', 'admin');



-- Patients requests
-- INSERT INTO patients (id_pat,nom_pat,postnom_pat,adresse,genre_pat,poids_pat,id_consult) VALUE(null, '?', '?','?','?','?','?');
-- UPDATE patients SET nom_pat='?', postnom_pat='?',adresse='?',genre_pat='?',poids_pat='?',id_user='?';
-- DELETE FROM patients WHERE id='?';

-- INSERT INTO prescription (id_prescrip,nom_prescrip,libelle_prescrip,date_prescript) VALUE(null, '?', '?','?','?');
-- UPDATE description SET nom_prescrip='?',libelle_prescrip='?',date_prescript='?';
-- DELETE FROM prescription WHERE id_descrption='?';

-- INSERT INTO consultation(id_consult,nom_consult,motif_consult,date_consult) VALUE(null, '?', '?','?','?');
-- UPDATE description SET nom_consult='?'motif_consult,='?',date_consult='?';
-- DELETE FROM consultation WHERE id_descrption='?';