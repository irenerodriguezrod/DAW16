(: 19. Mostrar cada uno de los precios de los libros , y al final una etiqueta con la suma de los precios:)
<precios>
{
  for $x in /bookstore/book/price/text()
  return <precio>{ $x }</precio>,

  <total>{ sum(/bookstore/book/price) }</total>
}
</precios>


(:

(
  for $x in /bookstore/book/price/text()
  return <precio>{ $x }</precio>,

  <total>{ sum(/bookstore/book/price) }</total>
)

:)