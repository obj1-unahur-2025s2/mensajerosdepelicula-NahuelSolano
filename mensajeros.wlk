// roberto
object roberto {
    var viajaEn = bicicleta

    method puedeLlamar() = false;

    method peso() = 90 + viajaEn.peso();

    method cambiarVehiculo(nuevoVehiculo){
        viajaEn = nuevoVehiculo
        return viajaEn
    }
}

object bicicleta {
    method peso() = 5;
}
object camion {
    var cantidadDeAcoplados = 0;
    method acoplados(cantidadAcoplados) {
      cantidadDeAcoplados = cantidadAcoplados;
      return cantidadDeAcoplados;
    }
    method peso() = 500 * cantidadDeAcoplados;
} 

// chuck norris
object chuckNorris {
    method peso() = 80;
    method puedeLlamar() = true;
}

// neo  
object neo {
    var property tieneSaldo = true;
    method puedeLlamar() = tieneSaldo;
    method peso() = 0;
}
