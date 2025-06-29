(: 
13. Mostrar los libros ordenador primero por “category”
y luego por “title” en una sola consulta. 
 
Este no se puede realizar con LET
:)

for $x in /bookstore/book
order by $x/@category descending, $x/title/text() descending
return concat (data($x/@category), ": ",data($x/title/text()))
