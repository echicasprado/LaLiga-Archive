-- Crear un keyspace

CREATE KEYSPACE practica2 WITH replication = {'class':'SimpleStrategy','replication_factor':1};

DESCRIBE keyspaces;

USE practica2;

-- Crear tablas

CREATE TABLE ligaLocal (fecha text, temporada text, jornada text, equipo1 text, equipo2 text,goles1 text, g
oles2 text, PRIMARY KEY ((temporada, equipo1), fecha, equipo2));

CREATE TABLE ligaVisitante(fecha text, temporada text, jornada text, equipo1 text, equipo2 text, goles1 tex
t, goles2 text, PRIMARY KEY ((temporada, equipo2), fecha, equipo1));

CREATE TABLE ligaMarcador(fecha text, temporada text, jornada text, equipo1 text, equipo2 text, goles1 text
, goles2 text, PRIMARY KEY((temporada, equipo1, equipo2), fecha, goles1, goles2));

CREATE TABLE ligaVictoria(fecha text, temporada text, jornada text, equipo1 text, equipo2 text, goles1 text
, goles2 text, PRIMARY KEY((temporada), fecha, equipo1, equipo2, goles1, goles2));

CREATE TABLE ligaRival(fecha text, temporada text, jornada text, equipo1 text, equipo2 text, goles1 text, g
    oles2 text, PRIMARY KEY((equipo1, jornada, temporada), fecha, equipo2));

-- Ver tablas

DESCRIBE TABLES;


-- Carga masiva

COPY practica2.ligaLocal (fecha, temporada, jornada, equipo1, equipo2, goles1, goles2) FROM '/home/g2373708320101/LaLiga-Archive/15kDatos_Practica2.csv' WITH HEADER = TRUE;

COPY practica2.ligaVisitante (fecha, temporada, jornada, equipo1, equipo2, goles1, goles2) FROM '/home/g2373708320101/LaLiga-Archive/15kDatos_Practica2.csv' WITH HEADER = TRUE;

COPY practica2.ligaMarcador (fecha, temporada, jornada, equipo1, equipo2, goles1, goles2) FROM '/home/g2373708320101/LaLiga-Archive/15kDatos_Practica2.csv' WITH HEADER = TRUE;

COPY practica2.ligaVictoria (fecha, temporada, jornada, equipo1, equipo2, goles1, goles2) FROM '/home/g2373708320101/LaLiga-Archive/15kDatos_Practica2.csv' WITH HEADER = TRUE;

COPY practica2.ligaRival (fecha, temporada, jornada, equipo1, equipo2, goles1, goles2) FROM '/home/g2373708320101/LaLiga-Archive/15kDatos_Practica2.csv' WITH HEADER = TRUE;

