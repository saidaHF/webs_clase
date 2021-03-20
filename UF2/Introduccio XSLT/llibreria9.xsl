﻿<?xml version="1.0" encoding="UTF-8"?>
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
                    <xsl:if test="preu &lt; 10">  <!--  &lt;  és  <    y   &gt;    és    >      Així fem llibres  amb preu  <  10€ -->
                              <tr bgcolor="aqua">
                                  <td><xsl:value-of select="titol"/></td>
                                  <td><xsl:value-of select="autor"/></td>
                                  <td><xsl:value-of select=" titol/@llengua"/></td> 
                                  <td><xsl:value-of select="any"/></td>
                                  <td><xsl:value-of select="preu"/></td>
                              </tr>
                     </xsl:if>
                </xsl:for-each>
                </table>
                </body>
        </html>
</xsl:template>
</xsl:stylesheet>
