(:
4. Listado de los cursos que imparte el profesor con el siguiente DNI: 33856315
:)

(:
for $x in collection("academia")
where $x/profesor/dni = "33856315"
return data($x/profesor/asignatura/text())
:)

let $x := collection("academia")/profesor/[dni="33856315"]

let $curso in collection("academia")/curso
where $x/profesor/@idref = 