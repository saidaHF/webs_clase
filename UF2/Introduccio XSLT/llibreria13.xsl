<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
        <html>
                <body>
                <h1>Titols i Autors de la meva Llibreria</h1>
                <table border="1">
                        <tr bgcolor="yellow">
                              <th>Títol</th>
                              <th>Autor</th>
                              <th>Llengua</th>
                              <th>Any</th>
                              <th>Preu</th>
                        </tr>
                <xsl:for-each select="llibreria/llibre">
                <xsl:sort  order="descending" select="preu" data-type="number"/>     <!--   orden descendiente de +a - y ordenar por num  -->
                <xsl:choose>
                    <xsl:when test="preu &lt; 10">
                              <tr bgcolor="aqua">
                                  <td><xsl:value-of select="titol"/></td>
                                  <td><xsl:value-of select="autor"/></td>
                                  <td><xsl:value-of select=" titol/@llengua"/></td> 
                                  <td><xsl:value-of select="any"/></td>
                                  <td bgcolor="#A7EE9F"><xsl:value-of select="preu"/></td>
                              </tr>
                    </xsl:when>
                    <xsl:when test="preu &gt; 15">
                              <tr bgcolor="aqua">
                                  <td><xsl:value-of select="titol"/></td>
                                  <td><xsl:value-of select="autor"/></td>
                                  <td><xsl:value-of select=" titol/@llengua"/></td> 
                                  <td><xsl:value-of select="any"/></td>
                                  <td bgcolor="red"><xsl:value-of select="preu"/></td>
                              </tr>
                    </xsl:when>
                    <xsl:otherwise>
                              <tr bgcolor="aqua">
                                  <td><xsl:value-of select="titol"/></td>
                                  <td><xsl:value-of select="autor"/></td>
                                  <td><xsl:value-of select=" titol/@llengua"/></td> 
                                  <td><xsl:value-of select="any"/></td>
                                  <td ><xsl:value-of select="preu"/></td>
                              </tr>
                    </xsl:otherwise>
                </xsl:choose>
                </xsl:for-each>
                </table>
                </body>
        </html>
</xsl:template>
</xsl:stylesheet>
