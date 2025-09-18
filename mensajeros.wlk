// roberto
object roberto {
    var property viajaEn = bicicleta
    var property estaPago = true
    var pesoTotal = 0;

    method puedeLlamar() = false;

    method peso() = 90;

    method transporte(cantidadDeAcoplados) {
        pesoTotal = (viajaEn.peso() + self.peso()) + self.acoplados(cantidadDeAcoplados)
        return pesoTotal;
    }
    method acoplados(cantidadDeAcoplados) {
        return camion.pesoPorAcoplado() * cantidadDeAcoplados;
    }

    method pesaMenosDeUnaTonelada() {
        return pesoTotal < 1000;
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
    method pesaMenosDeUnaTonelada() = true;
}

// neo  
object neo {
    var property estaPago = true
    var property tieneSaldo = true;
    method puedeLlamar() = tieneSaldo;
    method peso() = 0;
    method pesaMenosDeUnaTonelada() = true;
}