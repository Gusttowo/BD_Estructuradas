----Disparador que calcula y actualiza el saldo vencido y lo multiplica por el interes
create or alter trigger Mora
on tblFactura
after insert
as
declare @codigoFactura int =(select codigoFactura from inserted)
	update tblFactura
	set saldo = (0.015 * saldo)
	where tblFactura.codigoFactura = @codigoFactura



------Disparador que calcula la cuota mensual
create or alter trigger ValorMensual
on tblFactura
after insert 
as
declare @idFactura int =(select codigoFactura from inserted)
declare @ano int = (select year(mesFacturacion) from inserted)
declare @codigoIn int= (select codigoIn from inserted)
declare @presupuesto float = (select tblPresupuestoG.valorPresupuesto from tblPresupuestoG where tblPresupuestoG.a�o = @ano)
declare @area int = (select tblInmueble.area from tblInmueble where tblInmueble.codigoIn = @codigoIn)

update tblFactura set ValorMensual =(@presupuesto * @area/12 )
where tblFactura.codigoFactura = @idFactura




------Disparador que calcular el Total a pagar de la Factura(pagoAdm, etc)
create or alter trigger valorTotalFactura
on tblFactura
after insert
as
declare @codigoFactura int =(select codigoFactura from inserted)

update tblFactura set valorFactura =(ValorMensual + saldo)
where tblFactura.codigoFactura = @codigoFactura