--CREACION DE TABLAS Y BASES DE DATOS.

create database Proyecto_Bases

use Proyecto_Bases

CREATE TABLE tblTipo(
	idTipo int identity(1,1) primary key,
	descripcion varchar(50) not null
)

CREATE TABLE tblPropietario(
	idPro int identity(10,1) primary key,
	nombre varchar(50) not null,
	direccion varchar(50) not null,
	email varchar(50) not null,
	telefono int not null
)

CREATE TABLE tblCuotaExtra(
	codigoCuota int identity(1,1) primary key,
	mesCuota date not null,
	finalidad varchar(50) not null,
	valorCuota float not null,
)

CREATE TABLE tblPresupuestoG(
	idPresupuesto int identity(2000,1) primary key,
	codigoCuota int foreign key references tblCuotaExtra(codigoCuota),
	a�o date not null,
	valorPresupuesto float not null,
)

CREATE TABLE tblInmueble(
	codigoIn int identity(10,10) primary key,
	idTipo int foreign key references tblTipo(idTipo),
	idPro int foreign key references tblPropietario(idPro),
	area float not null,
)

CREATE TABLE tblPropietario_Inmueble(
	idPro int foreign key references tblPropietario(idPro),
	codigoIn int foreign key references tblInmueble(codigoIn),
	porcentParticipacion float,
	estadoCartera float
)

CREATE TABLE tblPagoAdm(
	idPagoAdm int identity(10000,1) primary key,
	idPro int foreign key references tblPropietario(idPro),
	codigoIn int foreign key references tblInmueble(codigoIn),
	fechaPago date not null,
	valorPago float not null
)


CREATE TABLE tblFactura(
	codigoFactura int identity(100,5) primary key,
	idPro int foreign key references tblPropietario(idPro),
	idPresupuesto int foreign key references tblPresupuestoG(idPresupuesto),
	codigoIn int foreign key references tblInmueble(codigoIn),
	codigoCuota int foreign key references tblCuotaExtra(codigoCuota),
	mesFacturacion date not null,
	interesMora float not null,
	saldo float not null,
	ValorMensual float not null,
	valorFactura float not null
)

--Insertar datos en la tabla propietario

INSERT INTO tblPropietario values('Samuel','Calle 7 #30','samuelo@gmail.com',7582113);
INSERT INTO tblPropietario values('Yeison','Calle 10 #50','yeiga@gmail.com',3208614);
INSERT INTO tblPropietario values('Laura','Carrera 15 #21','laupe@hotmail.com',5426163);
INSERT INTO tblPropietario values('David','Calle 2 #5','davma@gmail.com',8326468);
INSERT INTO tblPropietario values('Leon','Calle 70 #50','leonchito@hotmail.com',4578811);

INSERT INTO tblPropietario values('Alonso','Avenida 7 #30','alonchova@gmail.com',5582813);
INSERT INTO tblPropietario values('Manuel','Calle 90 #13','manolovi@hotmail.com',8245614);
INSERT INTO tblPropietario values('Gabriel','Carrera 11 #22','gabildan@hotmail.com',5582783);
INSERT INTO tblPropietario values('Carlos','Calle 100 #98','calicheta@gmail.com',8572913);
INSERT INTO tblPropietario values('Juan','Avenida 43 #20','Caballober@gmail.com',9585112);

INSERT INTO tblPropietario values('Camila','Calle 67 #10','camilop@gmail.com',5689811);
INSERT INTO tblPropietario values('Leonardo','Calle 32 #56','leoma@hotmail.com',2456187);
INSERT INTO tblPropietario values('Santiago','Carrera 2 #82','sanvale@hotmail.com',4599781);
INSERT INTO tblPropietario values('Cristian','Calle 99 #11','crisprilla@gmail.com',7772910);
INSERT INTO tblPropietario values('Harold','Carrera 11 #10','harmu@gmail.com',2587429);


SELECT*FROM tblPropietario

--Insertar datos de los 3 tipos de viviendas de un inmueble
INSERT INTO tblTipo values('Apartamento');
INSERT INTO tblTipo values('Garage');
INSERT INTO tblTipo values('Cuarto �til');

