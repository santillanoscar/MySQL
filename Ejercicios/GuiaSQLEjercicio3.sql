-- 1. Mostrar el nombre de todos los jugadores ordenados alfabéticamente.
select * from jugadores order by Nombre;
-- 2. Mostrar el nombre de los jugadores que sean pivots (‘C’) y que pesen más de 200 libras, ordenados por nombre alfabéticamente.
select * from jugadores where Posicion= 'c' and peso > 200 order by Nombre;
-- 3. Mostrar el nombre de todos los equipos ordenados alfabéticamente.
SELECT * FROM equipos order by Nombre;
-- 4. Mostrar el nombre de los equipos del este (East).
select * from equipos where Conferencia='east';
-- 5. Mostrar los equipos donde su ciudad empieza con la letra ‘c’, ordenados por nombre.
select * from equipos where Ciudad like 'c%' order by nombre;
-- 6. Mostrar todos los jugadores y su equipo ordenados por nombre del equipo.
select nombre, Nombre_equipo from jugadores order by Nombre; 
-- 7. Mostrar todos los jugadores del equipo “Raptors” ordenados por nombre.
select nombre, Nombre_equipo 
from jugadores 
where Nombre_equipo= 'raptors' 
order by Nombre; 
-- 8. Mostrar los puntos por partido del jugador ‘Pau Gasol’.
select j.nombre, e.Puntos_por_partido, e.temporada 
from jugadores j 
inner join estadisticas e on j.codigo=e.jugador 
where j.Nombre='Pau gasol';
-- 9. Mostrar los puntos por partido del jugador ‘Pau Gasol’ en la temporada ’04/05′.
select j.nombre, e.Puntos_por_partido, e.temporada 
from jugadores j 
inner join estadisticas e on j.codigo=e.jugador 
where j.Nombre='Pau gasol' and e.temporada='04/05';
-- 10. Mostrar el número de puntos de cada jugador en toda su carrera.
select e.jugador, j.Nombre, round(sum(Puntos_por_partido), 2) as puntos_en_toda_carrera 
from estadisticas e 
inner join jugadores j on j.codigo=e.jugador 
group by e.jugador;
-- 11. Mostrar el número de jugadores de cada equipo.
select nombre_equipo, count(*) as cantidad_jugadores 
from jugadores 
group by Nombre_equipo;
-- 12. Mostrar el jugador que más puntos ha realizado en toda su carrera.

-- 13. Mostrar el nombre del equipo, conferencia y división del jugador más alto de la NBA.
-- 14. Mostrar el partido o partidos (equipo_local, equipo_visitante y diferencia) con mayor diferencia de puntos.
-- 15. Mostrar quien gana en cada partido (codigo, equipo_local, equipo_visitante, equipo_ganador), en caso de empate sera null.