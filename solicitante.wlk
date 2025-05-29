import profesional.*
class SolicitantePersona{
    var property provincia

    method puedeSerAtendidoPor(unProfesional) = unProfesional.provinciasDondePuedeTrabajar().contains(provincia) 

    method puedeSerAtendidoPorAlMenosUn(grupoProf) = grupoProf.any({prof => prof.provinciasDondePuedeTrabajar().contains(provincia)})

}

class SolicitanteInstitucion{
    const property universidades //#{}

    method puedeSerAtendidoPor(unProfesional) = universidades.contains(unProfesional.universidad())

    method puedeSerAtendidoPorAlMenosUn(grupoProf) = grupoProf.any({prof => universidades.contains(prof.universidad())})

}

class SolicitanteClub{
    const property provincias //#{}

    // method puedeSerAtendidoPor(unProfesional) = provincias.any({prov => unProfesional.provinciasDondePuedeTrabajar().contains(prov)})
    method puedeSerAtendidoPor(unProfesional) = unProfesional.trabajaEnAlMenos1DeEstasProv(provincias)


    method puedeSerAtendidoPorAlMenosUn(grupoProf) = grupoProf.any({prof => prof.trabajaEnAlMenos1DeEstasProv(provincias)})

}



