import destinos.*
import mensajeros.*;
import mensajeria.*

object paquete {
    var destino = puenteBrooklyn;
    var estaPago = true;

    method precio() = 50; 

    method verificarSiEstaPago(sePago) {
      estaPago = sePago;
      return estaPago;
    }

    method cambiarDestino(nuevoDestino){
    destino = nuevoDestino;
    return destino;
    }
    
    method puedeEntregarse(mensajero) {
    return estaPago && destino.puedeEntrar(mensajero);
    }
}

object paquetito {
    method precio() = 0;
}

object paquetonViajero{

    var cantidadDeViajes = 1;
    var cantidadPagada = 0;
    var destinos = []

    method viajes(numeroDeViajes) {
      cantidadDeViajes = numeroDeViajes;
      return cantidadDeViajes
    }

    method precio() {
      return 100 * cantidadDeViajes;
    }
    
    method dineroYaPagado(cantidadDeDineroPagado) {
      cantidadPagada =+ cantidadDeDineroPagado
      return cantidadPagada;
    }
    
    method seTerminoDePagar() {
      return self.precio() == cantidadPagada;
    }

    method agregarDestinos(unDestino) {
        return destinos.add(unDestino)
    }

    method elMensajeroPuedeIrALosDestinos(mensajero) {
        return destinos.all({d=>d.puedePasar(mensajero)}) && self.seTerminoDePagar()
    }
}
