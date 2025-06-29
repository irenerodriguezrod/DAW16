(:
9. Actualizar todas las facturas con importe inferior a 200 con el valor 100.
:)
let $x := collection("facturasdb")

for $factura in $x/factura
where $factura/importeTotal < 200
return 
  replace value of node $factura/importeTotal with 200

(: UTILIZANDO FOR
for $doc in collection("facturasdb")
where $doc/factura/importeTotal < 200
return 
  replace value of node $doc/factura/importeTotal with 200
:)


