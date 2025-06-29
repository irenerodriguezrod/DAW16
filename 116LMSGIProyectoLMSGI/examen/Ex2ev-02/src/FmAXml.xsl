<?xml version="1.0" encoding="UTF-8"?>

<!-- 
     Nombre: Irene Rodríguez Rodríguez
     Fecha: 16-03-2025
     Descripción: Dado el fichero JoaquinSabina.xml , se pide crear un documento
                  XML que al transformarlo de un documento XML  
-->


<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">
    
    <xsl:output method="xml" indent="yes"/>
    <xsl:mode on-no-match="shallow-copy"/>

    <!-- Plantilla para el elemento raíz -->
    <xsl:template match="/lfm/topalbums">
        <albums>
            <!-- Ordenar los álbumes por playcount en orden ascendente(de menos a mas) -->
            <xsl:for-each select="album">
                <xsl:sort select="playcount" data-type="number" order="ascending"/>
                <xsl:apply-templates select="."/>
            </xsl:for-each>
        </albums>
    </xsl:template>

    <!-- Plantilla para cada álbum -->
    <xsl:template match="album">
        <album>
            <name>
                <xsl:value-of select="name"/>
            </name>
            <playcount>
                <xsl:value-of select="playcount"/>
            </playcount>
            <url>
                <xsl:value-of select="url"/>
            </url>
        </album>
    </xsl:template>

</xsl:stylesheet>