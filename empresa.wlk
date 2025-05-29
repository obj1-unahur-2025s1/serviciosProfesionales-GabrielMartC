import profesional.*
class EmpresaServicio{
    const profesionales = #{}
    const clientes = #{}

    method incorporarProf(unProfesional) = profesionales.add(unProfesional)

    const property honorarioReferencia

    method cantProfQueEstudiaronEn(unaUniv) = profesionales.count({prof => prof.universidad() == unaUniv})

    method profesionalesCaros() = profesionales.filter({prof => prof.honorariosPorHora() > self.honorarioReferencia()})

    method universidadesFormadoras() = profesionales.map({prof => prof.universidad()})

    method profesionalMasBarato() = profesionales.find({prof => prof.honorariosPorHora() == self.honorarioMasBaratoRegistrado()})

    method honorarioMasBaratoRegistrado() = profesionales.min({prof => prof.honorariosPorHora()}).honorariosPorHora()

    method esDeGenteAcotada() = profesionales.all({prof => prof.provinciasDondePuedeTrabajar().size() <= 3})

    method puedeSatisfacerASolicitante(unSolicitante) = unSolicitante.puedeSerAtendidoPorAlMenosUn(profesionales)

    method darServicio(unSolicitante){
        if(self.puedeSatisfacerASolicitante(unSolicitante)){
            const profAleatorioQuePuedeAtender = self.profesionalesQuePuedenAtenderA(unSolicitante).anyOne() //unconjunto
            profAleatorioQuePuedeAtender.cobrarImporte(profAleatorioQuePuedeAtender.honorariosPorHora())
            clientes.add(unSolicitante)
        }
    }

    method profesionalesQuePuedenAtenderA(unSolicitante) = profesionales.filter({prof => unSolicitante.puedeSerAtendidoPor(prof)})
    //retorna un conjunto

    method cantidadClientes() = clientes.size()

    method tieneComoClienteA(unSolicitante) = clientes.contains(unSolicitante)

}