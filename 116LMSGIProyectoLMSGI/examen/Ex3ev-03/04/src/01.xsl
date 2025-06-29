<?xml version="1.0" encoding="UTF-8"?>

<!-- 
    Nombre: Irene Rodríguez Rodríguez
    Fecha de realización: 02-06-2025
    Descripción: Se pide transformar mediante XSLT a una web
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">

  <xsl:output method="html" indent="yes"/>
  
  <xsl:import href="../../../../unidad5/lib/libhtml.xsl"/> <!-- Importar plantilla -->  

  <xsl:template match="/software-libre" mode="#all">
    <html>
      <head>
        <xsl:call-template name="meta">
          <xsl:with-param name="titulo" select="'Distribucion de software - Irene Rodriguez Rodriguez'"/>
        </xsl:call-template>
      </head>

      <body>
        
        <header>
          <img src="images/logo.jpg" alt="Logo Linux"/> <!-- Se pone la ruta como si ya estuviera en target, no se pone la ruta de donde nos encontramos ahora -->

          <h1>
            <xsl:value-of select="concat('Distribución de software ', @tipo)"/>  
          </h1>  
        </header>
        
        <main>
          
          <div class="cajaPrincipal">
            <h2>Lanzamiento de distribuciones</h2>
            <xsl:for-each select="lanzamiento"> <!-- no lleva / al comienzo porque ya parte desde la etiqueta software-libre -->
              <div class="lanzamiento">
                
                <figure>
                  <img src="images/{@distribucion}.png" alt="{@distribucion}"/>  
                  <figcaption><!-- es un enlace con texto -->
                    <a href="{//distribucion[@id=current()/@distribucion]/web}"> <!-- esto indica que el id de la imagen tiene que coincidir con el id de la distribucion --> 
                    <!-- si no funciona el href, es sin las llaves {} -->                          
                    </a>
                  </figcaption>  
                </figure> 
                
                <xsl:if test="@escritorio != ''"> <!-- si no está vacío y tiene contenido, hace algo -->
                  <figure>
                    <img src="images/{@escritorio}.png" alt="{@escritorio}"/>  
                    <figcaption><a href="{//escritorio[@id=current()/@escritorio]/web}"></a></figcaption>  
                  </figure> 
                </xsl:if>
                
                <div class="caja">
                  <p><span class="negrita">Versión: </span><xsl:value-of select="@version"/></p>  
                  <p><span class="negrita">Año: </span><xsl:value-of select="@año"/></p>  
                  <p><span class="negrita">Kernel: </span><xsl:value-of select="@kernel"/></p>  
                </div>
                
              </div>
            </xsl:for-each>
            
          </div>
        </main>
        
      </body>

    </html>
  </xsl:template>
</xsl:stylesheet>