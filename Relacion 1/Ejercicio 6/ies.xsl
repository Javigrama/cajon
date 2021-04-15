<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <body>
        <h2>Ciclos</h2>
        <table border="1" style="border-collapse: collapse">
          <tr>
            <th bgcolor="#10e3da" colspan="4">Ciclos</th>
          </tr>
          <tr>
            <td>@id</td>
            <td>Nombre</td>
            <td>Grado</td>
            <td>Año del Decreto</td>
          </tr>
          <xsl:for-each select="//ciclo">
            <tr>
              <td>
                <xsl:value-of select="@id"/>
              </td>
              <td>
                <xsl:value-of select="nombre"/>
              </td>
              <td>
                <xsl:value-of select="grado"/>
              </td>
              <td>
                <xsl:apply-templates select="decretoTitulo/@año"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>
        <h3>Listado de ciclos</h3>
        <xsl:for-each select="//ciclo">
          <ul>
            <ul>
              <xsl:value-of select="@id"/>
              <li>
                <xsl:value-of select="nombre"/>
              </li>
              <li>
                Grado: <xsl:value-of select="grado"/>
              </li>
              <li>
                Decretado en: <xsl:value-of select="decretoTitulo/@año"/>
              </li>
            </ul>
          </ul>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
  <xsl:template match="decretoTitulo/@año">
    <span style="float:right;">
      <xsl:value-of select="."/>
    </span>
    <br/>
  </xsl:template>
</xsl:stylesheet>
