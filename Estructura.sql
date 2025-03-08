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
	a�o int not null,
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
	idPagoAdm int identity(2000,1000) primary key,
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
	idPagoAdm int foreign key references tblPagoAdm(idPagoAdm),
	mesFacturacion date not null,
	interesMora float not null,
	saldo float not null,
	ValorMensual float not null,
	valorFactura float not null
)


