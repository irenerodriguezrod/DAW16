(:
1. Listar el nombre de los clientes.
:)
(: con esto nos devuelve todo lo que hay dentro de la BD
for $x in collection("facturasdb")
return $X
:)
for $x in collection("facturasdb")
return $x/factura/cliente/nombre/text()

(: se podria poner relativo tb el return :)