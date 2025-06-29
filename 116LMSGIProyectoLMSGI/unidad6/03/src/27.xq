(: 27. Mostrar todos los autores eliminando los que se repiten y ordenados por el número de caracteres que tiene cada autor :)
for $x in distinct-values(/bookstore/book/author/text())
order by string-length($x)
return $x

(:
Como el texto no dice nada, se hace sin etiquetas
<autores>
{
  for $autor in distinct-values(/bookstore/book/author/text())
  order by string-length($autor)
  return <autor>{ $autor }</autor>
}
</autores>
:)
