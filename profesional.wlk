import universidad.*
import provincias.*

class ProfesionalVinculado{
  const property universidad

  method honorariosPorHora() =  universidad.honorarioPorHoraEstimado()
  //retorna un float


  method provinciasDondePuedeTrabajar() =  #{universidad.provinciaOrigen()}
  //retorna lista de provincias

  method trabajaEnAlMenos1DeEstasProv(conjProvincias) = conjProvincias.any({prov => self.provinciasDondePuedeTrabajar().contains(prov)})
  
  method cobrarImporte(unImporte){
    universidad.recibirImporte(unImporte / 2)
  }

  method fondos() = 0

}

class ProfesionalAsociado{
  const property universidad

  method honorariosPorHora() =  3000
  //retorna un float

  method provinciasDondePuedeTrabajar() =  #{entreRios, santaFe, corrientes}
  //retorna lista de provincias

  method trabajaEnAlMenos1DeEstasProv(conjProvincias) = conjProvincias.any({prov => self.provinciasDondePuedeTrabajar().contains(prov)})

  method cobrarImporte(unImporte){
    asociacionProfLitoral.recibirImporte(unImporte)
  }

  method fondos() = 0
}

object asociacionProfLitoral{
  var fondos = 0

  method recibirImporte(unImporte){
    fondos = fondos + unImporte
  }

  method fondos() = fondos
}

class ProfesionalLibre{
  const property universidad
  var provinciasDondePuedeTr = #{}
  var honorariosPorH = 0
  var fondos = 0

  method honorariosPorHora(honorarios){
  honorariosPorH = honorarios
  }

  method honorariosPorHora() =  honorariosPorH

  method provinciasDondePuedeTr(conjProv){
  provinciasDondePuedeTr = conjProv
  }

  method provinciasDondePuedeTrabajar() =  provinciasDondePuedeTr

  method agregarNuevaProvincia(unaProvincia){
  provinciasDondePuedeTr.add(unaProvincia)
  }

  method trabajaEnAlMenos1DeEstasProv(conjProvincias) = conjProvincias.any({prov => provinciasDondePuedeTr.contains(prov)})

  method cobrarImporte(unImporte){
    fondos = fondos + unImporte  
  }

  method fondos() = fondos

  method pasarDinero(unProfesional, unImporte){
    if (fondos - unImporte >= 0){
      unProfesional.cobrarImporte(unImporte)
      fondos = fondos - unImporte
    }

    //else{} no hace nada
  }

}
