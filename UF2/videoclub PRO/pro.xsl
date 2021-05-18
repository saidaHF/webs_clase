<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

          <xsl:template match="/">
                <html>
                      <head>
                            <meta charset="UF-8"/>
                            <link rel="stylesheet" type="text/css" href="videopro.css"/>
                      </head>
                      <body>
                            <h1>PEL·LÍCULES</h1>
                            <xsl:apply-templates/>
                      </body>
                      <footer>Saida @2020</footer>
                </html>
          </xsl:template>
          
          <!-- TEMPLATE VIDEOCLUB -->
          <xsl:template match="videoclub">
                <h3>Nacionalitat</h3>
                     <img width="150" src="eeuu.png"/> 
                      <img width="150" src="uk.png"/>
                     <img width="150" src="españa.png"/>
                     <p>Total de pelicules:  <xsl:value-of select="count(pelicula)" /> </p>
                    
              <xsl:apply-templates select="pelicula"/>
          </xsl:template>
          
          <!-- TEMPLATE PELICULA       amb la crida als següents-->
          <xsl:template match="pelicula">
          <ol>
              <xsl:choose>
                  <xsl:when  test="nacionalitat = &quot;EEUU&quot;">
        <!--          <xsl:sort select="any" order="descending"/>  -->
                              <li><xsl:apply-templates select="titol"/></li>
                          <ul>
                                  <li>Director: <xsl:apply-templates select="director"/></li>
                                  <li>Duración: <xsl:apply-templates select="duracio"/></li>
                        </ul>
                        <img>
                                <xsl:attribute name="src">
                                      <xsl:value-of select="foto"/>
                                </xsl:attribute>
                                <xsl:attribute name="width"> 200</xsl:attribute>
                        </img>
                    </xsl:when>
                    <xsl:when  test="nacionalitat = &quot;UK&quot;">
                      
                                    <li><xsl:apply-templates select="titol"/></li>
                            <ul>
                                    <li>Director: <xsl:apply-templates select="director"/></li>
                                    <li>Duración: <xsl:apply-templates select="duracio"/></li>
                          </ul>
                          <img>
                              <xsl:attribute name="src">
                                    <xsl:value-of select="foto"/>
                              </xsl:attribute>
                              <xsl:attribute name="width"> 200</xsl:attribute>
                            </img>
                      
                    </xsl:when>
                    <xsl:otherwise>
                      
                            <li><xsl:apply-templates select="titol"/></li>
                            <ul>
                                    <li>Director: <xsl:apply-templates select="director"/></li>
                                    <li>Duración: <xsl:apply-templates select="duracio"/></li>
                          </ul>
                          <img>
                                    <xsl:attribute name="src">
                                          <xsl:value-of select="foto"/>
                                    </xsl:attribute>
                                    <xsl:attribute name="width"> 200</xsl:attribute>
                            </img>
                    </xsl:otherwise>
              </xsl:choose>
            </ol>
          </xsl:template>
  
          <!-- TEMPLATE TITOL -->
          <xsl:template match="titol">
              <xsl:value-of select="."/>
          </xsl:template>
          <!-- TEMPLATE TITOL NACIONALITAT -->
          <xsl:template match="nacionalitat">
                <xsl:value-of select="."/>
          </xsl:template>
          <!-- TEMPLATE DIRECTOR -->
          <xsl:template match="director">
                <xsl:value-of select="."/>
          </xsl:template>
            <!-- TEMPLATE DURACIO -->
          <xsl:template match="duracio">
               <xsl:value-of select="."/>
          </xsl:template>
</xsl:stylesheet>

