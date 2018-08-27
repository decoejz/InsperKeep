create database if not exists insper_keep;
use insper_keep;


CREATE TABLE user (
 user_id INT NOT NULL AUTO_INCREMENT,
 login VARCHAR(20) NOT NULL,
 password VARCHAR(64) NOT NULL,
 nome_completo VARCHAR(100),
 email VARCHAR(50),
 PRIMARY KEY (user_id)
);

CREATE TABLE nota (
 nota_id INT NOT NULL AUTO_INCREMENT,
 nota TEXT NOT NULL,
 person_id INT,
 PRIMARY KEY (nota_id),
 FOREIGN KEY(person_id) REFERENCES user(user_id)
);