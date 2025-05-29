import profesional.*
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