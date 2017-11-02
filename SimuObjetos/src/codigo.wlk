class Empleado
{
	var cantOjos
	var estamina
	var rol
	method fuerza()
	{
		return estamina/2 + 2 + rol.plusFuerza(self)
	}
	method setEstamina(sumar){}
	method estamina()
	{
		return estamina
	}
	method comerFruta(unaFruta)
	{
		estamina = estamina + unaFruta.puntos()
	}
	method arreglarMaquina(unaMaquina)
	{
		if(self.mismaEstaminaComplejidad(unaMaquina) && unaMaquina.noRequiereHerramientas())
		{
			
		}
	}
	method mismaEstaminaComplejidad(unaMaquina)
	{
		return estamina == unaMaquina.complejidad()
	}
	method perderEstamina(unaMaquina)
	{
		estamina = estamina - unaMaquina.complejidad()
	}
}
class Fruta
{
	var puntos
	constructor(_puntos)
	{
		puntos = _puntos
	}
	method puntos()
	{
		return puntos
	}
}
object banana inherits Fruta(10){}
object manzana inherits Fruta(5){}
object uva inherits Fruta(1){}

class Biclopes inherits Empleado
{
	override method setEstamina(sumar)
	{
		estamina = (estamina + sumar).max(10)
	}
}
class Ciclope inherits Empleado
{
	method estaEntusiasmado()
	{
		return true
	}
	override method setEstamina(sumar)
	{
		estamina = estamina + sumar
	}
}

class Soldado 
{
	var arma
	var practica
	method defenderSector()
	{
	}
	method plusFuerza(unEmpleado)
	{
		return practica
	}
}
class Obrero
{
	var herramientas = #{}
}
class Mucama
{
	method defenderSector()
	{
		return false
	}
}

object maquina
{
	var complejidad
	var herramientasRequeridas = #{}
	method complejidad()
	{
		return complejidad
	}
	method herramientasRequeridas()
	{
		return herramientasRequeridas
	}
	method noRequiereHerramientas()
	{
		return herramientasRequeridas.isEmpty()
	}
	method tieneHerramientasSuficientes(unObrero)
	{
		return unObrero.herramientas().contains(herramientasRequeridas)
	}
	method empleadoArreglaMaquina(empleado)
	{
		if(self.mismaEstaminaComplejidad(empleado) && self.tieneHerramientasSuficientes(empleado))
		{
			
		}
	}
	method mismaEstaminaComplejidad(empleado)
	{
		return empleado.estamina() == complejidad
	}
}
object defenderSector
{
	
}
class Tarea
{
	var dificultad
	var tarea
}