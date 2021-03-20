<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

          <xsl:template match="/">
                <html>
                <head></head>
                      <body>
                            <h1>VIDEOCLUB</h1>
                            <xsl:apply-templates/>
                      </body>
                </html>
          </xsl:template>
          
          <!-- TEMPLATE VIDEOCLUB -->
          <xsl:template match="videoclub/pelicula">
                <h2>Pelicules</h2>
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
                      <xsl:apply-templates select="pelicula"/>
                </table>
          </xsl:template>

          <!-- TEMPLATE PELICULA       amb la crida als següents-->
          <xsl:template match="pelicula">
                <tr>
                      <xsl:apply-templates select="titol"/>
                      <xsl:apply-templates select="nacionalitat"/>
                      <xsl:apply-templates select="productor"/>
                      <xsl:apply-templates select="director"/>
                      <xsl:apply-templates select="any"/>
                      <xsl:apply-templates select="duracio"/>
                      <xsl:apply-templates select="genere"/>
                      <xsl:apply-templates select="sinopsi"/>
                </tr>
          </xsl:template>
  
          <!-- TEMPLATE TITOL -->
          <xsl:template match="titol">
                <td><xsl:value-of select="."/></td>
          </xsl:template>
          <!-- TEMPLATE TITOL NACIONALITAT -->
          <xsl:template match="nacionalitat">
                <td><xsl:value-of select="."/></td>
          </xsl:template>
          <!-- TEMPLATE PRODUCTOR -->
          <xsl:template match="productor">
                <td><xsl:value-of select="."/></td>
          </xsl:template>
          <xsl:template match="director">
                <td><xsl:value-of select="."/></td>
          </xsl:template>
          <!-- TEMPLATE ANY -->
          <xsl:template match="any">
                <td><xsl:value-of select="."/></td>
          </xsl:template>
            <!-- TEMPLATE DURACIO -->
          <xsl:template match="duracio">
                <td><xsl:value-of select="."/></td>
          </xsl:template>
          <!-- TEMPLATE GENERE -->
            <xsl:template match="genere">
                <td><xsl:value-of select="."/></td>
          </xsl:template>
          <!-- TEMPLATE SINOPSI -->
            <xsl:template match="sinopsi">
                <td><xsl:value-of select="."/></td>
          </xsl:template>
</xsl:stylesheet>
