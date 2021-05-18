<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">
  <html>
  <head>
                  <meta charset="utf-8"/>
                  <link rel="stylesheet" type="text/css" href="videopro.css"/>
  </head>
  <body>
           <header>
               <h1>PEL·LÍCULES</h1>
            </header>
            <section>
          <!--Pelis d'EEUU-->
            <h2>Nacionalitat</h2>
                <img width="200" src="eeuu.png"/>
               <ol>
                      <xsl:for-each select="videoclub/pelicula[nacionalitat='EEUU']">
                       <xsl:sort select="any" order="descending" />
                      
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
                      </xsl:for-each>
                      
                    </ol>
                      Total pelis:<xsl:value-of select="count(//pelicula[nacionalitat='EEUU'])"/>

                    <xsl:if test="count(//pelicula[nacionalitat='EEUU'])&gt;10">
                        <i> (muchas)</i>
                        </xsl:if>
                        <xsl:if test="count(//pelicula[nacionalitat='EEUU'])&lt;10">
                        <i> (muy pocas)</i>
                    </xsl:if>
                    <!--Pelis de UK-->
            <h2>Nacionalitat</h2>
                <img width="200" src="uk.png"/>
                    <ol>
                    <xsl:for-each select="videoclub/pelicula[nacionalitat='UK']">
                     <xsl:sort select="any" order="descending" />
                    
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
                    </xsl:for-each>
                    </ol>
                    Total pelis:<xsl:value-of select="count(//pelicula[nacionalitat='UK'])"/>

                    <xsl:if test="count(//pelicula[nacionalitat='UK'])&gt;10">
                        <i> (muchas)</i>
                        </xsl:if>
                        <xsl:if test="count(//pelicula[nacionalitat='UK'])&lt;10">
                        <i> (muy pocas)</i>
                    </xsl:if>
                      <!--Pelis deSPAIN-->
            <h2>Nacionalitat</h2>
                <img width="200" src="españa.png"/>
              
              <ol>
                    <xsl:for-each select="videoclub/pelicula[nacionalitat='España']">
                     <xsl:sort select="any" order="descending" />
                    
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
                    </xsl:for-each>
           </ol>
           Total pelis:<xsl:value-of select="count(//pelicula[nacionalitat='España'])"/>
           
                    <xsl:if test="count(//pelicula[nacionalitat='España'])&gt;10">
                        <i> (muchas)</i>
                        </xsl:if>
                        <xsl:if test="count(//pelicula[nacionalitat='España'])&lt;10">
                        <i> (muy pocas)</i>
                    </xsl:if>
              </section>      
             <footer>M4 - Llenguatges de marques - &#169;2021</footer>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
<!--
 = (Igual)
! = (No igual)
& Lt; (menor que)
& Gt; (mayor que) 
&#169; (@)

* L’asterisc es fa servir per indicar tots els elements d’un determinat nivell.
. Com en els directoris dels sistemes operatius el punt serveix per indicar el node actual.
.. Es fa servir per indicar el pare del node en el qual estem.
/ / Les dobles barres indiquen que quadrarà amb qualsevol cosa des del node en el qual estem. Pot ser
un sol element o un arbre de nodes.

-->
