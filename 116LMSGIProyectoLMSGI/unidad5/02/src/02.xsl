<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 03.xsl
    Created on : 15 de abril de 2020, 11:14
    Author     : amor
    Description:
       Manejar mútiples patrones o plantillas para obtener una pagina web
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
<!-- Creación de la estructura de la página web -->
    <xsl:template match="/alumnos">
        <html>
            <head>
                <meta charset="utf-8"/>
                <title>01-2 XSLT - Informacion de alumnos </title>
            </head>
            <body>
                <xsl:apply-templates select="alumno"/>
            </body>
        </html>
    </xsl:template>
    
    <!-- Mostrar los datos de cada alumno -->
    <xsl:template match="alumno">
        <p><xsl:value-of select="concat(nombre,' ',apellido)"/></p>
        <xsl:apply-templates select="direccion"/>
           <hr/>
    </xsl:template>
    
    <!-- Mostrar las direcciones de cada alumno -->
    <xsl:template match="direccion">
        <p>Poblacion: <xsl:value-of select="poblacion"/> </p>
        <p> <xsl:value-of select="cp"/></p>
    </xsl:template>

</xsl:stylesheet>
