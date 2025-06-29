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
for $x in collection("academia")/curso

where current-date()=

return