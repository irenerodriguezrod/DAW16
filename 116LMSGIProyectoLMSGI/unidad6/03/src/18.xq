(: 18.  Mostrar la suma total de los precios con la etiqueta total:)

(: Este resultado se muestra sin formato :)
<total>{ sum(/bookstore/book/price) }</total>

(:
Resultado con formato para evitar que salgan muchos decimales. En este caso, # indica el nº de decimales que queremos que se muestren

<total>{format-number(sum(/bookstore/book/price), '#.00')}</total>
:)