/** First Wollok example */
object fiona {
	
	method potencia() = 50
	}

object shrek{
	//var tieneAmigos = false
	var administradorDeAmigos = []

	method estaSolo() = not self.tieneAmigos()
	
	method puedeRescatar(alguien) = 
//		amigo != null &&
		administradorDeAmigos.sum({elemento=> elemento.fidelidad()}) > dragon.potencia()
	
	
	method tieneAmigos() = not administradorDeAmigos.isEmpty()
	
	method seHaceAmigoDe(alguien){
//		tieneAmigos = true
		administradorDeAmigos.add(alguien)
	}
	method cantidadAmigos() = 
		administradorDeAmigos.size()
			
	method pelearseCon(alguien){
		administradorDeAmigos.remove(alguien)
	}
}




object burro{
	
	method fidelidad() = 150
	

}



object gato{
	method fidelidad() = 70
	method potencia() = 10
}


object nadie{
	method fidelidad() = 0
}


object dragon{
	
	var aliados = []
	
	var potencia = 100
	method potencia() = potencia * (aliados.size() + 1) //+ self.potenciaDelMejorAliado()
	
	method potenciar() {
		potencia = potencia * 2
	} 
	
	method aliarse(alguien){
		aliados.add(alguien)
	}
	method potenciaDelMejorAliado() =
		aliados.max({aliado=> aliado.potencia()}).potencia()
}

