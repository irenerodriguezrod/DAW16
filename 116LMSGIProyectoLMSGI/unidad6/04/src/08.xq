(:
8. Renombrar el nodo total por importeTotal
:)
let $x := doc("facturasdb/factura1.xml")
return 
  rename node $x/factura/total as "importeTotal"

(: UTILIZANDO FOR
for $x in collection("facturasdb")
return 
  rename node $x/factura/total as "importeTotal"
:)