class Profesional{
  const property universidad

  var property tipo

  method honorariosPorHora() =  tipo.honorarios(universidad)
  //retorna un float

  // method honorariosPorHora() =  self.honorariosSegunTipo(tipo)



  method provinciasDondePuedeTrabajar() =  tipo.puedeTrabajarEn(universidad)
  //retorna lista de provincias

  // method provinciasDondePuedeTrabajar() =  self.provDondePuedTrabSegunTipo(tipo)


  // method honorariosSegunTipo(unTipo){
  //   var honorarios = 0
  //   if(unTipo == vinculado){
  //     honorarios = universidad.honorarioPorHoraEstimado()
  //   }
  //   else{
  //     honorarios =  tipo.honorarios()
  //   }
  //   return honorarios
  // }

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

  // method puedeTrabajarEn(provincias) {
  //   puedeTrabajarEn = [provincias]
  // }
  
  method puedeTrabajarEn(universidad) = puedeTrabajarEn

  method honorarios(universidad) = honorarios


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

/*
   const provBsAs = new Provincia(nombre="Buenos Aires",universidades=#{unsam, unahur})
    const provStaFe = new Provincia(nombre="Santa Fe",universidades=#{unr})
    const provCorr = new Provincia(nombre="Corrientes",universidades=#{uniCorr})
    const provCord = new Provincia(nombre="Cordoba",universidades=#{})
    const provEntreR = new Provincia(nombre="Entre Rios",universidades=#{})
    const provMis = new Provincia(nombre = "Misiones",universidades=#{})*/



class EmpresaServicio{
  const profesionales = #{}

  method incorporarProf(unProfesional) = profesionales.add(unProfesional)

  const property honorarioReferencia

  method cantProfQueEstudiaronEn(unaUniv) = profesionales.count({prof => prof.universidad() == unaUniv})

  method profesionalesCaros() = profesionales.filter({prof => prof.honorarioPorHora() > self.honorarioReferencia()})

  method universidadesFormadoras() = profesionales.map({prof => prof.universidad()})

  method profesionalMasBarato() = profesionales.find({prof => prof.honorariosPorHora() == self.honorarioMasBaratoRegistrado()})

  method honorarioMasBaratoRegistrado() = profesionales.min({prof => prof.honorariosPorHora()})

  method esDeGenteAcotada() = profesionales.all({prof => prof.provinciasDondePuedeTrabajar().size() <= 3})
}