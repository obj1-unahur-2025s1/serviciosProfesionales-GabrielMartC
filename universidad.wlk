import provincias.*
class Universidad{
  var fondos = 0

  var property provinciaOrigen

  var property honorarioPorHoraEstimado

  method recibirImporte(unImporte){
    fondos = fondos + unImporte
  }

  method fondos() = fondos

}