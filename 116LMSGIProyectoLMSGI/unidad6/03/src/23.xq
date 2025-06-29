(: 23.  Mostrar los libros cuya categoría empiece por C:)
for $x in /bookstore/book
where starts-with($x/@category, "c")
return $x/title/text()
