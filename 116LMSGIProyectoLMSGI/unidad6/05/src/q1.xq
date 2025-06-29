(:
1. Mostrar el código del "Aula 1"
:)
for $x in collection("academia")
where $x/aula/nombre = "Aula 1"
return 
  data($x/aula/@id)