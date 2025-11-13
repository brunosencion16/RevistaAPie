set dateformat ymd
go
USE Revista
go
-- Equipos
insert into Equipo values('POM','Pompeya FC','Julio Dalimo','1970-08-16','Sur','Verde'),
                         ('MAR','Maracana FC','Darwin Diaz','1968-12-14','Sur','Azul'),
						 ('SEM','CA Semillero','Marcelo Beltran','1978-02-10','Norte','Verde'),
						 ('RUR','CA Ruralistas','Julio Cesar Mendez','1972-03-01','Centro','Azul'),
						 ('COM','Comercial FC','Marcos Castro','1980-05-10','Oeste','Amarillo'),
						 ('NAC','Nacional Central','Atilio Gomez','1960-08-16','Sur','Blanco'),
						 ('EMP','El Empuje FC','Carlos Escobar','1977-12-10','Norte','Celeste'),
						 ('FCC','Ferrocarril FC','Angel Debritos','1979-07-16','Centro','Negro')
go
-- Jugadores del Equipo 1
INSERT INTO Jugador (carnJug, ciJug, nomJug, apeJug, nacJug, telJug, tipoJug, carnetNro, carnetVto, codEquipo)
VALUES
    (1, 12434567, 'Jugador1', 'Apellido1', '1990-01-01', '0123456789', 'Profesional', 111, '2023-01-01', 'POM'),
    (2, 23445678, 'Jugador2', 'Apellido2', '1991-02-02', '0234567890', 'Amateur', null, null, 'POM'),
    (3, 34456789, 'Jugador3', 'Apellido3', '1992-03-03', '0345678901', 'Profesional', 333, '2023-03-03', 'POM'),
    (4, 45467890, 'Jugador4', 'Apellido4', '1993-04-04', '0456789012', 'Amateur', null, null, 'POM'),
    (5, 56478901, 'Jugador5', 'Apellido5', '1994-05-05', '0567890123', 'Profesional', 555, '2023-05-05', 'POM'),
    (6, 67489012, 'Jugador6', 'Apellido6', '1995-06-06', '0678901234', 'Amateur', null, null, 'POM'),
    (7, 78490123, 'Jugador7', 'Apellido7', '1996-07-07', '0789012345', 'Profesional', 777, '2023-07-07', 'POM'),
    (8, 89401234, 'Jugador8', 'Apellido8', '1997-08-08', '0890123456', 'Amateur', null, null, 'POM'),
    (9, 90412345, 'Jugador9', 'Apellido9', '1998-09-09', '0901234567', 'Profesional', 999, '2023-09-09', 'POM'),
    (10, 1423456, 'Jugador10', 'Apellido10', '1999-10-10', '0012345678', 'Amateur', null, null, 'POM'),
    (11, 14234560, 'Jugador11', 'Apellido11', '2000-11-11', '0123450987', 'Profesional', 1111, '2023-11-11', 'POM');
go
-- Jugadores del Equipo 2
INSERT INTO Jugador (carnJug, ciJug, nomJug, apeJug, nacJug, telJug, tipoJug, carnetNro, carnetVto, codEquipo)
VALUES
    (12, 235456710, 'Jugador12', 'Apellido12', '1989-12-12', '1234567012', 'Profesional', 1212, '2023-12-12', 'MAR'),
    (13, 345567820, 'Jugador13', 'Apellido13', '1988-11-11', '1345678123', 'Amateur', null, null, 'MAR'),
    (14, 456758930, 'Jugador14', 'Apellido14', '1987-10-10', '1456789234', 'Profesional', 1414, '2023-10-10', 'MAR'),
    (15, 567895040, 'Jugador15', 'Apellido15', '1986-09-09', '1567890345', 'Amateur', null, null, 'MAR'),
    (16, 678901550, 'Jugador16', 'Apellido16', '1985-08-08', '1678901456', 'Profesional', 1616, '2023-08-08', 'MAR'),
    (17, 789012650, 'Jugador17', 'Apellido17', '1984-07-07', '1789012567', 'Amateur', null, null, 'MAR'),
    (18, 890123750, 'Jugador18', 'Apellido18', '1983-06-06', '1890123678', 'Profesional', 1818, '2023-06-06', 'MAR'),
    (19, 901235480, 'Jugador19', 'Apellido19', '1982-05-05', '1901234789', 'Amateur', null, null, 'MAR'),
    (20, 012345590, 'Jugador20', 'Apellido20', '1981-04-04', '1012345890', 'Profesional', 2020, '2023-04-04', 'MAR'),
    (21, 123545000, 'Jugador21', 'Apellido21', '1980-03-03', '1123450901', 'Amateur', null, null, 'MAR'),
    (22, 234556110, 'Jugador22', 'Apellido22', '1979-02-02', '1234561012', 'Profesional', 2222, '2023-02-02', 'MAR');
