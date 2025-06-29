(:
4. Mostrar el total de la factura 2
:)

doc("facturasdb/factura2.xml")//total/text()

(:
si se quiere trabajar con un archivo en concreto dentro de la base de datos se utiliza doc("nombreBD/archivo")

//total/text() - esto es para no poner toda la ruta 

Si se quisiera usar toda la ruta sería de la siguiente manera
doc("facturasdb/factura2.xml")/factura/total/text()

Para que la salida quede de mejor manera, se podría utilizar un concat
concat("Total: "{doc("facturasdb/factura2.xml")//total/text()})

:)