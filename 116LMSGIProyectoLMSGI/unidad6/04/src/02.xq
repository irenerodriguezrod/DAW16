(:
2. Filtrar facturas con un importe total mayor que 200
:)
for $x in collection("facturasdb")
where $x/factura/total>200
return $x

(: Con LET 
let $x := collection("facturasdb")/factura/[total>200]
return $x

Si se utiliza LET, no se puede usar la variable WHERE
:)