go
-- Jugadores del Equipo 3
INSERT INTO Jugador (carnJug, ciJug, nomJug, apeJug, nacJug, telJug, tipoJug, carnetNro, carnetVto, codEquipo)
VALUES
    (23, 364567231, 'Jugador23', 'Apellido23', '1990-01-01', '23458672345', 'Profesional', 2323, '2023-01-01', 'SEM'),
    (24, 456678341, 'Jugador24', 'Apellido24', '1991-02-02', '24568783456', 'Amateur', null, null, 'SEM'),
    (25, 567689451, 'Jugador25', 'Apellido25', '1992-03-03', '25678894567', 'Profesional', 2525, '2023-03-03', 'SEM'),
    (26, 678960561, 'Jugador26', 'Apellido26', '1993-04-04', '26788905678', 'Amateur', null, null, 'SEM'),
    (27, 789016671, 'Jugador27', 'Apellido27', '1994-05-05', '27890816789', 'Profesional', 2727, '2023-05-05', 'SEM'),
    (28, 890127681, 'Jugador28', 'Apellido28', '1995-06-06', '28901287890', 'Amateur', null, null, 'SEM'),
    (29, 901238961, 'Jugador29', 'Apellido29', '1996-07-07', '29012388901', 'Profesional', 2929, '2023-07-07', 'SEM'),
    (30, 012349016, 'Jugador30', 'Apellido30', '1997-08-08', '20123489012', 'Amateur', null, null, 'SEM'),
    (31, 123645011, 'Jugador31', 'Apellido31', '1998-09-09', '21234580123', 'Profesional', 3131, '2023-09-09', 'SEM'),
    (32, 234566121, 'Jugador32', 'Apellido32', '1999-10-10', '22345681234', 'Amateur', null, null, 'SEM'),
    (33, 345676231, 'Jugador33', 'Apellido33', '2000-11-11', '23456782345', 'Profesional', 3333, '2023-11-11', 'SEM');
go
-- Jugadores del Equipo 4
INSERT INTO Jugador (carnJug, ciJug, nomJug, apeJug, nacJug, telJug, tipoJug, carnetNro, carnetVto, codEquipo)
VALUES
    (43, 745678342, 'Jugador43', 'Apellido43', '1989-12-12', '34956783456', 'Profesional', 4343, '2023-12-12', 'RUR'),
    (44, 576789452, 'Jugador44', 'Apellido44', '1988-11-11', '35697894567', 'Amateur', null, null, 'RUR'),
    (45, 677890562, 'Jugador45', 'Apellido45', '1987-10-10', '36789905678', 'Profesional', 4545, '2023-10-10', 'RUR'),
    (46, 789701672, 'Jugador46', 'Apellido46', '1986-09-09', '37890916789', 'Amateur', null, null, 'RUR'),
    (47, 890172782, 'Jugador47', 'Apellido47', '1985-08-08', '38901297890', 'Profesional', 4747, '2023-08-08', 'RUR'),
    (48, 901237892, 'Jugador48', 'Apellido48', '1984-07-07', '39012389901', 'Amateur', null, null, 'RUR'),
    (49, 012349702, 'Jugador49', 'Apellido49', '1983-06-06', '30123490912', 'Profesional', 4949, '2023-06-06', 'RUR'),
    (50, 123450172, 'Jugador50', 'Apellido50', '1982-05-05', '31234501293', 'Amateur', null, null, 'RUR'),
    (51, 234561227, 'Jugador51', 'Apellido51', '1981-04-04', '32345619234', 'Profesional', 5151, '2023-04-04', 'RUR'),
    (52, 345677232, 'Jugador52', 'Apellido52', '1980-03-03', '33456729345', 'Amateur', null, null, 'RUR'),
    (53, 456787342, 'Jugador53', 'Apellido53', '1979-02-02', '34567839456', 'Profesional', 5353, '2023-02-02', 'RUR');
