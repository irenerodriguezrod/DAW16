(: 25.Mostrar el título y el número de caracteres que tiene cada título, cada uno con su propia etiqueta. :)

(: Esto es para que el resultado salga con formato :)
declare option output:indent "yes";
<libros>
{
  for $x in/bookstore/book
  let $titulo := $x/title/text()
  let $longitud := string-length($titulo)
  
  return
    <libro>
      <titulo>{ $titulo }</titulo>
      <longitud>{ $longitud }</longitud>
    </libro>
}
</libros>