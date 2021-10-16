-- 1 Partidos de X Temporada donde Y equipo ha jugado como local 
SELECT * FROM ligaLocal WHERE equipo1 = 'Barcelona' AND temporada = '2005-2006'; 

-- 2 Partidos de X Temporada donde Y equipo ha jugado como visitante 
SELECT * FROM ligaVisitante WHERE equipo2 = 'Barcelona' AND temporada = '2005-2006'; 

-- 3 Marcadores finales para los partidos de X temporada donde han participado los equipos Y y Z (Marcadores tanto de la primera vuelta como de la segunda) 
SELECT * FROM ligaMarcador WHERE temporada = '2005-2006' AND equipo1 = 'Barcelona' AND equipo2 = 'Real Madrid'; 

-- 4 Partido donde se registre la victoria más abultada de X temporada 
SELECT temporada, equipo1, MAX(goles1), equipo2, MAX(goles2) FROM ligaVictoria WHERE temporada = '2005-2006'; 

-- 5 Rival de X equipo para Y jornada de Z temporada. 
SELECT * FROM ligaRival WHERE equipo1 = 'Barcelona' AND jornada = '4' AND temporada = '2005-2006'; 