create database if not exists insper_keep;
use insper_keep;


CREATE TABLE user (
 user_id INT NOT NULL AUTO_INCREMENT,
 login VARCHAR(20) NOT NULL,
 password VARCHAR(64) NOT NULL,
 nome_completo VARCHAR(100),
 email VARCHAR(50),
 administrador INT NOT NULL,
 PRIMARY KEY (user_id)
);

CREATE TABLE nota (
 nota_id INT NOT NULL AUTO_INCREMENT,
 nota_text TEXT NOT NULL,
 person_id INT NOT NULL,
 PRIMARY KEY (nota_id),
 FOREIGN KEY(person_id) REFERENCES user(user_id)
);