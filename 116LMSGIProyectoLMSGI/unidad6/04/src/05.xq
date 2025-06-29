(: 
5. Remplazar el nombre del cliente en la factura F001 por "tu nombre y Apellidos"
:)
let $x := doc("facturasdb/factura1.xml")
return 
  replace value of node $x/factura/cliente/nombre/text() 
  with "Irene Rodriguez"

(: UTILIZANDO EL FOR
for $doc in collection("facturasdb")
where $doc/factura/@id='F001'
return 
  replace value of node $doc/cliente/nombre
  with "Irene Rodriguez"

:)