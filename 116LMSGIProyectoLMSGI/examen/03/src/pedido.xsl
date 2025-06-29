<?xml version="1.0" encoding="UTF-8"?>

<!-- 
    Nombre: Irene Rodríguez Rodríguez
    Fecha de realización: 17/03/2025
    Fecha de modificación: 17/03/2025
    Descripción:
                PREGUNTA 3. XSLT 
                • Se pide obtener una página web con el siguiente diseño, target/pedidos.html.  El título de la 
                web.  “Pedidos Nombre y Apellidos”. 
                • Las imágenes de las componentes coinciden con su código 
                • Las imágenes de los fabricantes coinciden con su código 
                • Todas las imágenes son png 
-->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    
    <xsl:import href="../../../unidad5/lib/libhtml.xsl"/> <!-- Importar plantilla -->
    
    <!-- Plantilla que dado una fecha la escribe en otro formato -->
    <xsl:template match="pedido/@fecha" name="fecha">
        <xsl:variable name="anio" select="substring(., 1, 4)"/>
        <xsl:variable name="mes" select="substring(., 6, 2)"/>
        <xsl:variable name="dia" select="substring(., 9, 2)"/>
        <xsl:value-of select="$dia"/> de
        <xsl:choose>
            <xsl:when test="$mes='01'">enero</xsl:when>
            <xsl:when test="$mes='02'">febrero</xsl:when>
            <xsl:when test="$mes='03'">marzo</xsl:when>
            <xsl:when test="$mes='04'">abril</xsl:when>
            <xsl:when test="$mes='05'">mayo</xsl:when>
            <xsl:when test="$mes='06'">junio</xsl:when>
            <xsl:when test="$mes='07'">julio</xsl:when>
            <xsl:when test="$mes='08'">agosto</xsl:when>
            <xsl:when test="$mes='09'">septiembre</xsl:when>
            <xsl:when test="$mes='10'">octubre</xsl:when>
            <xsl:when test="$mes='11'">noviembre</xsl:when>
            <xsl:when test="$mes='12'">diciembre</xsl:when>
        </xsl:choose> de <xsl:value-of select="$anio"/>
    </xsl:template>
    
    <!-- Plantilla que dado un pedido lo escribe en una tabla -->
    <xsl:template match="/pedido" mode="#all">
        <html>
            <head>
                <xsl:call-template name="meta"> <!-- título de la página -->
                    <xsl:with-param name="titulo" select="'Pedidos: Irene Rodríguez Rodríguez'"/> <!-- Se ponen comillas simples dentro de las comillas dobles pq es un texto dentro del select -->
                </xsl:call-template>
                <link rel="stylesheet" href="../target/estilos.css"/> <!-- Llamar a la plantilla de estilos -->
            </head>
            <body>
                <header>
                    <h1>
                        <p>Pedido ID: <xsl:value-of select="@idPedido"/></p> <!-- se selecciona el ID -->
                    </h1>
                </header>
                <main>
                    <h2>Fecha: <xsl:call-template name="fecha"/></h2>
                    <p>Fabricante: <xsl:call-template name="fabricante"/></p>


                    <div id="cajaPrincipal"> <!-- dentro esta el nom fabricante y la tabla -->
                        <h2><img src="images{@codigoFabricante}.png"/>Fabricante: <xsl:value-of select="tractor/@codigoFabricante"/><xsl:value-of select="fabricante"/></h2>
                        <table>
                            <thead>
                                <tr>
                                    <th><!-- imagen del componente -->
                                        <img src="images/{@referencia}.png"/>
                                    </th>
                                    <th>Referencia</th>
                                    <th>Descripción</th>
                                    <th>Fecha Entrega</th>
                                    <th>Peso</th>
                                    <th>Numero de serie</th>
                                    <th>Km Máximos</th>
                                    <th>Cantidad</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr><!-- fila -->
                                    
                                    <xsl:for-each select="referencia"><!-- referencia -->
                                        <td><xsl:value-of select="@referencia/text()"/></td> <!-- contenido fila -->
                                    </xsl:for-each>
                                    
                                    <td></td><!-- descripcion -->
                                    
                                    <xsl:for-each select="fechaEntrega"><!-- fechaEntrega -->
                                        <td><xsl:value-of select="fechaEntrega"/></td>
                                    </xsl:for-each>
                                    
                                    <xsl:for-each select="peso"> <!-- peso -->
                                        <td><xsl:value-of select="peso/text()"/><xsl:value-of select="@unidad"/></td>
                                    </xsl:for-each>
                                    
                                    <xsl:for-each select="numeroSerie"><!-- nserie -->
                                        <td><xsl:value-of select="numeroSerie/text()"/></td>
                                    </xsl:for-each>
                                    
                                    <xsl:if test="kmMaximos"> <!-- en caso de que haya se pone -->
                                        <xsl:value-of select="kmMaximos"/>
                                    </xsl:if>
                                    
                                    <xsl:for-each select="cantidad"> <!-- cantidad -->
                                        <td><xsl:value-of select="cantidad"/></td>
                                    </xsl:for-each>
                                    
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </main>
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>