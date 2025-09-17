import destinos.*
// roberto
object roberto {
    var property viajaEn = bicicleta
    var property estaPago = true
    var peso = 0;


    method pesoRoberto() = 90;

    method transporte(cantidadDeAcoplados) {
        peso = (viajaEn.peso() + self.pesoRoberto()) + self.acoplados(cantidadDeAcoplados)
        return peso;
    }
    method acoplados(cantidadDeAcoplados) {
        return camion.pesoPorAcoplado() * cantidadDeAcoplados;
    }
}

object bicicleta {
    method peso() = 5
}
object camion {
    method peso() = 100
    method pesoPorAcoplado() = 500 
} 

// chuck norris
object chuckNorris {
    var property estaPago = true
    method peso() = 80;
    method puedeLlamar() = true;
}

// neo  
object neo {
    var property estaPago = true
    var property tieneSaldo = true;
    method puedeLlamar() = tieneSaldo;
    method peso() = 0;
}