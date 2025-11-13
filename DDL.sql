CREATE DATABASE Revista
GO
USE Revista
GO
CREATE TABLE Equipo(codEquipo character(3) not null, 
                    nomEquipo varchar(30) not null, 
					presEquipo varchar(30) not null, 
					fundacionEquipo date not null, 
					regionEquipo varchar(20), 
					colorEquipo varchar(20),
					constraint pk_Equipo primary key(codEquipo),
					constraint ck_FechaEquipo check(fundacionEquipo < getdate()),
					constraint uk_PresEquipo unique(presEquipo))
go
CREATE TABLE Jugador(carnJug int not null, 
                     ciJug int not null, 
					 nomJug varchar(20) not null, 
					 apeJug varchar(20) not null, 
					 nacJug date not null, 
					 telJug varchar(30) not null, 
					 tipoJug varchar(11) not null, 
					 carnetNro int, 
					 carnetVto date, 
					 codEquipo character(3),
					 constraint pk_Jugador primary key(carnJug),
					 constraint fk_EquipoJug foreign key(codEquipo) references Equipo(codEquipo),
					 constraint uk_CiJugador unique(cijug),
					 constraint uk_TelJugador unique(telJug),
					 constraint ck_TipoJug check(tipoJug in('Profesional','Amateur')))
go
CREATE TABLE Cancha(nomCancha character(10) not null, 
                    capCancha int, 
					codEquipo character(3),
					constraint pk_Cancha primary key(nomCancha),
					constraint fk_EquipoCancha foreign key(codEquipo) references Equipo(codEquipo),
					constraint ck_CapCancha check(capCancha >= 1000))
go
CREATE TABLE Direccion(id_Direccion int identity not null, 
                       nomCancha character(10), 
					   calle varchar(30), 
					   numero int,
					   constraint pk_Direccion primary key(id_Direccion),
					   constraint fk_CanchaDir foreign key(nomCancha) references Cancha(nomCancha))
go
CREATE TABLE Arbitro(ciArbitro int not null, 
                     nomArbitro varchar(30) not null, 
					 apelArbitro varchar(30) not null, 
					 celularArbitro varchar(50), 
					 dirArbitro varchar(30), 
					 mailArbitro varchar(50) not null,
					 constraint pk_Arbitro primary key(ciArbitro),
					 constraint uk_MailArbitro unique(mailArbitro))
go
CREATE TABLE Formulario(numForm int identity not null, 
                       fchForm date not null, 
					   ciArbitro int,
					   constraint pk_Formulario primary key(numForm),
					   constraint fk_ArbitroForm foreign key(ciArbitro) references Arbitro(ciArbitro))
go
CREATE TABLE Detalle(numForm int not null, 
                     linDet int not null, 
					 cntRojas int, 
					 cntAmarillas int, 
					 cntGoles int, 
					 carnJug int,
					 constraint pk_Detalle primary key(numForm,linDet),
					 constraint fk_FormDetalle foreign key(numForm) references Formulario(numForm),
					 constraint fk_JugDetalle foreign key(carnJug) references Jugador(carnjug))
go
-- Se crea la super-clave idPartido y se crea la restriccion unique para la clave de 3FN
CREATE TABLE Partido(idPartido int identity not null,
                     codEquipo_local character(3) not null, 
					 codEquipo_visita character(3) not null, 
					 fecha datetime, 
					 GL int, 
					 GV int, 
					 ciArbitro int, 
					 nomCancha character(10) not null,
					 constraint pk_PArtido primary key(idPartido),
					 constraint uk_Partido unique(codEquipo_local,codEquipo_visita,fecha),
					 constraint fk_Local foreign key(codEquipo_local) references Equipo(codEquipo),
					 constraint fk_Visita foreign key(codEquipo_visita) references Equipo(codEquipo),
					 constraint fk_ArbitroPartido foreign key(ciArbitro) references Arbitro(ciArbitro),
					 constraint fk_CanchaPartido foreign key(nomCancha) references Cancha(nomCancha))
go
