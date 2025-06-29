(: 15. Mostrar los títulos de los libros y al final una etiqueta con el número total de libros:)
(:
  (
  for $x in /bookstore/book
  return <titulo>{ $x/title/text() }</titulo>,
  
  <total>{ count(/bookstore/book) }</total>
  )
:)


(: 
El resultado se tiene que mostrar de la siguiente manera
<resultado>
  <book>-----</book>
  <book>-----</book>
  ----
  <total></total>
</resultado>
:)

<resultado>
  {
    let $x := (for $y in /bookstore/book/title/text() 
    return <book>{$y}</book>)
    
    let $t := count(/bookstore/book)
    return ($x, <total>{$t}</total>)
  }
</resultado>