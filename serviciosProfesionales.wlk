class Profesional{
  const property universidad

  var property tipo

  method honorariosPorHora() =  tipo.honorarios(universidad)
  //retorna un float


  method provinciasDondePuedeTrabajar() =  tipo.puedeTrabajarEn(universidad)
  //retorna lista de provincias


}

//tipos Profesionales
object vinculado{
  method puedeTrabajarEn(universidad) = [universidad.provinciaOrigen()]

  method honorarios(universidad) = universidad.honorarioPorHoraEstimado()
}

object asociado {
  // method puedeTrabajarEn(universidad) = [new Provincia(nombre= "Entre Ríos"), 
  //                             new Provincia(nombre= "Santa Fe"),
  //                             new Provincia(nombre= "Corrientes")]

  method puedeTrabajarEn(universidad) = #{entreRios, santaFe, corrientes}

  method honorarios(universidad) =  3000
}

// object libre{
//   var property puedeTrabajarEn = null
//   var property honorarios = null

//   // method puedeTrabajarEn(provincias) {
//   //   puedeTrabajarEn = [provincias]
//   // }
  
//   method puedeTrabajarEn(universidad) = puedeTrabajarEn

//   method honorarios(universidad) = honorarios


// }


class Libre{
  var property puedeTrabajarEn
  var property honorarios


  method puedeTrabajarEn(universidad) = puedeTrabajarEn //recibe un #{conjunto}

  method honorarios(universidad) = honorarios

  method agregarNuevaProvincia(unaProvincia){
    puedeTrabajarEn.add(unaProvincia)
  }


}

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
class Universidad{
  var property provinciaOrigen

  var property honorarioPorHoraEstimado

}

// class Provincia{
//   const property nombre
//   const property universidades

// }
object entreRios{
  var property universidades = null
}
object santaFe{
  var property universidades = null
}
object corrientes{
  var property universidades = null
}

object buenosAires{
  var property universidades = null

}

object cordoba{
  var property universidades = null

}

object misiones{
  var property universidades = null

}



class EmpresaServicio{
  const profesionales = #{}

  method incorporarProf(unProfesional) = profesionales.add(unProfesional)

  const property honorarioReferencia

  method cantProfQueEstudiaronEn(unaUniv) = profesionales.count({prof => prof.universidad() == unaUniv})

  method profesionalesCaros() = profesionales.filter({prof => prof.honorariosPorHora() > self.honorarioReferencia()})

  method universidadesFormadoras() = profesionales.map({prof => prof.universidad()})

  method profesionalMasBarato() = profesionales.find({prof => prof.honorariosPorHora() == self.honorarioMasBaratoRegistrado()})

  method honorarioMasBaratoRegistrado() = profesionales.min({prof => prof.honorariosPorHora()}).honorariosPorHora()

  method esDeGenteAcotada() = profesionales.all({prof => prof.provinciasDondePuedeTrabajar().size() <= 3})
}