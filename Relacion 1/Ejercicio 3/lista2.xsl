<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:template match="persona">
    <xsl:apply-templates select="nombre"/>
  </xsl:template>
  <xsl:template match="nombre"><nom>A</xsl:template>
  <xsl:template match="apellido">C</nom></xsl:template>
</xsl:stylesheet>

<!--El documento no está bien formado-->