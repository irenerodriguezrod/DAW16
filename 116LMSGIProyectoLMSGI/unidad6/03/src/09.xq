(:
09. Mostrar el título del libro cuando tenga más de 2 autores

En lugar de utilizar el símbolo > se puede usar gt y si fuera mayor e igual se pondría el simbolo =
:)
for $book in /bookstore/book
where count($book/author) gt 2
return $book/title/text()
