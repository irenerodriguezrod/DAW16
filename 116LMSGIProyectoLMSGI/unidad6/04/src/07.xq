(:
7. Eliminar el último nodo creado en la factura F001
:)
let $x := doc("facturasdb/factura1.xml")
return delete node $x/factura/estado

(: UTILIZANDO FOR
for $x in collection("facturasdb")
where $x/factura/@id='F001'
return delete node $x/factura/estado
:)