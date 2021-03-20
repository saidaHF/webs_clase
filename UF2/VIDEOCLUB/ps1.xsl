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
                            <th>Nacionalitat</th>
                            <th>Productor</th>
                            <th>Director</th>
                            <th>Any</th>
                            <th>Duracio</th>
                            <th>Genere</th>
                            <th>Sinopsi</th>
                      </tr>
                      <xsl:for-each select="videoclub/pelicula">
                              <tr>
                                  <td><xsl:value-of select="titol"/></td>
                                  <td><xsl:value-of select="nacionalitat"/></td>
                                  <td><xsl:value-of select="productor"/></td>       <!-- És un atribut  hem de posar @nom_atribut -->
                                  <td><xsl:value-of select="director"/></td>
                                  <td><xsl:value-of select="any"/></td>
                                  <td><xsl:value-of select="duracio"/></td>
                                  <td><xsl:value-of select="genere"/></td>
                                  <td><xsl:value-of select="sinopsi"/></td>
                              </tr>
                        </xsl:for-each>
                </table>
                </body>
         </html>
</xsl:template>
</xsl:stylesheet>
