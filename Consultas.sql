--PARTE 2 CONSULTAS
-- 1 
-- AÑO CORRIENTE como dice la letra del obligatorio
SELECT 
    E1.codEquipo AS 'CodEquipoLocal',
    E1.nomEquipo AS 'NomEquipoLocal',
    P.GL AS 'GolesLocal',
    E2.codEquipo AS 'CódEquipoVisita',
    E2.nomEquipo AS 'NomEquipoVisita',
    P.GV AS 'GolesVisita',
    P.fecha AS 'fecha'
FROM 
    Partido P
JOIN 
    Equipo E1 ON P.codEquipo_local = E1.codEquipo
JOIN 
    Equipo E2 ON P.codEquipo_visita = E2.codEquipo
WHERE 
    YEAR(P.fecha) = YEAR(GETDATE());

-- 1
-- AÑO (2023) EN EL QUE ESTAN INGRESADOS LOS DATOS
SELECT 
    E1.codEquipo AS 'CodEquipoLocal',
    E1.nomEquipo AS 'NomEquipoLocal',
    P.GL AS 'GolesLocal',
    E2.codEquipo AS 'CódEquipoVisita',
    E2.nomEquipo AS 'NomEquipoVisita',
    P.GV AS 'GolesVisita',
    P.fecha AS 'fecha'
FROM 
    Partido P
JOIN 
    Equipo E1 ON P.codEquipo_local = E1.codEquipo
JOIN 
    Equipo E2 ON P.codEquipo_visita = E2.codEquipo
WHERE 
    YEAR(P.fecha) = 2023;

--2
SELECT E.codEquipo, 
       E.nomEquipo, 
	   COUNT(P.idPartido) AS CantPartidosLocal, 
	   SUM(P.GL) AS GolesLocal, 
       MAX(P.fecha) AS FechaUltimoPartido
FROM Equipo E
JOIN Partido P ON E.codEquipo = P.codEquipo_local
WHERE E.nomEquipo LIKE '%FC%'
GROUP BY E.codEquipo, E.nomEquipo
ORDER BY GolesLocal DESC;

--3
SELECT Jugador.carnJug, Jugador.nomJug, SUM(Detalle.cntGoles) AS Goles
FROM Jugador
JOIN Detalle ON Jugador.carnJug = Detalle.carnJug
GROUP BY Jugador.carnJug, Jugador.nomJug
HAVING SUM(Detalle.cntGoles) > 0
ORDER BY Goles DESC;

--4
SELECT a.ciArbitro, a.nomArbitro, a.apelArbitro,
       ISNULL(SUM(d.cntAmarillas), 0) as CantidadAmarillas,
       ISNULL(SUM(d.cntRojas), 0) as CantidadRojas
FROM Arbitro a
JOIN Formulario f ON a.ciArbitro = f.ciArbitro
JOIN Detalle d ON f.numForm = d.numForm
WHERE d.cntRojas > 0
GROUP BY a.ciArbitro, a.nomArbitro, a.apelArbitro;


--5
SELECT DISTINCT j.ciJug, j.nomJug, j.apeJug
FROM Jugador j
JOIN Equipo e ON j.codEquipo = e.codEquipo
JOIN Partido p ON e.codEquipo = p.codEquipo_local OR e.codEquipo = p.codEquipo_visita
JOIN Cancha c ON p.nomCancha = c.nomCancha
WHERE j.tipoJug = 'Amateur'
  AND e.colorEquipo = 'Verde'
  AND p.fecha BETWEEN '2023-01-01' AND '2023-01-10'
  AND c.capCancha > 1500
ORDER BY j.apeJug;

--6
SELECT c.nomCancha, c.capCancha, COUNT(p.idPartido) AS CantPartidos
FROM Cancha c
JOIN Partido p ON c.nomCancha = p.nomCancha
GROUP BY c.nomCancha, c.capCancha
HAVING COUNT(p.idPartido) BETWEEN 9 AND 15;

--7
SELECT DISTINCT e.nomEquipo
FROM Equipo e
JOIN (
    SELECT codEquipo_local AS codEquipo
    FROM Partido p
    JOIN Cancha c ON p.nomCancha = c.nomCancha
    WHERE c.capCancha > 2000
    UNION ALL
    SELECT codEquipo_visita AS codEquipo
    FROM Partido p
    JOIN Cancha c ON p.nomCancha = c.nomCancha
    WHERE c.capCancha > 2000
) AS equipos_partidos ON e.codEquipo = equipos_partidos.codEquipo
WHERE e.regionEquipo IN ('Sur', 'Norte')
GROUP BY e.codEquipo, e.nomEquipo
HAVING COUNT(e.codEquipo) > 2;

--8
SELECT TOP 1
    A.ciArbitro,
    nomArbitro,
    apelArbitro,
    celularArbitro,
    dirArbitro,
    mailArbitro,
    SUM(D.cntRojas) AS CantRojas
FROM
    Arbitro A
JOIN Formulario F ON A.ciArbitro = F.ciArbitro
JOIN Detalle D ON F.numForm = D.numForm
GROUP BY
    A.ciArbitro,
    nomArbitro,
    apelArbitro,
    celularArbitro,
    dirArbitro,
    mailArbitro
ORDER BY CantRojas DESC;


--9
ALTER TABLE Equipo 
ADD FundaLiga char(1);

UPDATE Equipo
SET FundaLiga = 'S'
WHERE DATEDIFF(YEAR, fundacionEquipo, GETDATE()) > 50;


--10
DELETE FROM Jugador
WHERE tipoJug = 'Profesional' AND carnetVto IS NULL;
