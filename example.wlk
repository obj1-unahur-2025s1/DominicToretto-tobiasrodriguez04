object dominic {
  const autos = []

  method comprar(unAuto){
    autos.add(unAuto)
  }
  method noEstaEnCondiciones() = autos.filter({a=> not a.enCondiciones()})
  method autosEnCondiciones() = autos.filter({a=> a.enCondiciones()})
  method mandarAutosAlTaller(){
    taller.recibirAutos(self.noEstaEnCondiciones())
  }
  method realizarPruebasDeVelocidad(){
    autos.forEach({a => a.hacerPrueba()})
  }
  method venderAutos(){
    autos.clear()
  }
  method promedioVelocidades() = autos.sum({a=> a.velocidadMaxima()}) / autos.size()
  method autoMasRapido() = self.autosEnCondiciones().max({a=> a.velocidadMaxima()})
  method esMasQueElDoble() = self.autoMasRapido() > self.promedioVelocidades() * 2
}

object taller {
  const autosAReparar = []
  method recibirAutos(listaDeAutos){
    autosAReparar.adAll(listaDeAutos)
  }
  method repararAutos(){
    autosAReparar.forEach({a=> a.reparar()})
    autosAReparar.clear()
  }
}

object ferrari {
  var motor = 87
  method enCondiciones(){
    motor >= 65
  }
  method reparar(){
    motor = 100
  }
  method velocidadMaxima() = 110 + if(motor > 75) 15 else 0
  method hacerPrueba(){motor = (motor - 30).max(0)}
}

object flecha {
  var cantidadLitrosCombustible = 100
  var color = azul
  var property combustible = gasolina // EL PROPERTY HACE QUE NO HAGAN FALTA LOS DOS METODOS DE ABAJO
  method combustible() = combustible
  method combustible(unValor){combustible = unValor}
  method enCondiciones() = 
    cantidadLitrosCombustible > combustible.nivelMinimo(cantidadLitrosCombustible) && 
    color == rojo
  method reparar(){
    cantidadLitrosCombustible = cantidadLitrosCombustible * 2
    color = color.cambiarDeColor()
  }

  method hacerPrueba(){
    cantidadLitrosCombustible = (cantidadLitrosCombustible - 5).max(0)
  }
  method velocidadMaxima() = combustible.calculoAdicional(cantidadLitrosCombustible)
  }

object gasolina{
  method nivelMinino() = 85
  method calculoAdicional(litros) = (litros * 2) + 10
 }

object nafta{
  method nivelMinimo() = 50
  method calculoAdicional(litros) = (litros * 2) * 0.10
}

object nitrogeno{
  method nivelMinimo() = 0
  method calculoAdicional(litros) = (litros * 2) * 10
}

object azul{
  method cambiarDeColor() = verde
}

object verde{
  method cambiarDeColor() = rojo
}

object rojo{
  method cambiarDeColor() = azul
}