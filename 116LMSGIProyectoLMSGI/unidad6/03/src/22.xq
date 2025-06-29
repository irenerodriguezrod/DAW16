(:  22. Mostrar los libros escritos en años que terminan en “3”:)
<books>
{
  for $x in /bookstore/book
  where ends-with(string($x/year/text()), "3")
  return $x
}
</books>

(:
$x/year/text() - aquí no haría falta poner la etiqueta TEXT()
:)