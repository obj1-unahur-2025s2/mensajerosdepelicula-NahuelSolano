import mensajeros.*;


object mensajeria {
    var listaMensajeros = [];

    method contratar(mensajero) {
        listaMensajeros.add(mensajero);
    }
    method noEstaVacia() {
        return listaMensajeros.size() > 0;
    }

    method despedir(mensajero) {
        listaMensajeros.remove(mensajero);
    }

    method despedirATodos() {
        listaMensajeros.clear();
    }
    method estaVacia() {
        return listaMensajeros.size() == 0;
    }

    method esGrande() {
        return listaMensajeros.size() > 2;
    }

    method elPrimeroPuedeEntregarPaquete() {
        return listaMensajeros.first().puedeLlamar() || listaMensajeros.first().pesaMenosDeUnaTonelada()
    }

    method elPesoDelUltimoMensajero() {
        return listaMensajeros.last().peso();
    }
}
