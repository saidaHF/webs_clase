<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                  <meta charset="utf-8"/>
                  <link rel="stylesheet" type="text/css" href="videopro.css"/> <!-- AQUI AFEGIM EL CSS -->
          </head>
        <body>
            <header>
               <h1>PEL·LÍCULES CSS</h1>
            </header>
              <section>
                <xsl:apply-templates select="videoclub"/>
              </section>
                <footer>&#169; 2021</footer> 
        </body>
       </html>
       </xsl:template>
    
      <!-- TEMPLATE videoclub -->
    <xsl:template match="videoclub">
    <h2>Nacionalitat</h2>
        <img width="200">
                <xsl:attribute name="src">
                    eeuu.png
                </xsl:attribute>
                </img>
                <ol>
                        <xsl:apply-templates select="pelicula[nacionalitat='EEUU']">
                          <xsl:sort select="any" order="descending" />
                        </xsl:apply-templates>
                </ol>
            <br></br>Total pelis: <xsl:value-of select="count(//pelicula[nacionalitat='EEUU'])"/>
             <xsl:if test="count(//pelicula[nacionalitat='EEUU'])&gt;10">
            <i> muchas</i>
            </xsl:if>
            <xsl:if test="count(//pelicula[nacionalitat='EEUU'])&lt;10">
            <i> muy pocas</i>
            </xsl:if>
            
    <h2>Nacionalitat</h2>
    <img src="uk.png" width="200"/>
                 <ol>
                    <xsl:apply-templates select="pelicula[nacionalitat='UK']">
                          <xsl:sort select="any" order="descending" />
                    </xsl:apply-templates>
                </ol>
             <br></br>Total pelis:<xsl:value-of select="count(//pelicula[nacionalitat='UK'])"/>
            <xsl:if test="count(//pelicula[nacionalitat='UK'])&gt;10">
            <i> muchas</i>
            </xsl:if>
            <xsl:if test="count(//pelicula[nacionalitat='UK'])&lt;10">
            <i> muy pocas</i>
            </xsl:if>
        <h2>Nacionalitat</h2>
    <img src="españa.png"/>
                   
                <ol>
                      <xsl:apply-templates select="pelicula[nacionalitat='España']">
                      <xsl:sort select="any" order="descending" />
                      </xsl:apply-templates>
            </ol>
      <br></br>Total pelis:<xsl:value-of select="count(//pelicula[nacionalitat='España'])"/>
            <xsl:if test="count(//pelicula[nacionalitat='España'])&gt;10">
            <i> muchas</i>
            </xsl:if>
            <xsl:if test="count(//pelicula[nacionalitat='España'])&lt;10">
            <i> muy pocas</i>
            </xsl:if>
     </xsl:template>
    <!-- TEMPLATE peli -->
    <xsl:template match="pelicula">
                    <li><h4><xsl:value-of select="titol" /></h4></li>
                    <ul>
                            <li> Director:<b><xsl:value-of select="director" /></b></li>
                            <li> Duración:<b><xsl:value-of select="duracio" /></b></li>
                            <li> Año:<b><xsl:value-of select="any" /></b></li>
                    </ul>
                    <a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="url" />
                            </xsl:attribute>
                        <img>
                                  <xsl:attribute name="src">
                                      <xsl:value-of select="foto"/>
                                  </xsl:attribute>
                                  <xsl:attribute name="width">
                                      <xsl:value-of select="100"/>
                                  </xsl:attribute>
                        </img>
                    </a>
   
    </xsl:template>
    
</xsl:stylesheet>

<!--
 = (Igual)
! = (No igual)
& Lt; (menor que)
& Gt; (mayor que) 
-->