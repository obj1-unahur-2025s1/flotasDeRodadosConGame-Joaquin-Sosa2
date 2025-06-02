import pedido.*

class Dependencia {
    const flota = #{}
    const empleados = #{}
    const pedidos = #{}

    method cantidadDeEmpleados() = empleados.size()

    method cantidadDeRodados() = flota.size()

    method agregarFlota(unRodado) {
        flota.add(unRodado)
    }


    method quitarFlota(unRodado) {
        flota.remove(unRodado)
    }


    method pesoTotalFlota() {
        return(flota.sum({rodado => rodado.peso()}))
    }


    method estaBienEquipada() {
      return(
        flota.size() > 3 and flota.all({rodado => rodado.velocidadMaxima() >= 100})
      )
    }


    method todosDeColor(unColor) {
        return(flota.filter({rodado => rodado.color() == unColor}))
    }

    method capacidadTotalEnColor(unColor) {
        return(
            self.todosDeColor(unColor).sum({rodado => rodado.capacidad()})
        )
    }

    method rodadoMasRapido() = flota.max({rodado => rodado.velocidadMaxima()})

    method colorDelRodadoMasRapido() = self.rodadoMasRapido().color()

    method capacidadTotalFlota() = flota.sum({rodado => rodado.capacidad()})

    method capacidadFaltante() = self.cantidadDeEmpleados() - self.capacidadTotalFlota()

    method esGrande() {
      return(self.cantidadDeEmpleados() >= 40 and self.cantidadDeRodados() > 5 )
    }

    //etapa 3

    method agregarPedido(unPedido) = pedidos.add(unPedido)

    method quitarPedido(unPedido) = pedidos.remove(unPedido)

    method totalDePasajerosEnPedidosRegistrados() {
        return(pedidos.sum({pedido => pedido.cantidadDePasajeros()}))
    }

    method pedidosQueNoPuedenSerSatisfechos() {
        return(pedidos.filter({pedido => !pedido.satisfaceConElPedido(flota.any())}))
      
    }

    method esColorIncompatibleConLosPedidos(unColor) {
        pedidos.all({pedido => pedido.coloresIncompatibles.any({color => color == unColor})})
      
    }
    method relajarPedidos() {
        pedidos.forEach({pedido => pedido.relajar()})
    }
}