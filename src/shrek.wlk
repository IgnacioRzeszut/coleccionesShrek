/** First Wollok example */
object fiona {
	}

object shrek{
	//var tieneAmigos = false
	var amigo = nadie
	var otroAmigo = nadie

	method estaSolo() = not self.tieneAmigos()
	
	method puedeRescatar(alguien) = 
//		amigo != null &&
		amigo.fidelidad() + otroAmigo.fidelidad() > dragon.potencia()
	
	
	method tieneAmigos() = amigo != nadie || otroAmigo != nadie
	
	method seHaceAmigoDe(alguien){
//		tieneAmigos = true
	if (amigo == nadie)
		amigo = alguien
	else 
		otroAmigo = alguien
	}
	method cantidadAmigos() = 
		if (self.estaSolo()) 0 
		else if (otroAmigo == nadie ) 1 else 2
		
	method pelearseCon(alguien){
		if (amigo == alguien) 
			amigo = nadie
		if (otroAmigo == alguien)
			otroAmigo = nadie
	}
}




object burro{
	
	method fidelidad() = 150
}



object gato{
	method fidelidad() = 70
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