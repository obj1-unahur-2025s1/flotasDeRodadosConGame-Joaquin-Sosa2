import rodados.* 
class Pedidos {
    const  distanciaARecorrer = 
    var tiempoMaximo =
    const  property cantidadDePasajeros =
    const property coloresIncompatibles = #{}


    method velocidadRequerida() = distanciaARecorrer / tiempoMaximo

    method cumpleConLaVelocidad(unAuto) {
        return((unAuto.velocidadMaxima() - self.velocidadRequerida()) >= 10 ) 
    }

    method cumpleConLaCapacidad(unAuto) {
        return(unAuto.capacidad() >= self.cantidadDePasajeros()) 
    }

    method esIncompatibleEnElColor(unAuto) {
        return(coloresImcompatibles.any({color => color == unAuto.color()}))
    }  

    method satisfaceConElPedido(unAuto) {
        return(self.cumpleConLaVelocidad(unAuto) and 
        self.cumpleConLaCapacidad(unAuto) and
        !self.esIncompatibleEnElColor(unAuto)
        )
    }
    method acelerar() = tiempoMaximo -= 1

    method relajar() = tiempoMaximo += 1
}