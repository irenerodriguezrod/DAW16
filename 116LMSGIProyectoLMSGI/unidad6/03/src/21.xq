(: 21. Mostrar en la misma etiqueta el título y entre paréntesis el número de autores que tiene ese títulov:)
<libros>
{
  for $x in /bookstore/book
  let $titulo := $x/title/text()
  let $numAutores := count($x/author)
  return
    <libro>{ concat($titulo, " (", $numAutores, " autores)") }</libro>
}
</libros>