SELECT*FROM tblTipo


--Insertar datos del tblcuotaextra

INSERT INTO tblCuotaExtra values('2015-01-15','Reparacion piscina',120.000);
INSERT INTO tblCuotaExtra values('2015-11-15','Reparacion porteria',100.000);
INSERT INTO tblCuotaExtra values('2016-01-20','Pintar el edificio',150.000);
INSERT INTO tblCuotaExtra values('2016-12-10','Reparacion senderos peatonales',90.000);
INSERT INTO tblCuotaExtra values('2017-01-25','Remodelacion parqueaderos',130.000);

INSERT INTO tblCuotaExtra values('2017-09-30','Reparacion Ascensor',160.000);
INSERT INTO tblCuotaExtra values('2018-02-14','Arreglo jardines',60.000);
INSERT INTO tblCuotaExtra values('2018-11-18','Colocar pasamanos en escaleras',110.000);
INSERT INTO tblCuotaExtra values('2019-03-10','Poner parqueadero para visitantes',120.000);
INSERT INTO tblCuotaExtra values('2019-12-15','Poner botes de basura mas grandes',50.000);

INSERT INTO tblCuotaExtra values('2020-01-30','Reemplazar sistema de iluminacion',140.000);
INSERT INTO tblCuotaExtra values('2020-09-11','Colocar sistema de seguridad y alarma',90.000);
INSERT INTO tblCuotaExtra values('2021-02-17','Remodelacion salon de eventos',115.000);
INSERT INTO tblCuotaExtra values('2021-10-10','Renovacion fachada edificio',170.000);
INSERT INTO tblCuotaExtra values('2022-03-13','Instalar paneles solares para el agua caliente',200.000);


--Insertar datos tblpresupuesto

INSERT INTO tblPresupuestoG values(15,'2022-03-15',3000000);
INSERT INTO tblPresupuestoG values(14,'2021-10-15',4500000);
INSERT INTO tblPresupuestoG values(13,'2021-02-15',6000000);
INSERT INTO tblPresupuestoG values(12,'2020-09-15',8000000);
INSERT INTO tblPresupuestoG values(11,'2020-01-30',5000000);

INSERT INTO tblPresupuestoG values(10,'2019-12-15',7000000);
INSERT INTO tblPresupuestoG values(9,'2019-03-10',9000000);
INSERT INTO tblPresupuestoG values(8,'2018-11-18',3500000);
INSERT INTO tblPresupuestoG values(7,'2018-02-14',2000000);
INSERT INTO tblPresupuestoG values(6,'2017-09-30',8000000);

INSERT INTO tblPresupuestoG values(5,'2017-01-15',7000000);
INSERT INTO tblPresupuestoG values(4,'2016-12-10',5500000);
INSERT INTO tblPresupuestoG values(3,'2016-01-18',4000000);
INSERT INTO tblPresupuestoG values(2,'2015-11-14',6000000);
INSERT INTO tblPresupuestoG values(1,'2015-01-30',3800000);


--Insertar datos tblInmueble

INSERT INTO tblInmueble values(1,10,30);
INSERT INTO tblInmueble values(3,11,15);
INSERT INTO tblInmueble values(2,12,20);
INSERT INTO tblInmueble values(2,13,25);
INSERT INTO tblInmueble values(1,14,18);


INSERT INTO tblInmueble values(2,15,20);
INSERT INTO tblInmueble values(1,16,15);
INSERT INTO tblInmueble values(1,17,20);
INSERT INTO tblInmueble values(3,18,25);
INSERT INTO tblInmueble values(2,19,18);

INSERT INTO tblInmueble values(3,20,20);
INSERT INTO tblInmueble values(2,21,15);
INSERT INTO tblInmueble values(2,22,20);
INSERT INTO tblInmueble values(3,10,25);
INSERT INTO tblInmueble values(2,10,18);


--INSERTAR DATOS TBLPROPIETARIOINMUEBLE

