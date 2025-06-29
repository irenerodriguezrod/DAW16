<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 05.xsl
    Created on : 15 de abril de 2020, 11:27
    Author     : amor
    Description:
        Regla asociada a cada uno de los siete nodos de Xpath
        Trabajando con el atributo mode en una plantilla
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent="yes"/>  
    <xsl:template match="alumnos">
        <html>
            <head> 
                <meta charset="utf-8"/>
                <title>01-3 XSLT  Información de alumnos</title>
                <style>
                    table{ width:100%; border-collapse:collapse;}
                    th {background-color: grey; color:#fff;}
                    td {color:grey;}
                    th,tr,td{border:2px solid grey; padding:2px;}
                    li{padding:2px;}
                </style>
            </head>
            <body>
                <h1>Trabajando con el atributo mode</h1>
                <h2>Información de todos los alumnos</h2>
                <table>
                    <tr>
                        <th>Nombre</th>
                        <th>Apellido</th>
                    </tr>
                    <xsl:apply-templates select="alumno" />
                </table>
                <h2>Lista de alumnos</h2>
                <ul>
                <xsl:apply-templates select="alumno" mode="lista" />
                </ul>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="alumno">
        <tr>
            <td>
                <xsl:value-of select="nombre"/>
            </td>
               <td>
                <xsl:value-of select="apellido"/>
            </td>
        </tr>
    </xsl:template>
    <xsl:template match="alumno" mode="lista">
        <li><xsl:value-of select="concat(nombre, ' ',apellido)"/></li>
    </xsl:template>
</xsl:stylesheet>
