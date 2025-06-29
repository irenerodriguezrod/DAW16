(:
6. Insertar un nuevo nodo estado con valor pagada dentro de en la factura F001
:)
let $x := doc("facturasdb/factura1.xml")
return 
    insert node <estado>Pagada</estado> into $x/factura

(: UTILIZANDO FOR
for $doc in collection("facturasdb")
where $doc/factura/@id='F001'
return 
  insert node <estado>Pagada</estado> into $x/factura
:)