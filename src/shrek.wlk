/** First Wollok example */
object fiona {
	var equipo = []
	method potencia() = 50 + equipo.sum({elemento => elemento.potencia()})
	method equipar(algo){
		equipo.add(algo)
	}
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

object espada{
	method potencia() = 50
	method fidelidad() = 10
}


object burro{
	var equipamiento = []
	method fidelidad() = 150 + self.mejorEquipamiento()
	
	method mejorEquipamiento(){
		if(equipamiento.isEmpty()){
			return 0
		}
		else {
			return equipamiento.max({equipo => equipo.fidelidad()}).fidelidad()
		}
	}
	
	method agregar(equipo){
		equipamiento.add(equipo)
	}
	

}

object collar{
	method fidelidad() = 150
	method potencia() = 0
}
object poncho{
	method fidelidad() = 200
	method potencia() = 1
}
object gato{
	var equipamiento = []
	
	method fidelidad() = 70 + self.mejorEquipamiento()
	method potencia() = 50 + equipamiento.sum({elemento => elemento.potencia()})
	
	method mejorEquipamiento(){
		if(equipamiento.isEmpty()){
			return 0
		}
		else {
			return equipamiento.max({equipo => equipo.fidelidad()}).fidelidad()
		}
	}
	method agregar(equipo){
		equipamiento.add(equipo)
	}
	
}

//
//object nadie{
//	method fidelidad() = 0
//}


object dragon{
	
	var aliados = []
	
	var potencia = 100
	method potencia() = potencia * (aliados.size() + 1) + self.potenciaDelMejorAliado()
	
	method potenciar() {
		potencia = potencia * 2
	} 
	
	method aliarse(alguien){
		aliados.add(alguien)
	}
	method potenciaDelMejorAliado() =
		if(aliados.isEmpty())
			0
		else
			aliados.max({aliado=> aliado.potencia()}).potencia()
}

