(:
4. Listado de los cursos que imparte el profesor con el siguiente DNI: 33856315
:)

(:
for $x in collection("academia")
where $x/profesor/dni = "33856315"
return data($x/profesor/asignatura/text())
:)


let $idCurso :=
  for $prof in collection('academia')/profesor
where $prof/dni = "33856315"
return data($prof/@id)


(:
for $curso in collection('academia')/curso
  where $curso/profesor/@idref = $idCurso
  return data($curso/nombre)
:)