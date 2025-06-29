(:
3. Mostrar el nombre y email de los profesores que imparten el curso "Bases de Datos OR"
:)

for $curso in collection("academia")/curso[nombre="Bases de Datos OR"]
for $profesor in collection ("academia")/profesor
where $curso/profesor/@idref=$profesor/@id
return concat('nombre: ', data($profesor/nombre), ' ,email: ', data($profesor/email))


(: 
Otra solución

for $x in collection("academia")
where $x/curso/[@idref=
  (for $y in collection("academia")
   where $y/curso/nombre/text()="Bases de Datos OR"
   return data($y/curso/profesor/@idref)
   )
]
return concat($x/profesor/nombre/text(), ',',$x/profesor/email/text())

:)

(: Otra 

for $doc in collection("academia")/profesor
where collection("academia")/curso[nombre="Bases de Datos OR"]/profesor/@idref = $doc/@id
return concat($doc/nombre/text()," | ", $doc/email/text())

:)
