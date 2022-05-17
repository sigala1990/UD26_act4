create database investigadores;
use investigadores;

DROP TABLE if EXISTS facultad ;
create table facultad (
id int auto_increment primary key,
nombre nvarchar(100)
);

DROP TABLE IF EXISTS investigadores;
create table investigadores(
id int auto_increment primary key,
nomapels nvarchar(255),
facultad_id int,
FOREIGN KEY (facultad_id) REFERENCES facultad(id));

DROP TABLE IF EXISTS equipos;
create table equipos(
id int auto_increment primary key,
nombre nvarchar(100),
facultad_id int,
FOREIGN KEY (facultad_id) REFERENCES facultad(id));

DROP TABLE IF EXISTS reserva;
create table reserva(
id int auto_increment primary key,
comienzo datetime,
fin datetime,
investigador_id int,
equipo_id int,
FOREIGN KEY (investigador_id) REFERENCES investigadores(id),
FOREIGN KEY (equipo_id) REFERENCES equipos(id));

insert into facultad (nombre) values ("Oxford");
insert into facultad (nombre) values ("Pokemon");
insert into facultad (nombre) values ("Lol");
insert into investigadores (nomapels,facultad_id) values ("juan pepe",1);
insert into investigadores (nomapels,facultad_id) values ("jose",2);
insert into investigadores (nomapels,facultad_id) values ("gato miau",3);
insert into equipos (nombre, facultad_id) values ( "black panthers", 2);
insert into equipos (nombre, facultad_id) values ( "black ducks", 1);
insert into equipos (nombre, facultad_id) values ( "black cows", 3);
insert into reserva (investigador_id, equipo_id, comienzo, fin) values (2,2, '2020-01-01 19:00:00','2020-01-01 21:00:00');
insert into reserva (investigador_id, equipo_id, comienzo, fin) values (1,3, '2020-11-21 19:00:00','2020-11-21 21:00:00');
insert into reserva (investigador_id, equipo_id, comienzo, fin) values (1,3, '2020-09-29 19:00:00','2020-12-31 00:00:00');