go
-- Jugadores del Equipo 5
INSERT INTO Jugador (carnJug, ciJug, nomJug, apeJug, nacJug, telJug, tipoJug, carnetNro, carnetVto, codEquipo)
VALUES
    (54, 856789453, 'Jugador54', 'Apellido54', '1990-01-01', '45667894567', 'Profesional', 5454, '2023-01-01', 'COM'),
    (55, 687890563, 'Jugador55', 'Apellido55', '1991-02-02', '46768905678', 'Amateur', null, null, 'COM'),
    (56, 788901673, 'Jugador56', 'Apellido56', '1992-03-03', '47896016789', 'Profesional', 5656, '2023-03-03', 'COM'),
    (57, 890812783, 'Jugador57', 'Apellido57', '1993-04-04', '48901627890', 'Amateur', null, null, 'COM'),
    (58, 901283893, 'Jugador58', 'Apellido58', '1994-05-05', '49012368901', 'Profesional', 5858, '2023-05-05', 'COM'),
    (59, 012348903, 'Jugador59', 'Apellido59', '1995-06-06', '40123496012', 'Amateur', null, null, 'COM'),
    (60, 123450813, 'Jugador60', 'Apellido60', '1996-07-07', '41234501623', 'Profesional', 6060, '2023-07-07', 'COM'),
    (61, 234561283, 'Jugador61', 'Apellido61', '1997-08-08', '42345612364', 'Amateur', null, null, 'COM'),
    (62, 345672338, 'Jugador62', 'Apellido62', '1998-09-09', '43456723465', 'Profesional', 6262, '2023-09-09', 'COM'),
    (63, 456878343, 'Jugador63', 'Apellido63', '1999-10-10', '44567836456', 'Amateur', null, null, 'COM'),
    (64, 567889453, 'Jugador64', 'Apellido64', '2000-11-11', '45678945667', 'Profesional', 6464, '2023-11-11', 'COM');
go
-- Jugadores del Equipo 6
INSERT INTO Jugador (carnJug, ciJug, nomJug, apeJug, nacJug, telJug, tipoJug, carnetNro, carnetVto, codEquipo)
VALUES
    (65, 967890564, 'Jugador65', 'Apellido65', '1989-12-12', '55678905678', 'Profesional', 6565, '2023-12-12', 'NAC'),
    (66, 798901674, 'Jugador66', 'Apellido66', '1988-11-11', '55789016789', 'Profesional', 6666, '2023-11-11', 'NAC'),
    (67, 899012784, 'Jugador67', 'Apellido67', '1987-10-10', '58590127890', 'Profesional', 6767, '2023-10-10', 'NAC'),
    (68, 901923894, 'Jugador68', 'Apellido68', '1986-09-09', '59051238901', 'Profesional', 6868, '2023-09-09', 'NAC'),
    (69, 012394904, 'Jugador69', 'Apellido69', '1985-08-08', '50125349012', 'Profesional', 6969, '2023-08-08', 'NAC'),
    (70, 123459014, 'Jugador70', 'Apellido70', '1984-07-07', '51234550123', 'Amateur', null, null, 'NAC'),
    (71, 234561924, 'Jugador71', 'Apellido71', '1983-06-06', '52345651234', 'Profesional', 7171, '2023-06-06', 'NAC'),
    (72, 345672394, 'Jugador72', 'Apellido72', '1982-05-05', '53456725345', 'Amateur', null, null, 'NAC'),
    (73, 456783449, 'Jugador73', 'Apellido73', '1981-04-04', '54567834556', 'Profesional', 7373, '2023-04-04', 'NAC'),
    (74, 567899454, 'Jugador74', 'Apellido74', '1980-03-03', '55678945657', 'Profesional', 7474, '2023-03-03', 'NAC'),
    (75, 678905964, 'Jugador75', 'Apellido75', '1979-02-02', '56789056785', 'Profesional', 7575, '2023-02-02', 'NAC');
