
/*-------Vista que permite ver la información acerca de los propietarios, 
como sus inmuebles, valor Mensual a pagar y el Total-------*/
CREATE VIEW InmueblesPro(Inmueble,Area, PorcentajeParticipacion, EstadoCartera, NombrePropietario, ValorMensual, TotalaPagar)
AS
SELECT tip.descripcion, inm.area, proinm.porcentParticipacion, proinm.estadoCartera, pro.nombre, fac.ValorMensual, fac.valorFactura
FROM tblTipo tip join tblInmueble inm
on tip.idTipo = inm.idTipo
join tblPropietario_Inmueble proinm
on proinm.codigoIn = inm.codigoIn
join tblPropietario pro
on pro.idPro = proinm.idPro
join tblFactura fac
on fac.idPro = proinm.idPro


select * from InmueblesPro where NombrePropietario = 'Yeison'


/*-------Vista que permite ver la información acerca de los propietarios, como valor de Cuota, valorFactura, 
la fecha de Pago y el Valor Pago-------*/
CREATE VIEW AdmFactura(Nombre, Presupuesto,Año,ValorCuota, Finalidad, ValorFactura, FechaPago, ValorPago)
AS
SELECT pro.nombre, pre.valorPresupuesto,pre.año,cu.valorCuota,cu.finalidad,fac.valorFactura, adm.fechaPago, adm.valorPago
FROM tblFactura fac join tblPresupuestoG pre
on fac.idPresupuesto = pre.idPresupuesto
join tblCuotaExtra cu
on fac.codigoCuota = cu.codigoCuota
join tblPagoAdm adm
on fac.idPagoAdm = adm.idPagoAdm
join tblPropietario pro
on fac.idPro = pro.idPro

select * from AdmFactura