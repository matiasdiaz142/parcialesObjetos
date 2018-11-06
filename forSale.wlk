//Punto 1
class Alquiler{
	const mesesContrato
	const inmueble
	method comision() = mesesContrato*inmueble.valor()
}
class Venta{
	const inmueble
	method comision() = (porcentajeInmueble/100)*inmueble.valor()
}
object inmobiliaria{
	var property porcentajeInmueble
}
object casa{
	var property valor
}
class Ph{
	var property dimension
	method valor() = 500000.max(14000*dimension)
}
class Departamento{
	const ambientes
	method valor() = 350000*ambientes
}
//Punto 2
class Inmobiliaria{
	const empleados = []
	method mejorEmpleadoSegun(criterio) = empleados.max({e => criterio.ponderacion(e)})

}
object totalComisiones {
	method ponderacion(empleado) = empleado.totalComisiones()
}

object cantidadDeOperacionesCerradas {
	method ponderacion(empleado) = empleado.cantOperacionesCerradas()
}

object cantidadDeReservas {
	method ponderacion(empleado) = empleado.cantReservas()
}
class Empleado{
	const operaciones = #{}
	const reservas = #{}
	method totalComisiones() = operaciones.sum({o => o.comision()})
	method cantOperacionesCerradas() = operaciones.size()
	method cantReservas() = reservas.size()
	method vaATenerProblemasCon(otroEmpleado) = self.operoEnLaMismaZonaQue(otroEmpleado)
	method operoEnLaMismaZonaQue(otroEmpleado) = self.zonasOperadas()
	method zonasOperadas() = 
}
