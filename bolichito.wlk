object rosa {
    method leGusta(cosa) {
        return cosa.peso() <= 2000
    } 
}
object estefania {
    method leGusta(cosa) {
        return cosa.color().esColorFuerte()
    } 
}
object luisa{
    method leGusta(cosa) {
        return cosa.material().esBrillante()
    }
}
object juan {
    method leGusta(cosa) {
        return cosa.color().esColorFuerte() || (cosa.peso().between(1200, 1800) )
    } 
}
object rojo {
    method esColorFuerte() {
        return true
    }
}
object verde {
    method esColorFuerte() {
        return true
    }
}
object celeste {
    method esColorFuerte() {
        return false
    }
}
object pardo {
    method esColorFuerte() {
        return false
    }
}



object cobre {
    method esBrillante() {
        return true
    }
}
object vidrio {
    method esBrillante() {
        return true
    }
}
object lino {
    method esBrillante() {
        return false
    }
}
object madera {
    method esBrillante() {
        return false
    }
}
object cuero {
    method esBrillante() {
        return false
    }
}
/* - una _placa_ de cobre, de peso y color variables. */

object remera {
    method color(){
        return rojo
    }
    method material(){
        return lino
    }
    method peso(){
        return 800
    }
}
object pelota {
    method color() = pardo
    method material() = cuero
    method peso() = 1300
}
object biblioteca {
    method color() = verde
    method material() = madera
    method peso() = 8000
}
object muñeco {
    var pesoActual = 100

    method color() = celeste
    method material() = vidrio
    method peso() = pesoActual
    method cambiarPeso(nuevoPeso) {
        pesoActual = nuevoPeso
    }
}
object placa {
    var pesoActual = 150
    var colorActual = verde
    method material() = cobre
    method peso() = pesoActual
    method color() = colorActual
    method cambiarPeso(nuevoPeso) {
        pesoActual = nuevoPeso
    }
    method cambiarColor(nuevoColor) {
        colorActual = nuevoColor
    }
}
object arito {
    method material() = cobre
    method color() = celeste
    method peso() = 180
}
object naranja {
    method esColorFuerte() {
        return false
    }
}
object cajita {
    var objetoInterior = remera
    method material() = cobre
    method peso() = 400 + objetoInterior.peso()
    method objetoInterior() {
        return objetoInterior 
    }
    method cambiarObjetoInterior(nuevoObjetoInterior) {
        objetoInterior = nuevoObjetoInterior
    }
}
object banquito {
    var colorActual = naranja
    method color() = colorActual
    method material() = madera
    method peso() = 1700
    method cambiarColor(nuevoColor) {
        colorActual = nuevoColor
    } 
}
object bolichito {
    var objetoEnVidriera = remera
    var objetoEnMostrador = placa
    method sonBrillantes() {
        return objetoEnVidriera.material().esBrillante() && objetoEnMostrador.material().esBrillante()
    }
    method sonMonocromaticos() {
        return objetoEnVidriera.color() == objetoEnMostrador.color()
    }
    method estanEquilibrados() {
        return objetoEnMostrador.peso() > objetoEnVidriera.peso()
    }
    method esColor(color) {
        return objetoEnMostrador.color() == color || objetoEnVidriera.color() == color
    }
    method puedeMejorar(){
        return self.sonMonocromaticos() || self.estanEquilibrados()
    }
    method puedeOfrecer(persona) {
        return persona.leGusta(objetoEnMostrador) || persona.leGusta(objetoEnVidriera)

    }
    method ponerEnVidriera(objeto) { 
        objetoEnVidriera = objeto 
        }
    method ponerEnMostrador(objeto) { 
        objetoEnMostrador = objeto 
        }
}