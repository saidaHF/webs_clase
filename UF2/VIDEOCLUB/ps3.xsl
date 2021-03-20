<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
        <html>
                <head></head>
                <body><h1>VIDEOCLUB</h1>
                <h2>Pelicules:</h2>
                <table border="1">
                      <tr bgcolor="pink">
                            <th>Títol</th>
                            <th>Director</th>
                            <th>Foto</th>
                      </tr>
                      <xsl:for-each select="videoclub/pelicula">
                              <tr>
                                  <td><xsl:value-of select="titol"/></td>
                                  <td><xsl:value-of select="director"/></td>
                                    <td>
                                    <a>
                                          <xsl:attribute name="href">
                                                <xsl:value-of select="url"></xsl:value-of>
                                          </xsl:attribute>
                                            <img>
                                                  <xsl:attribute name="src">
                                                        <xsl:value-of select="foto"/>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="width"> 200</xsl:attribute>
                                            </img>
                                      </a>
                                    </td>
                              </tr>
                        </xsl:for-each>
                </table>
                </body>
         </html>
</xsl:template>
</xsl:stylesheet>
