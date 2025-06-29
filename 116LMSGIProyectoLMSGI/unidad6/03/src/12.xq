(: 12. Mostrar los años de publicación,
primero con for y luego con let. Etiquetar la salida con publicación :)

(: USANDO FOR
  for $x in /bookstore/book/year
  return <publicacion>{$x/text()}</publicacion>
:)

(: USANDO LET:)
<publicacion>
{
  let $x:=/bookstore/book/year
  return $x
}
</publicacion>