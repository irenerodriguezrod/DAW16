<?xml version="1.0" encoding="UTF-8"?>

<!-- 
     Autor: Irene Rodríguez
     Fecha de creación: 19 de febrero de 2025
     Fecha de modificación: 20 de febrero de 2025 
     Descripción: Creación de un documento XSL cuya salida es un YAML
-->

<xsl:package xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
             xmlns:xs="http://www.w3.org/2001/XMLSchema"
             name="package-uri"
             package-version="1.0"
             exclude-result-prefixes="#all"
             expand-text="yes"
             version="3.0">
    <xsl:output method="xml" indent="yes"/>
    
    
    <xsl:template match="/network" mode="#all">
        <!-- Cada vez que escribe una variable utiliza un INTRO se usa el codigo '&#10;' -->
        <xsl:variable name="newline" select="'&#10;'"/>
        <xsl:variable name="newtab" select="'    '"/>
        <!-- Para trabajar con una variable se pone el símbolo del dólar ($).
             Lo que hace la siguiente linea es seleccionar Ethernet y escribirlo con : al final. 
             Es decir se selecciona el nombre del elemento actual y se añade :
        -->
        <xsl:value-of select="concat(name(current()),':')"/>
        <xsl:for-each select="ethernets">
            <!-- Concat escribe una cadena de caracteres, lo que hace es escribir una nueva linea y una tabulacion(esto dentro del elemento ETHERNETS) -->
            <!-- name -->
            <xsl:value-of select="concat($newline,$newtab,name(current()),':')"/>
            <!-- contenido name -->
            <xsl:value-of select="concat($newline,$newtab, $newtab,name,':')"/>
            <!-- addresses -->
            <xsl:value-of select="concat($newline, $newtab, $newtab, $newtab,name(addresses),':')"/>
            <!-- contenido addresses -->
            <xsl:value-of select="concat($newline,$newtab, $newtab, $newtab, $newtab, addresses)"/>
            <!-- gateaway (si existe o no por eso se pone if). es para la puerta de enlace-->
            <xsl:if test="gateway4">
                <xsl:value-of select="concat($newline,$newtab, $newtab, $newtab, 'routes:')"/>
                <xsl:value-of select="concat($newline,$newtab, $newtab, $newtab, $newtab, 'to: default')"/>
                <xsl:value-of select="concat($newline,$newtab, $newtab, $newtab, $newtab, 'via: ', gateway4)"/>
            </xsl:if> <!-- fin puerta de enlace -->
            
            <!-- nombre del servidor -->
            <xsl:if test="nameservers"> <!-- falta el nombre que pone NAMESERVERS -->
            <xsl:value-of select="concat($newline,$newtab, $newtab, 'nameservers:')"/>
                <!--<xsl:value-of select="concat($newline,$newtab, $newtab, $newtab, name())"/>-->
                <xsl:value-of select="concat($newline,$newtab, $newtab, $newtab, 'addresses:')"/>
                
                <!-- Se hace este tip de bucle pq no se sabe exactamente cuantas direcciones hay, entonces lo repite las veces que haya direcciones (en caso de que las haya) -->
                <xsl:for-each select="nameservers/addresses">
                    <xsl:value-of select="concat($newline,$newtab, $newtab, $newtab, $newtab, current())"/>
                </xsl:for-each>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
    
    
    
</xsl:package>


<!-- Por cada ethernet se pone al final : -->
<!-- <xsl:value-of select="concat(name(current()),':')"/> -->