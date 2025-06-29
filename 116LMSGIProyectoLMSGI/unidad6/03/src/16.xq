(:  16. Mostrar el precio mínimo y el máximo de los libros:)
<precio>
  <minimo>{ min(/bookstore/book/price) }</minimo>
  <maximo>{ max(/bookstore/book/price) }</maximo>
</precio>

(:
declare option output: indent "yes"
concat ("Precio máximo: ",max(/bookstore/book/price), &#10,"Mínimo: ",min(/bookstore/book/price))


&#10 es el código ASCII para que haya un intro entre ambas para que no salga todo de seguido
:)
