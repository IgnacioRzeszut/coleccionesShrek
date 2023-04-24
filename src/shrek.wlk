/** First Wollok example */
object fiona {
	}

object shrek{
	//var tieneAmigos = false
	var amigo = nadie
	//method puedeRescatar(alguien) = self.tieneAmigos()
	
	method puedeRescatar(alguien) = 
//		amigo != null &&
		amigo.fidelidad() > dragon.potencia()
	
	
	//method tieneAmigos() = tieneAmigos 
	
	method seHaceAmigoDe(alguien){
//		tieneAmigos = true
	amigo = alguien
	}
}

object burro{
	
	method fidelidad() = 150
}



object gato{
	method fidelidad() = 20
}


object nadie{
	method fidelidad() = 0
}


object dragon{
	
	var potencia = 100
	method potencia() = potencia
	
	method potenciar() {
		potencia = potencia * 2
	} 
}