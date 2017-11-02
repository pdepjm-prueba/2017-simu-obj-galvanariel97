class Empleado
{
	var cantOjos
	var estamina
	var rol
	method fuerza()
	{
		return (estamina/2 + 2 + rol.plusRol(self)) / self.plusClase()
	}
	method setEstamina(sumar){}
	method estamina()
	{
		return estamina
	}
	method perderMitadEstamina(valor){estamina = estamina/2}
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
	method experencia()
	{
		
	}
	method plusClase(){return 1}
	method puedeDefenderSector(){rol.puedeDefenderSector()}
	method noEsSoldado(){return rol.noEsSoldado()}
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
	method dificultadRaza(){return 1}
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
	override method plusClase()
	{
		return 2
	}
	method dificultadRaza(){return 2}
}

class Soldado 
{
	var arma
	var practica
	method defenderSector()
	{
	}
	method plusRol(unEmpleado)
	{
		return practica
	}
	method puedeDefenderSector()
	{
		return true
	}
	method noEsSoldado(){return false}
}
class Obrero
{
	var herramientas = #{}
	method plusRol(unEmpleado)
	{
		return 0
	}
	method puedeDefenderSector()
	{
		return true
	}
	method noEsSoldado(){return true}
}
class Mucama
{
	method defenderSector()
	{
		return false
	}
	method plusRol(unEmpleado)
	{
		return 0
	}
	method puedeDefenderSector()
	{
		return false
	}
	method noEsSoldado(){return true}
}

class ArreglarMaquina
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
	method dificultad(empleado)
	{
		return 2 * complejidad
	}
}
class DefenderSector
{
	var amenaza
	method realizarTarea(empleado)
	{
		if(empleado.puedeDefenderSector() && empleado.fuerza() > amenaza)
		{
			if(empleado.noEsSoldado())
			{
				empleado.restarMitadEstamina()
			}
		}
	}
	method dificultad(empleado)
	{
		return amenaza * empleado.dificultadRaza()
	}
}
class Tarea
{
	var tarea
	var empleado
	
}