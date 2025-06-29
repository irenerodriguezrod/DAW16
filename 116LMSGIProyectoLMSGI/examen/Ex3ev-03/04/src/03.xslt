<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">

  <xsl:output method="xml" indent="yes"/>

  <xsl:template match="/software-libre/distribuciones/distribucion" mode="#all">
    <xsl:for-each select="//lanzamiento[@distribucion=current()/@id]/@version">
      <!--falta seleccionar la version maxima de cada distribucion para que se muestre -->
    </xsl:for-each>
  </xsl:template>

</xsl:stylesheet>