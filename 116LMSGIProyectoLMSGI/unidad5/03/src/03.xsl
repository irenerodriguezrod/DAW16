<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                version="3.0">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/listatickets">
<!-- 
    Autor.- Irene Rodríguez Rodríguez
    Fecha de creación.- 20 de febrero de 2025
    Fecha de modificación.- 20 de febrero de 2025
    Descripcion .- Listado de tickets 
-->
    <html>
        <head>
            <title>UD05-03 XSLT Tickets - Irene Rodríguez Rodríguez</title>
            <meta charset="UTF-8"/>
        </head>
        <body>
        <header>
            <h1>Información de tickets</h1>
            <h2>Listado de tickets</h2>
        </header>
        <xsl:apply-templates select="ticket"/>
        <footer>
            <div>NÚMERO DE TICKETS: <xsl:value-of select="count(ticket)"/></div>
            <div>TOTAL DE TICKETS: <xsl:value-of select="(sum(ticket/total))"/></div>
        </footer>
        </body>
    </html>
    </xsl:template>
    <xsl:template match="ticket">
        <h3>Tickets: <xsl:value-of select="numero"/></h3>
        <table>
        <caption><xsl:value-of select="fecha"/></caption>
        <thead>
            <tr>
                <th>Producto</th>
                <th>Precio</th>
            </tr>
        </thead>
        <tbody>
        <xsl:apply-templates select="producto"/>
        </tbody>
        <tfoot>
            <tr>
                <th>Total</th>
                <th><xsl:value-of select="total"/></th>
            </tr>
        </tfoot>
        </table>
    </xsl:template> 

    <xsl:template match="producto">
        <tr>
            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="precio"/></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>