INSERT INTO tblPropietario_Inmueble values(10,10,100,2000000);
INSERT INTO tblPropietario_Inmueble values(11,20,75,1000000);
INSERT INTO tblPropietario_Inmueble values(12,30,100,4000000);
INSERT INTO tblPropietario_Inmueble values(13,40,100,5000000);
INSERT INTO tblPropietario_Inmueble values(14,50,100,6000000);

INSERT INTO tblPropietario_Inmueble values(15,60,100,4000000);
INSERT INTO tblPropietario_Inmueble values(16,70,100,2000000);
INSERT INTO tblPropietario_Inmueble values(17,80,100,2000000);
INSERT INTO tblPropietario_Inmueble values(18,90,100,6000000);
INSERT INTO tblPropietario_Inmueble values(19,100,100,1000000);


INSERT INTO tblPropietario_Inmueble values(20,110,100,5000000);
INSERT INTO tblPropietario_Inmueble values(21,120,100,2000000);
INSERT INTO tblPropietario_Inmueble values(22,130,100,4000000);
INSERT INTO tblPropietario_Inmueble values(23,140,100,1000000);
INSERT INTO tblPropietario_Inmueble values(24,150,100,1000000);


--INSERTAR DATOS TBLPAGOADMI

INSERT INTO tblPagoAdm values(10,10,'2019-02-23',200000);
INSERT INTO tblPagoAdm values(11,20,'2018-01-22',300000);
INSERT INTO tblPagoAdm values(12,30,'2019-05-22',350000);
INSERT INTO tblPagoAdm values(13,40,'2020-04-18',250000);
INSERT INTO tblPagoAdm values(14,50,'2018-02-13',400000);

INSERT INTO tblPagoAdm values(15,60,'2020-01-14',200000);
INSERT INTO tblPagoAdm values(16,70,'2019-08-22',500000);
INSERT INTO tblPagoAdm values(17,80,'2021-02-18',150000);
INSERT INTO tblPagoAdm values(18,90,'2022-01-28',350000);
INSERT INTO tblPagoAdm values(19,100,'2017-02-24',200000);

INSERT INTO tblPagoAdm values(20,110,'2021-08-24',200000);
INSERT INTO tblPagoAdm values(21,120,'2022-03-12',250000);
INSERT INTO tblPagoAdm values(22,130,'2019-01-18',250000);
INSERT INTO tblPagoAdm values(23,140,'2021-04-28',350000);
INSERT INTO tblPagoAdm values(24,150,'2018-01-24',250000);


--INSERTAR DATOS tblfactura

INSERT INTO tblFactura values(10,2001,10,1,'2015-01-23',1.5,500000,980000,800000);
INSERT INTO tblFactura values(11,2002,20,2,'2017-03-22',1.5,800000,800000,400000);
INSERT INTO tblFactura values(12,2003,30,3,'2018-01-23',1.5,600000,1500000,700000);
INSERT INTO tblFactura values(13,2004,40,4,'2016-05-21',1.5,900000,900000,500000);
INSERT INTO tblFactura values(14,2005,50,5,'2019-07-13',1.5,800000,750000,300000);

INSERT INTO tblFactura values(15,2006,60,6,'2020-03-16',1.5,900000,2000000,900000);
INSERT INTO tblFactura values(16,2007,70,7,'2018-02-21',1.5,200000,1000000,400000);
INSERT INTO tblFactura values(17,2008,80,8,'2020-01-21',1.5,900000,500000,200000);
INSERT INTO tblFactura values(18,2009,90,9,'2019-06-22',1.5,200000,2000000,600000);
INSERT INTO tblFactura values(19,2010,100,10,'2016-08-13',1.5,300000,1300000,400000);

INSERT INTO tblFactura values(20,2011,110,11,'2022-02-18',1.5,900000,1500000,900000);
INSERT INTO tblFactura values(21,2012,120,12,'2019-02-17',1.5,500000,1400000,400000);
INSERT INTO tblFactura values(22,2013,130,13,'2018-06-19',1.5,300000,1000000,600000);
INSERT INTO tblFactura values(23,2014,140,14,'2015-08-21',1.5,400000,1200000,200000);
INSERT INTO tblFactura values(24,2015,150,15,'2018-04-27',1.5,700000,4000000,800000);


select*from tblFactura