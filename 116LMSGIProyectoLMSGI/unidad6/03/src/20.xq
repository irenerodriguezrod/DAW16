(: 20. Mostrar el título y el número de autores que tiene cada título en etiquetas diferentes.:)

<libros>
{
  for $x in /bookstore/book
  let $titulo := $x/title/text()
  let $numAutores := count($x/author)

  return
    <libro>
      <titulo>{ $titulo }</titulo>
      <numAutores>{ $numAutores }</numAutores>
    </libro>
}
</libros>
