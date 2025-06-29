<?xml version="1.0" encoding="UTF-8"?>

<!-- 
     Nombre: Irene Rodríguez Rodríguez
     Fecha: 13-03-2025
     Descripción:
        Se pide crear una página web mediante XSLT, FmAWeb.xsl, que nos muestre los álbumes de Joaquin Sabina. 
        Título de la web: Nombre del artista: Tunombre y apellidos 
        Listados de álbumes con las fotos del album, imagen con el atributo large, en el caso de no disponer de imagen nos muestra images/sin.png. 
        El nombre del disco en un enlace al elemento url. 
        Nota: la página tiene una anchura de 1024px y centrada.  
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">
    
    <xsl:output method="html" indent="yes"/> <!-- Output HTML porque queremos una web -->
    
    <xsl:import href="../../../unidad5/lib/libhtml.xsl"/> <!-- Importar plantilla -->
    
    <!--
     	Título de la web: Nombre del artista: Tunombre y apellidos
        Listados de álbumes con las fotos del album, imagen con el atributo large,
    -->
    <xsl:template match="/lfm/topalbums" mode="#all"> <!-- Elemento raíz y el siguiente elemento se pone pq solo hay uno-->
        <html>
            <head>
                <xsl:call-template name="meta"> <!-- título de la página -->
                    <xsl:with-param name="titulo" select="'Joaquín Sabina : Irene Rodríguez Rodríguez'"/> <!-- Se ponen comillas simples dentro de las comillas dobles pq es un texto dentro del select -->
                </xsl:call-template>
                <link rel="stylesheet" href="../target/estilos.css"/> <!-- Llamar a la plantilla de estilos -->
            </head>
            <body>
                <header>
                    <h1>last.fm</h1>
                </header>
                <main>
                    <!--<h1>last.fm</h1> lo más correcto sería ponerlo en el header--> 
                    <!-- <h2>Joaquín Sabina</h2> esto no se pone ya que el dato se saca con value-of pq viene en el xml -->
                    <h2>
                        <xsl:value-of select="@artist"/> <!-- Se emplea el @ pq es un atributo dentro de topalbums y este se llama artist, contiene el nombre del artista que estamos buscando -->
                    </h2>
                    <h3>
                        <xsl:text>Álbumes</xsl:text>
                    </h3>
                    <div id="cajaPrincipal">
                        <!-- Ordenar los álbumes por el atributo playcount (número de veces reproducidas) -->
                        <xsl:for-each select="album">
                            <xsl:sort select="playcount" data-type="number" order="descending"/> <!-- Ordena los álbumes por el atributo playcount en orden descendente -->
                            
                            <div class="cajaAlbum">
                                <!-- Si el álbum tiene una imagen, la mostramos -->
                                <xsl:choose>
                                    <xsl:when test="string(image[@size='large'])">
                                        <!-- Si la URL de la imagen existe y no está vacía, la mostramos -->
                                        <img src="{image[@size='large']/text()}" alt="{name/text()}"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <!-- Si no tiene contenido o está vacía, mostramos la imagen predeterminada -->
                                        <img src="../target/images/sin.png" alt="{name/text()}"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                                
                                <div class="texto">
                                    <!-- Información del álbum: nombre y enlace al álbum -->
                                    <p><a href="{url/text()}"><xsl:value-of select="name"/></a></p>
                                    
                                    <!-- Información de los artistas -->
                                    <xsl:for-each select="artist">
                                        <p><xsl:value-of select="name"/></p>            
                                    </xsl:for-each>
                                    
                                    <!-- Mostrar el playcount (número de reproducciones) -->
                                    <!-- <p><strong>Reproducciones: </strong><xsl:value-of select="playcount"/></p> -->
                                </div>
                            </div>
                        </xsl:for-each>
                    </div>
                </main>
                <footer>
                    <!--No hay contenido especificado para añadirlo en el footer de la página -->
                </footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>