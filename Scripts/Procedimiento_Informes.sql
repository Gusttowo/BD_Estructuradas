-----------------------------------------------------------------------
/*1.	El estado de cuenta de un propietario, indiciando una fecha de inicio y una fecha de finalizaci�n.*/
create procedure ObtenerEstadoCuenta
@id_propietario int,  @fecha_inicio date,  @fecha_final date

as
select tblInmueble.codigoIn, tblInmueble.area, tblInmueble.idTipo, tblPropietario.idPro, tblPropietario.nombre,tblFactura.mesFacturacion,
		tblFactura.ValorMensual, tblFactura.valorFactura, tblFactura.interesMora, tblFactura.saldo 
	from tblPropietario
	join tblPropietario_Inmueble on tblPropietario.idPro = tblPropietario_Inmueble.idPro
	join tblInmueble on tblPropietario_Inmueble.codigoIn = tblInmueble.codigoIn
	join tblFactura on tblPropietario.idPro = tblFactura.idPro and tblInmueble.codigoIn = tblFactura.codigoIn
	where tblPropietario.idPro = @id_propietario
	and tblFactura.mesFacturacion between @fecha_inicio and @fecha_final

exec ObtenerEstadoCuenta 10, '2022-01-23','2022-05-24'




-----------------------------------------------------------------
/*2. Listado de pagos y total recibido en un mes determinado*/

-- Listado De Pagos:

select valorPago, fechaPago 
from tblPagoAdm
where MONTH(fechaPago) = 01 and YEAR(fechaPago) = 2022

-- Total Pagos:

select SUM(valorPago) as TotalPago
from tblPagoAdm
where MONTH(fechaPago) = 01 and YEAR(fechaPago) = 2022



-----------------------------------------------------------------------
/*3.	Listado de los apartamentos morosos, aquellos que deben m�s de tres meses de administraci�n.*/
select tblInmueble.codigoIn, tblInmueble.area, tblInmueble.idTipo, tblPropietario.idPro, tblPropietario.nombre, 
       tblFactura.mesFacturacion, tblFactura.saldo
from tblPropietario
join tblPropietario_Inmueble on tblPropietario.idPro = tblPropietario_Inmueble.idPro
join tblInmueble on tblPropietario_Inmueble.codigoIn = tblInmueble.codigoIn
join tblFactura on tblPropietario.idPro = tblFactura.idPro and tblInmueble.codigoIn = tblFactura.codigoIn
where tblFactura.saldo > (tblFactura.ValorMensual * 3)
and tblInmueble.idTipo = 1 or tblInmueble.idTipo�=�1


-----------------------------------------------------
/*4.	Generar paz y salvo a una propiedad.*/
create procedure PazySalvo
@id_inmueble int
as
select tblInmueble.codigoIn, tblInmueble.area, tblInmueble.idTipo, tblPropietario.idPro, tblPropietario.nombre,
	   tblFactura.mesFacturacion, tblFactura.saldo, tblFactura.interesMora
from tblPropietario
join tblPropietario_Inmueble on tblPropietario.idPro = tblPropietario_Inmueble.idPro
join tblInmueble on tblPropietario_Inmueble.codigoIn = tblInmueble.codigoIn
join tblFactura on tblPropietario.idPro = tblFactura.idPro and tblInmueble.codigoIn = tblFactura.codigoIn
where tblInmueble.codigoIn = @id_inmueble and tblFactura.saldo = 0

exec�PazySalvo 60



----------------------------------------------------------------------------------------------
/*5.	Generar informe tributario a un propietario, se debe indicar que valor pago el propietario en 
un a�o determinado discriminado las cuotas de administraci�n y las cuotas extras.*/
create procedure InformeTributario @idPro int, @ano int
as 
select SUM(fac.valorFactura) as TotalFactura, SUM(adm.valorPago) as TotalAdministracion, SUM(cu.valorCuota) as TotalValorCuota
from tblFactura fac join tblPagoAdm adm 
on fac.idPagoAdm = adm.idPagoAdm
join tblCuotaExtra cu on cu.codigoCuota=fac.codigoCuota
where fac.idPro = @idPro and year(fac.mesFacturacion) = @ano
go

exec InformeTributario 15,2021





--Procedimiento almacenado para eliminar factura----
create procedure EliminarFactura 
@cod_factura int
as
delete from tblFactura where codigoFactura = @cod_factura;

exec�EliminarFactura



--Procedimiento almacenado para agregar una factura----
create procedure NuevaFactura @idPro int, @idPre int, @codigoIn int, @codigoCuota int, @idPagoAdm int
, @mesFactura date, @interes float,@saldo float, @valorMensual float, @valorFactura float
as
 insert into tblFactura values(@idPro,@idPre,@codigoIn,@codigoCuota,@idPagoAdm,@mesFactura, @interes,@saldo,@valorMensual,@valorFactura)
go

exec NuevaFactura 21,2002,120,14,13000,'2022-06-01',1.5,0,1,0
exec NuevaFactura 21,2002,120,14,13000,'2022-06-02',1.5,1500000,1,0




--Procedimiento almacenado para agregar pago de administracion
create procedure AgregarPagoAdministracion
@id_propietario int, @cod_inmueble int, @fechaPago date, @valorPago float
as 
insert into tblPagoAdm (idPro,codigoIn,fechaPago,valorPago)
values (@id_propietario,@cod_inmueble,@fechaPago,@valorPago)

exec AgregarPagoAdministracion