go
-- Jugadores del Equipo 7
INSERT INTO Jugador (carnJug, ciJug, nomJug, apeJug, nacJug, telJug, tipoJug, carnetNro, carnetVto, codEquipo)
VALUES
    (76, 178901675, 'Jugador76', 'Apellido76', '1990-01-01', '46789016789', 'Profesional', 7676, '2023-01-01', 'EMP'),
    (77, 819012785, 'Jugador77', 'Apellido77', '1991-02-02', '64890127890', 'Profesional', 7777, '2023-02-02', 'EMP'),
    (78, 901123895, 'Jugador78', 'Apellido78', '1992-03-03', '69401238901', 'Profesional', 7878, '2023-03-03', 'EMP'),
    (79, 012134905, 'Jugador79', 'Apellido79', '1993-04-04', '60142349012', 'Amateur', null, null, 'EMP'),
    (80, 123415015, 'Jugador80', 'Apellido80', '1994-05-05', '61234450123', 'Profesional', 8080, '2023-05-05', 'EMP'),
    (81, 234561125, 'Jugador81', 'Apellido81', '1995-06-06', '62345461234', 'Profesional', 8181, '2023-06-06', 'EMP'),
    (82, 345672135, 'Jugador82', 'Apellido82', '1996-07-07', '63456742345', 'Profesional', 8282, '2023-07-07', 'EMP'),
    (83, 456783415, 'Jugador83', 'Apellido83', '1997-08-08', '64567834456', 'Amateur', null, null, 'EMP'),
    (84, 567189455, 'Jugador84', 'Apellido84', '1998-09-09', '65678945467', 'Profesional', 8484, '2023-09-09', 'EMP'),
    (85, 678910565, 'Jugador85', 'Apellido85', '1999-10-10', '66789056748', 'Profesional', 8585, '2023-10-10', 'EMP'),
    (86, 789011675, 'Jugador86', 'Apellido86', '2000-11-11', '67890167894', 'Profesional', 8686, '2023-11-11', 'EMP');
go
-- Jugadores del Equipo 8
INSERT INTO Jugador (carnJug, ciJug, nomJug, apeJug, nacJug, telJug, tipoJug, carnetNro, carnetVto, codEquipo)
VALUES
    (87, 289012786, 'Jugador87', 'Apellido87', '1989-12-12', '37890127890', 'Profesional', 8787, '2023-12-12', 'FCC'),
    (88, 920123896, 'Jugador88', 'Apellido88', '1988-11-11', '73901238901', 'Profesional', 8888, '2023-11-11', 'FCC'),
    (89, 012234906, 'Jugador89', 'Apellido89', '1987-10-10', '70312349012', 'Profesional', 8989, '2023-10-10', 'FCC'),
    (90, 123245016, 'Jugador90', 'Apellido90', '1986-09-09', '71233450123', 'Amateur', null, null, 'FCC'),
    (91, 234526126, 'Jugador91', 'Apellido91', '1985-08-08', '72343561234', 'Profesional', 9191, '2023-08-08', 'FCC'),
    (92, 345672236, 'Jugador92', 'Apellido92', '1984-07-07', '73456372345', 'Amateur', null, null, 'FCC'),
    (93, 456783246, 'Jugador93', 'Apellido93', '1983-06-06', '74567833456', 'Profesional', 9393, '2023-06-06', 'FCC'),
    (94, 567894526, 'Jugador94', 'Apellido94', '1982-05-05', '75678943567', 'Amateur', null, null, 'FCC'),
    (95, 678905662, 'Jugador95', 'Apellido95', '1981-04-04', '76789056378', 'Profesional', 9595, '2023-04-04', 'FCC'),
    (96, 782901676, 'Jugador96', 'Apellido96', '1980-03-03', '77890167839', 'Profesional', 9696, '2023-03-03', 'FCC'),
    (97, 890212786, 'Jugador97', 'Apellido97', '1979-02-02', '78901278903', 'Profesional', 9797, '2023-02-02', 'FCC');
go
-- Jugadores libres sin equipo
INSERT INTO Jugador (carnJug, ciJug, nomJug, apeJug, nacJug, telJug, tipoJug, carnetNro, carnetVto, codEquipo)
VALUES
    (100, 100012786, 'Jugador100', 'Apellido100', '1999-12-12', '59820127890', 'Profesional', 1288, null, null),
    (101, 101123896, 'Jugador101', 'Apellido101', '1995-11-11', '59821238901', 'Profesional', null, null, null),
    (102, 102234906, 'Jugador102', 'Apellido102', '1993-10-10', '59822349012', 'Profesional', null, null, null)


