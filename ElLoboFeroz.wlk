object loboFeroz {
	var peso = 10
	var apariencia = "lobo"
	
	method peso(){
		return peso
	}
	method apariencia(){
		return apariencia.toString()
	}
	method comer(algo){
		peso += 0.1 * algo.peso()
	}
	method correr(){
		peso -= 1
	}
	method estaSaludable(){
		return peso.between(20, 150)
	}
	method sufrirCrisis(){
		peso = 10
	}
	method conversar(){
		
	}
	method disfrazar(personaje){
		apariencia = personaje
	}
	method responder(pregunta){
		var respuesta = ""
		respuesta = if(pregunta =="ojos")"Para mirarte mejor" else 
		if(pregunta=="orejas")"Para escucharte mejor" else 
		if (pregunta=="boca")"Para comerte mejor"
		return respuesta
	}
	method soplar(casa, cantidad){
		peso -= (casa.resistencia()+ (cantidad * chanchito.peso()))
	}
}

object caperucitaRoja{
	var peso = 60
	
	method peso(){
		return peso
	}
	method pesoTotal(){
		peso = 60 + canasta.peso()
	}
	method conversar(){
		
	}
	method preguntar(pregunta){
		return if(pregunta == "ojos")"Que ojos tan grandes tienes, abuelita" else 
		if(pregunta=="orejas")"Que orejas tan grandes tienes" else 
		if(pregunta=="boca")"Que boca tan grandes tienes" else ""
	}
}
object manzana{
	const peso = 0.2
	method peso(){
		return peso
	}
}

object canasta{
	var peso = 1.2
	var manzanas = 6
	
	method peso(){
		return peso
	}
	method cantidadManzanas(){
		return manzanas
	}
	method perderManzanas(cantidad){
		manzanas = 0.max(manzanas - cantidad)
		peso = (manzanas* manzana.peso())
	}
	method recolectarManzanas(cantidad){
		manzanas += cantidad
		peso = (manzanas* manzana.peso())
	}
}
object abuelita{
	const peso = 50
	
	method peso(){
		return peso
	}
}
object cazador{
	const peso = 90
	
	method peso(){
		return peso
	}
	method cazarLobo(){
		loboFeroz.correr()
		loboFeroz.sufrirCrisis()
	}
}
//--------------------------2 da parte Los Chanchitos------------------------------
object casaPaja{
	const resistencia = 0
	method resistencia(){
		return resistencia
	}
}
object casaMadera{
	const resistencia = 5
	method resistencia(){
		return resistencia
	}
}
object casaLadrillo{
	var ladrillos 
	var resistencia 
	method ladrillos(cantidad){
		ladrillos = cantidad
		resistencia = 2 * ladrillos
	}
	method resistencia(){
		return resistencia
	}
}
object chanchito{
	const peso = 2
	method peso(){
		return peso
	}
}