<?xml version="1.0" encoding="UTF-8"?>

<!-- 
     Autor: Irene Rodríguez
     Fecha de creación: 19 de febrero de 2025
     Fecha de modificación: 19 de febrero de 2025 
     Descripción: Creación de un documento XSL cuya salida es un XML
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">

    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/root" mode="#all">
        <xsl:copy>
            <xsl:for-each select="row">
                <xsl:copy>
                <!-- Opción 1 si no hay muchos atributos, si hay muchos y no somos capaces de controlar todo, habría que usar la segunda forma
                    <Anyo><xsl:value-of select="@Anyo"/></Anyo>
                    <Concepto><xsl:value-of select="@Concepto"/></Concepto>
                    <Usuarios_registrados><xsl:value-of select="@Usuarios_registrados"/></Usuarios_registrados>  
                    -->
                    <xsl:for-each select="@*">
                        <xsl:element name="{name()}">
                            <xsl:value-of select="."/>
                        </xsl:element>
                    </xsl:for-each>
                </xsl:copy>
            </xsl:for-each>
            <xsl:apply-templates />
        </xsl:copy>
    </xsl:template>

    

</xsl:stylesheet>