<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <body>
        <h2>Personas</h2>
        <table border="1" style="border-collapse: collapse">
          <tr>
            <th bgcolor="#10e3da" colspan="2">Personas</th>
          </tr>
          <tr>
            <th>Nombre</th>
            <th>Apellidos</th>
          </tr>
          <xsl:for-each select="listado/persona">
            <tr>
              <td>
                <!--<xsl:value-of select="nombre"/>-->
                <xsl:apply-templates select="nombre"/>
              </td>
              <td>
                <!--<xsl:value-of select="apellido"/>-->
                <xsl:apply-templates select="apellido"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
  <xsl:template match="nombre">
    <span style="color:orange; font-size:12;">
      <xsl:value-of select="."/>
    </span>
    <br/>
  </xsl:template>
  <xsl:template match="apellido">
    <span bgcolor="pink" style="color:brown; font-size:18;">
      <xsl:value-of select="."/>
    </span>
    <br/>
  </xsl:template>
</xsl:stylesheet>
