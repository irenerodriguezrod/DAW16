(: ESTO ES UN COMENTARIO:)

(: CONSULTAS :)

(: 1.- Lista el título de los libros ordenados por título. :)
for $x in /bookstore/book (: se define la variable en una ruta la cual se encuentra el nombre que necesitamos:)
order by $x/title/text() (: se ordena por el titulo:)
return $x/title/text() (: devuelve el valor, pero para que solo devuelve el nombre del titulo se hace de esa manera:) 
