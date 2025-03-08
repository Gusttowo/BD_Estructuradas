use Proyecto_Bases
--Insertar datos en la tabla propietario

INSERT INTO tblPropietario values('Yeison','Calle 10 #50','yeiga@gmail.com',3208614);
INSERT INTO tblPropietario values('Samuel','Calle 7 #30','samuelo@gmail.com',7582113);
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

INSERT INTO tblCuotaExtra values('2022-01-15','Reparacion piscina',120.000);
INSERT INTO tblCuotaExtra values('2022-11-15','Reparacion porteria',100.000);
INSERT INTO tblCuotaExtra values('2022-01-20','Pintar el edificio',150.000);
INSERT INTO tblCuotaExtra values('2022-12-10','Reparacion senderos peatonales',90.000);
INSERT INTO tblCuotaExtra values('2022-01-25','Remodelacion parqueaderos',130.000);

INSERT INTO tblCuotaExtra values('2021-09-30','Reparacion Ascensor',160.000);
INSERT INTO tblCuotaExtra values('2021-02-14','Arreglo jardines',60.000);
INSERT INTO tblCuotaExtra values('2021-11-18','Colocar pasamanos en escaleras',110.000);
INSERT INTO tblCuotaExtra values('2021-03-10','Poner parqueadero para visitantes',120.000);
INSERT INTO tblCuotaExtra values('2021-12-15','Poner botes de basura mas grandes',50.000);

INSERT INTO tblCuotaExtra values('2020-01-30','Reemplazar sistema de iluminacion',140.000);
INSERT INTO tblCuotaExtra values('2020-09-11','Colocar sistema de seguridad y alarma',90.000);
INSERT INTO tblCuotaExtra values('2021-02-17','Remodelacion salon de eventos',115.000);
INSERT INTO tblCuotaExtra values('2021-10-10','Renovacion fachada edificio',170.000);
INSERT INTO tblCuotaExtra values('2022-03-13','Instalar paneles solares para el agua caliente',200.000);

SELECT*FROM tblCuotaExtra


--Insertar datos tblpresupuestoG

INSERT INTO tblPresupuestoG values(2022,3000000);
INSERT INTO tblPresupuestoG values(2021,4500000);
INSERT INTO tblPresupuestoG values(2020,6000000);




SELECT*FROM tblPresupuestoG


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

INSERT INTO tblPagoAdm values(10,10,'2021-02-23',200000);
INSERT INTO tblPagoAdm values(11,20,'2022-01-22',300000);
INSERT INTO tblPagoAdm values(12,30,'2022-05-22',350000);
INSERT INTO tblPagoAdm values(13,40,'2020-04-18',250000);
INSERT INTO tblPagoAdm values(14,50,'2021-02-13',400000);

INSERT INTO tblPagoAdm values(15,60,'2020-01-14',200000);
INSERT INTO tblPagoAdm values(16,70,'2020-08-22',500000);
INSERT INTO tblPagoAdm values(17,80,'2021-02-18',150000);
INSERT INTO tblPagoAdm values(18,90,'2022-01-28',350000);
INSERT INTO tblPagoAdm values(19,100,'2022-02-24',200000);

INSERT INTO tblPagoAdm values(20,110,'2021-08-24',200000);
INSERT INTO tblPagoAdm values(21,120,'2022-03-12',250000);
INSERT INTO tblPagoAdm values(22,130,'2020-01-18',250000);
INSERT INTO tblPagoAdm values(23,140,'2021-04-28',350000);
INSERT INTO tblPagoAdm values(24,150,'2021-01-24',250000);

SELECT*FROM tblPagoAdm



--INSERTAR DATOS tblfactura

INSERT INTO tblFactura values(10,2000,10,1,2000,'2022-01-23',1.5,500000,980000,800000);
INSERT INTO tblFactura values(11,2000,20,2,3000,'2022-03-22',1.5,800000,800000,400000);
INSERT INTO tblFactura values(12,2000,30,3,4000,'2022-01-23',1.5,600000,1500000,700000);
INSERT INTO tblFactura values(13,2000,40,4,5000,'2022-05-21',1.5,900000,900000,500000);
INSERT INTO tblFactura values(14,2000,50,5,6000,'2022-07-13',1.5,800000,750000,300000);

INSERT INTO tblFactura values(15,2000,60,6,7000,'2020-03-16',1.5,900000,2000000,900000);
INSERT INTO tblFactura values(16,2000,70,7,8000,'2021-02-21',1.5,200000,1000000,400000);
INSERT INTO tblFactura values(17,2001,80,8,9000,'2020-01-21',1.5,900000,500000,200000);
INSERT INTO tblFactura values(18,2001,90,9,10000,'2021-06-22',1.5,200000,2000000,600000);
INSERT INTO tblFactura values(19,2001,100,10,11000,'2021-08-13',1.5,300000,1300000,400000);

INSERT INTO tblFactura values(20,2001,110,11,12000,'2022-02-18',1.5,900000,1500000,900000);
INSERT INTO tblFactura values(21,2002,120,12,13000,'2022-02-17',1.5,500000,1400000,400000);
INSERT INTO tblFactura values(22,2000,130,13,14000,'2021-06-19',1.5,300000,1000000,600000);
INSERT INTO tblFactura values(23,2000,140,14,15000,'2021-08-21',1.5,400000,1200000,200000);
INSERT INTO tblFactura values(24,2000,150,15,16000,'2021-04-27',1.5,700000,4000000,800000);

INSERT INTO tblFactura values(10,2000,10,1,12000,'2022-04-27',1.5,700000,4000000,800000);
INSERT INTO tblFactura values(11,2000,20,1,3000,'2022-03-22',1.5,100000,800000,0);
INSERT INTO tblFactura values(12,2000,30,3,4000,'2022-01-23',1.5,200000,0,0);

SELECT * FROM tblFactura