(: 7. Uso de at, for variable1 at variable2 expresiónXpath, siendo la segunda variable la posición de
cada nodo. Genera el siguiente archivo XML (07.xml). :)

<books> (: $n es el numero de libro :)
  {
    for $x at $n in /bookstore/book
    return <book>{$n}.{$x/title/text()}</book>
  }
</books>