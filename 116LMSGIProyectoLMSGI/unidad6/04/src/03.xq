(:
3. Mostrar el ID de factura como ID de cliente y correo del cliente
:)
<clientes>
{
  for $x in collection("facturasdb")/factura
  return <cliente id="{$x/@id}">{$x/cliente/email/text()}</cliente>
}
</clientes>
(:
<clientes> - etiqueta dentro de la cual irán el resto de datos, en este caso el return 
  for $x in collection("facturasdb")/factura - aquí se parte desde factura
  
  return <cliente id="{$x/@id}">{$x/cliente/email/text()}</cliente> - aqui lo que se está devolviendo es una etiqueta por cada uno de los clientes que hay, el id se coge de la factura, de ahi el @id. se cierra la etiqueta de inicio, y se vuelven a abrir llaves para coger de entre los datos del cliente el email (el texto del email para no coger todo)
</clientes>


:)