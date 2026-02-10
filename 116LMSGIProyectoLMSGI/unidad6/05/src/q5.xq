(:
5. Nombre de los cursos que no han finalizado
:)

(: Cambia valor a uno de los cursos para que nos devuelva resultado, ya que todos los cursos finalizaron en 2024

for $curso in collection(academia)/curso
where $curso/@id="1"
return
  replace value of node $curso/fin with "01/12/2025"
:)

(:
Consulta
:)

for $curso in collection('academia')//curso
let $fechaTokens := tokenize($curso/fin, "/")
let $fecha := xs:date(concat($fechaTokens[3], "-", 
                                format-number(xs:integer($fechaTokens[2]), "00"), "-", 
                                format-number(xs:integer($fechaTokens[1]), "00")))
where $fecha > current-date()
return data($curso/nombre)