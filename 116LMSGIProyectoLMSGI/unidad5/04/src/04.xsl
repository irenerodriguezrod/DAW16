<?xml version="1.0" encoding="UTF-8"?>
<!-- 
     Autor: Irene Rodríguez
     Fecha de creación: 12 de febrero de 2025
     Fecha de modificación: 16 de febrero de 2025 
     Descripción: Creación de un documento XSL con el bucle "for-each"
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                version="3.0">
    
    <!-- Para acceder al parametro se accede con $ y muestra el resultado, si se encuentra corregido o no. Cuando esta corregido se muestra de color tenua y no se puede modificar -->
    <!-- Se cambiaria de NO  a YES xa q salgan las respuestas deshabilitadas. Habria que hacer run xa q funcione de nuevo -->
    
    <!-- Define un parámetro llamado corregido con valor por defecto 'no'. Este parámetro puede ser cambiado al momento de aplicar la transformación, y se utiliza para indicar si se han corregido las respuestas o no. -->
    <!-- Para que funcione hay que poner "'si'" porque con yes no funciona ya que en el json esta definido con "'si'" -->
    <xsl:param name="corregido" select="'no'"/>
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/examen">
        <html>
            <head>
                <title>4 XSLT - Irene Rodríguez</title>
                <meta charset="UTF-8"/>
                <!-- Hoja de estilos a la que estará vinculado el HTML cuando se genere -->
                <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
            </head>
            <body>
                <header>
                    <!-- Extrae el valor del nodo <nombreCiclo> en el XML de entrada -->
                    <h1><xsl:value-of select="datos/nombreCiclo"/></h1>
                    <h2><xsl:value-of select="document('../input/modulosdaw1.xml')/modulos/modulo[@codM=current()/datos/nombreModulo]"/></h2>
                    <!-- Lo que se ha echo en meses es seleccionar el archivo meses para que escriba el mes en el que estamos en vez de que muestre el ID. Current es para que no se muestre un hueco en blanco entre los "DE" y "DE". Se pone "/datos/fecha/mes" porque es el orden que hay en text.xml -->
                    <h3>Fecha: <xsl:value-of select="datos/fecha/dia"/> de
                        <xsl:value-of select="document('../input/meses.xml')/meses/mes[@id=current()/datos/fecha/mes]"/> de
                        <xsl:value-of select="datos/fecha/anyo"/></h3>
                </header>
                <main>
                    <!-- Formulario generado a partir de la información que contiene el archivo XML -->
                    <form action="text.php" methodo="GET">
                        <xsl:for-each select="preguntas/pregunta">
                            <div class="pregunta">
                                <div>
                                    <!-- No se pone ruta absoluta ya que las preguntas saldrian el nº de preguntas que haya y se quedarían duplicadas, es decir, daría error y no saldría el resultado que estamos buscando -->
                                    <xsl:value-of select="@id"/>.-
                                    <xsl:value-of select="enunciado"/>
                                </div>
                                <xsl:for-each select="respuestas/respuesta">  
                                    <div class="respuesta">
                                        <!-- Elemento desactivado disabled y activo es checked -->
                                        <label>
                                            <xsl:element name="input">
                                                <xsl:attribute name="type" select="'radio'"/>
                                                <xsl:attribute name="name" select="concat('p', ../../@id)"/>
                                                <xsl:attribute name="value" select="position()"/>
                                                <xsl:if test="$corregido='yes' and @correcta='correcta'">
                                                    <xsl:attribute name="checked">checked</xsl:attribute>
                                                </xsl:if>
                                                <!-- Todos los radios estarán deshabilitados -->
                                                <xsl:if test="$corregido='yes'">
                                                    <xsl:attribute name="disabled"></xsl:attribute>
                                                </xsl:if>
                                            </xsl:element>
                                            <xsl:value-of select="./text()"/>
                                        </label>
                                    </div>
                                </xsl:for-each>   
                            </div>
                        </xsl:for-each>
                    </form>
                </main>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>

<!-- 
     Hay que terminar de añadir los botones de enviar y reiniciar. También añadir un condicional para cuando la respuesta es correcta
-->