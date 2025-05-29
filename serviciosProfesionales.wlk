// class ProfesionalVinculado{
//   const property universidad

//   method honorariosPorHora() =  universidad.honorarioPorHoraEstimado()
//   //retorna un float


//   method provinciasDondePuedeTrabajar() =  #{universidad.provinciaOrigen()}
//   //retorna lista de provincias
// }

// class ProfesionalAsociado{
//   const property universidad

//   method honorariosPorHora() =  3000
//   //retorna un float

//   method provinciasDondePuedeTrabajar() =  #{entreRios, santaFe, corrientes}
//   //retorna lista de provincias
// }

// class ProfesionalLibre{
//   const property universidad
//   var provinciasDondePuedeTr = #{}
//   var honorariosPorH = 0

//   method honorariosPorHora(honorarios){
//     honorariosPorH = honorarios
//   }

//   method honorariosPorHora() =  honorariosPorH

//   method provinciasDondePuedeTr(conjProv){
//     provinciasDondePuedeTr = conjProv
//   }

//   method provinciasDondePuedeTrabajar() =  provinciasDondePuedeTr

//   method agregarNuevaProvincia(unaProvincia){
//     provinciasDondePuedeTr.add(unaProvincia)
//   }
// }




// class Universidad{
//   var property provinciaOrigen

//   var property honorarioPorHoraEstimado

// }

// //provincias
// object entreRios{
//   var property universidades = null
// }

// object santaFe{
//   var property universidades = null
// }

// object corrientes{
//   var property universidades = null
// }

// object buenosAires{
//   var property universidades = null

// }

// object cordoba{
//   var property universidades = null

// }

// object misiones{
//   var property universidades = null

// }



// class EmpresaServicio{
//   const profesionales = #{}

//   method incorporarProf(unProfesional) = profesionales.add(unProfesional)

//   const property honorarioReferencia

//   method cantProfQueEstudiaronEn(unaUniv) = profesionales.count({prof => prof.universidad() == unaUniv})

//   method profesionalesCaros() = profesionales.filter({prof => prof.honorariosPorHora() > self.honorarioReferencia()})

//   method universidadesFormadoras() = profesionales.map({prof => prof.universidad()})

//   method profesionalMasBarato() = profesionales.find({prof => prof.honorariosPorHora() == self.honorarioMasBaratoRegistrado()})

//   method honorarioMasBaratoRegistrado() = profesionales.min({prof => prof.honorariosPorHora()}).honorariosPorHora()

//   method esDeGenteAcotada() = profesionales.all({prof => prof.provinciasDondePuedeTrabajar().size() <= 3})
// }

// // - - - - - - - - - - - - - - - PART 2 - - - - - - - - - - - - - - - - - - - - 
// class Solicitante{


// }