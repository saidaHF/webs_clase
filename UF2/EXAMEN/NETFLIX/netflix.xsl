<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                  <meta charset="utf-8"/>
                 <link rel="stylesheet" type="text/css" href="netflix.css"/> 
          </head>
        <body>
            <header>
               <h1><xsl:value-of select="canal/@títol"/></h1>
            </header>
              <section>
                    <h2>Nacional</h2>
                    <table>
                          <tr>
                                <th>Nom</th> 
                                <th>Capitols</th>
                                <th>Descripció</th>
                                <th>Imatge</th>
                          </tr> 
                         <xsl:for-each select="canal/series/serie[origen='Spain']">
                         <xsl:sort select="nom"/>
                                <tr>
                                      <td><xsl:value-of select="nom"/></td>
                                      <td><xsl:value-of select="count(capitol)"/></td>
                                      <td><xsl:value-of select="descripció" /></td>
                                      <td>
                                       <img class="photo">
                                          <xsl:attribute name="src">
                                              <xsl:value-of select="imagen"/>
                                          </xsl:attribute>
                                          </img>
                                      </td>
                                </tr>
                        </xsl:for-each>
                    </table>
                    
                    
                       <h2>Internacional</h2>
                        <table>
                          <tr>
                                <th>Nom</th> 
                                <th>Capitols</th>
                                <th>Descripció</th>
                                <th>Imatge</th>
                          </tr>                   
                         <xsl:for-each select="canal/series/serie[origen!='Spain']">
                         <xsl:sort select="nom"/>
                                <tr>
                                      <td><xsl:value-of select="nom"/></td>
                                      <td><xsl:value-of select="count(capitol)" /></td>
                                      <td><xsl:value-of select="descripció" /></td>
                                      <td>
                                       <img class="photo">
                                          <xsl:attribute name="src">
                                              <xsl:value-of select="imagen"/>
                                          </xsl:attribute>
                                          </img>
                                      </td>
                                </tr>
                        </xsl:for-each>
                    </table>
                    
              </section>
              <footer><xsl:value-of select="canal/copyright" /></footer>  
       </body>
       </html>
    </xsl:template>
    
</xsl:stylesheet>

