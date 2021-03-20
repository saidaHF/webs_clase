<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
          <h2>Videoclub</h2>
          <table border="1">
            <tr bgcolor="#9acd32">
                    <th style="text-align:left">Titol</th>
                    <th style="text-align:left">Nacionalitat</th>
                    <th style="text-align:left">Productor</th>
                    <th style="text-align:left">Director</th>
                    <th style="text-align:left">Any</th>
                    <th style="text-align:left">Duracio</th>
                    <th style="text-align:left">Genere</th>
                    <th style="text-align:left">Sinopsi</th>
                    <th style="text-align:left">URL</th>
            </tr>
            <xsl:for-each select="videoclub/pelicula[director='Alfred Hitchcock' and nacionalitat='EEUU']">
            <tr>
                      <td><xsl:value-of select="titol"/></td>
                      <td><xsl:value-of select="nacionalitat"/></td>
                       <td><xsl:value-of select="productor"/></td>
                       <td><xsl:value-of select="director"/></td>
                       <td><xsl:value-of select="any"/></td>
                      <td><xsl:value-of select="duracio"/></td>
                       <td><xsl:value-of select="genere"/></td>
                       <td><xsl:value-of select="sinopsi"/></td>
                       <td><xsl:value-of select="url"/></td>
            </tr>
            </xsl:for-each>
          </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
