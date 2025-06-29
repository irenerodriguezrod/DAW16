(:24. Mostrar los libros que contenga una X mayúscula o minúscula en el título ordenados de manera
 descendente:)
for $x in /bookstore/book
where contains($x/title/text(), "X") or contains($x/title/text(), "x")
order by $x/title descending
return $x/text()
