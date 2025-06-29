(:26.Mostrar todos los años en los que se ha publicado un libro eliminando los repetidos. Etiquetados con "año".:)

declare option output:indent "yes";
 <añosPublicacion>
 {
   for $x in distinct-values(/bookstore/book/year/text())
   return <anyo>{ $x }</anyo>
 }
 </añosPublicacion>
(: Se podría poner de etiqueta AÑO aunque es mejor poner ANYO:)