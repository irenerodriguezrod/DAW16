(:
10. Trasformar los datos a un archivo XML con el siguiente contenido, donde el atributo autores indica
 el número de autores de cada libro:
:)
<libros>
{
    for $x in /bookstore/book
    return
    <libro autores="{count($x/author)}">{$x/title/text()}</libro>
}
</libros>