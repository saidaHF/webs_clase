<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

          <xsl:template match="/">
                <html>
                      <body>
                            <h1>La meva Llibreria</h1>
                            <xsl:apply-templates/>
                      </body>
                </html>
          </xsl:template>
          
          
          <!-- TEMPLATE LLIBRERIA -->
          <xsl:template match="llibreria">
                <h2>Llistat complert de llibres</h2>
                <table border="1">
                      <tr bgcolor="yellow">
                            <th>Títol</th>
                            <th>Títol Original</th>
                            <th>Autor</th>
                            <th>Any</th>
                            <th>Preu</th>
                      </tr>
                      <xsl:apply-templates select="llibre"/>
                </table>
          </xsl:template>

          <!-- TEMPLATE LLIBRE       amb la crida als següents-->
          <xsl:template match="llibre">
                <tr>
                      <xsl:apply-templates select="titol"/>
                      <xsl:apply-templates select="titol-original"/>
                      <xsl:apply-templates select="autor"/>
                      <xsl:apply-templates select="any"/>
                      <xsl:apply-templates select="preu"/>
                </tr>
          </xsl:template>
  
          <!-- TEMPLATE TITOL -->
          <xsl:template match="titol">
                <td bgcolor="#DD00DD"><xsl:value-of select="."/></td>
          </xsl:template>
          <!-- TEMPLATE TITOL ORIGINAL -->
          <xsl:template match="titol-original">
                <td bgcolor="pink"><xsl:value-of select="."/></td>
          </xsl:template>
          <!-- TEMPLATE AUTOR -->
          <xsl:template match="autor">
                <td bgcolor="#00CCCC"><xsl:value-of select="."/></td>
          </xsl:template>
          <!-- TEMPLATE ANY -->
          <xsl:template match="any">
                <td bgcolor="#EEF7B1"><xsl:value-of select="."/></td>
          </xsl:template>
            <!-- TEMPLATE PREU -->
          <xsl:template match="preu">
                <td bgcolor="#F4CE68"><xsl:value-of select="."/></td>
          </xsl:template>        
</xsl:stylesheet>

