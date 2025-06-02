class ChevroletCorsa{
    var color =


    method capacidad() = 4
    method velocidadMaxima() = 150
    method peso() = 130
    method color() = color
}


class RenaultKwid {
    var tieneTanqueAdicional = false


    method capacidad() {
        return(
            if(tieneTanqueAdicional) 3
            else 4
        )
    }


    method velocidadMaxima() {
        return(
            if(tieneTanqueAdicional) 120
            else 110
        )
    }


    method peso() {
        return(
            if(tieneTanqueAdicional) 1350
            else 1200
        )
    }


    method color() = azul()
}


object trafic {

    const interior =
    const motor = 


    method capacidad() = interior.capacidad()


    method velocidadMaxima() = motor.velocidadMaxima()


    method peso(){
        return(4000 + interior.peso() + motor.peso())
    }
   
    method color() = blanco()
}


// Interiores
object comodo {


    method capacidad() = 5


    method peso() = 700
}


object popular {


    method capacidad() = 12


    method peso() = 1000
}


//motores


object pulenta {


    method peso() = 700


    method velocidadMaxima() = 130
}


object bataton {


    method peso() = 500


    method velocidadMaxima() = 80
}


