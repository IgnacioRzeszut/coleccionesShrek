/** First Wollok example */
object fiona {
	}

object shrek{
	var tieneAmigos = false
	method puedeRescatar(alguien) = self.tieneAmigos()
	
	method tieneAmigos() = tieneAmigos 
	
	method seHaceAmigoDe(alguien){
		tieneAmigos = true
	}
}

object burro{}