-- Canchas
insert into Cancha values('CANCHA_UNO',1500,'POM'),
                         ('CANCHA_DOS',1700,'MAR'),
						 ('CANCHA_3',2000,'SEM'),
						 ('CANCHA_4',3000,'RUR'),
						 ('CANCHA_5',1200,'COM'),
						 ('CANCHA_6',10000,'NAC'),
						 ('CANCHA_7',5000,'EMP'),
						 ('CANCHA_8',1450,'FCC')
go
-- Arbitros
INSERT INTO Arbitro (ciArbitro, nomArbitro, apelArbitro, celularArbitro, dirArbitro, mailArbitro)
VALUES 
    (1, 'Arbitro1', 'Apellido1', '123456789', 'Dirección1', 'arbitro1@example.com'),
    (2, 'Arbitro2', 'Apellido2', '234567890', 'Dirección2', 'arbitro2@example.com'),
    (3, 'Arbitro3', 'Apellido3', '345678901', 'Dirección3', 'arbitro3@example.com'),
    (4, 'Arbitro4', 'Apellido4', '456789012', 'Dirección4', 'arbitro4@example.com'),
    (5, 'Arbitro5', 'Apellido5', '567890123', 'Dirección5', 'arbitro5@example.com'),
    (6, 'Arbitro6', 'Apellido6', '678901234', 'Dirección6', 'arbitro6@example.com'),
    (7, 'Arbitro7', 'Apellido7', '789012345', 'Dirección7', 'arbitro7@example.com'),
    (8, 'Arbitro8', 'Apellido8', '890123456', 'Dirección8', 'arbitro8@example.com'),
    (9, 'Arbitro9', 'Apellido9', '901234567', 'Dirección9', 'arbitro9@example.com'),
    (10, 'Arbitro10', 'Apellido10', '012345678', 'Dirección10', 'arbitro10@example.com'),
    (11, 'Arbitro11', 'Apellido11', '123456789', 'Dirección11', 'arbitro11@example.com'),
    (12, 'Arbitro12', 'Apellido12', '234567890', 'Dirección12', 'arbitro12@example.com'),
    (13, 'Arbitro13', 'Apellido13', '345678901', 'Dirección13', 'arbitro13@example.com'),
    (14, 'Arbitro14', 'Apellido14', '456789012', 'Dirección14', 'arbitro14@example.com'),
    (15, 'Arbitro15', 'Apellido15', '567890123', 'Dirección15', 'arbitro15@example.com'),
    (16, 'Arbitro16', 'Apellido16', '678901234', 'Dirección16', 'arbitro16@example.com'),
    (17, 'Arbitro17', 'Apellido17', '789012345', 'Dirección17', 'arbitro17@example.com'),
    (18, 'Arbitro18', 'Apellido18', '890123456', 'Dirección18', 'arbitro18@example.com'),
    (19, 'Arbitro19', 'Apellido19', '901234567', 'Dirección19', 'arbitro19@example.com'),
    (20, 'Arbitro20', 'Apellido20', '012345678', 'Dirección20', 'arbitro20@example.com');
go
-- Inserción de formularios para cada árbitro
INSERT INTO Formulario (fchForm, ciArbitro)
VALUES 
    ('2023-01-01', 1),  -- Arbitro1
    ('2023-02-02', 2),  -- Arbitro2
    ('2023-03-03', 3),  -- Arbitro3
    ('2023-04-04', 4),  -- Arbitro4
    ('2023-05-05', 5),  -- Arbitro5
    ('2023-06-06', 6),  -- Arbitro6
    ('2023-07-07', 7),  -- Arbitro7
    ('2023-08-08', 8),  -- Arbitro8
    ('2023-09-09', 9),  -- Arbitro9
    ('2023-10-10', 10), -- Arbitro10
    ('2023-11-11', 11), -- Arbitro11
    ('2023-12-12', 12), -- Arbitro12
    ('2024-01-01', 13), -- Arbitro13
    ('2024-02-02', 14), -- Arbitro14
    ('2024-03-03', 15), -- Arbitro15
    ('2024-04-04', 16), -- Arbitro16
    ('2024-05-05', 17), -- Arbitro17
    ('2024-06-06', 18), -- Arbitro18
    ('2024-07-07', 19), -- Arbitro19
    ('2024-08-08', 20); -- Arbitro20
