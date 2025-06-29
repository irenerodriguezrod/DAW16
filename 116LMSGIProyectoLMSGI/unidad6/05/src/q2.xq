(:
2. Qué cursos imparten/o han impartido clases en el "Aula 1"
:)

let $idAula1 := 
  for $aula in collection('academia')//aula
  where $aula/nombre = "Aula 1"
  return $aula/@id
  
  for $curso in collection('academia')//curso
  where $curso/aula/@idref = $idAula1
  
  return data($curso/nombre)



(: Otra solución sería la siguiente, en la que también se busca el ID

for $curso in collection('academia')/curso
let $aula := collection("academia")/aula[nombre="Aula 1"]
where $aula/@id = $curso/aula/@idref
return data($curso/nombre)

:)

(: En caso de saber el ID del aula 1. Esta solución no sirve porque lo que se pide es calcular que ID le corresponde a ese aula

for $x in collection("academia")
where $x/aula/nombre = "Aula 1"
return
  data($x/aula/nombre/curso/text())

:)
