import universidad.*
import provincias.*

class ProfesionalVinculado{
  const property universidad

  method honorariosPorHora() =  universidad.honorarioPorHoraEstimado()
  //retorna un float


  method provinciasDondePuedeTrabajar() =  #{universidad.provinciaOrigen()}
  //retorna lista de provincias
}

class ProfesionalAsociado{
  const property universidad

  method honorariosPorHora() =  3000
  //retorna un float

  method provinciasDondePuedeTrabajar() =  #{entreRios, santaFe, corrientes}
  //retorna lista de provincias
}

class ProfesionalLibre{
  const property universidad
  var provinciasDondePuedeTr = #{}
  var honorariosPorH = 0

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
}