go
-- Partidos
INSERT INTO Partido (codEquipo_local, codEquipo_visita, fecha, GL, GV, ciArbitro, nomCancha) VALUES
('COM', 'EMP', '2023-01-01', 2, 1, 1, 'CANCHA_UNO'),
('FCC', 'MAR', '2023-01-02', 1, 1, 2, 'CANCHA_DOS'),
('NAC', 'POM', '2023-01-03', 3, 0, 3, 'CANCHA_3'),
('RUR', 'SEM', '2023-01-04', 0, 2, 4, 'CANCHA_4'),
('COM', 'FCC', '2023-01-05', 1, 1, 5, 'CANCHA_5'),
('EMP', 'MAR', '2023-01-06', 2, 2, 6, 'CANCHA_6'),
('NAC', 'POM', '2023-01-07', 3, 1, 7, 'CANCHA_7'),
('RUR', 'SEM', '2023-01-08', 0, 0, 8, 'CANCHA_8'),
('COM', 'FCC', '2023-01-09', 2, 1, 9, 'CANCHA_UNO'),
('EMP', 'MAR', '2023-01-10', 1, 3, 10, 'CANCHA_UNO'),
('NAC', 'POM', '2023-01-11', 2, 0, 11, 'CANCHA_UNO'),
('RUR', 'SEM', '2023-01-12', 0, 1, 12, 'CANCHA_DOS'),
('COM', 'FCC', '2023-01-13', 1, 1, 13, 'CANCHA_3'),
('EMP', 'MAR', '2023-01-14', 3, 0, 14, 'CANCHA_4'),
('NAC', 'POM', '2023-01-15', 1, 2, 15, 'CANCHA_5'),
('RUR', 'SEM', '2023-01-16', 0, 0, 16, 'CANCHA_6'),
('COM', 'FCC', '2023-01-17', 2, 1, 17, 'CANCHA_7'),
('EMP', 'MAR', '2023-01-18', 1, 3, 18, 'CANCHA_8'),
('NAC', 'POM', '2023-01-19', 2, 0, 19, 'CANCHA_UNO'),
('RUR', 'SEM', '2023-01-20', 0, 1, 20, 'CANCHA_UNO'),
('COM', 'FCC', '2023-01-21', 1, 1, 1, 'CANCHA_UNO'),
('EMP', 'MAR', '2023-01-22', 3, 0, 2, 'CANCHA_DOS'),
('NAC', 'POM', '2023-01-23', 2, 2, 3, 'CANCHA_3'),
('RUR', 'SEM', '2023-01-24', 1, 0, 4, 'CANCHA_4'),
('COM', 'FCC', '2023-01-25', 0, 3, 5, 'CANCHA_5'),
('EMP', 'MAR', '2023-01-26', 2, 1, 6, 'CANCHA_6'),
('NAC', 'POM', '2023-01-27', 1, 0, 7, 'CANCHA_7'),
('RUR', 'SEM', '2023-01-28', 0, 2, 8, 'CANCHA_8'),
('COM', 'FCC', '2023-01-29', 1, 1, 9, 'CANCHA_UNO'),
('EMP', 'MAR', '2023-01-30', 3, 0, 10, 'CANCHA_UNO');
GO
-- Detalle
INSERT INTO Detalle (numForm, linDet, cntRojas, cntAmarillas, cntGoles, carnJug) VALUES
(1, 1, 0, 1, 2, 1),
(2, 1, 1, 0, 0, 20),
(3, 1, 2, 1, 1, 50),
(4, 1, 0, 2, 3, 3),
(5, 1, 1, 1, 0, 10),
(6, 1, 0, 0, 1, 25),
(7, 1, 2, 0, 1, 75),
(8, 1, 0, 1, 2, 1),
(9, 1, 1, 1, 1, 15),
(10, 1, 0, 0, 1, 60),
(11, 1, 2, 1, 0, 5),
(12, 1, 0, 2, 2, 30),
(13, 1, 1, 0, 1, 80),
(14, 1, 0, 1, 3, 45),
(15, 1, 2, 0, 0, 12),
(16, 1, 1, 1, 1, 55),
(17, 1, 0, 0, 2, 70),
(18, 1, 2, 1, 1, 8),
(19, 1, 0, 1, 0, 6),
(20, 1, 1, 0, 1, 95);
go