<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
	<html>
	  <head>
		<title>ejercicio3</title>
	  </head>
	  <body>
		<h1><xsl:value-of select="ies/nombreCentro"/></h1>
		<p>Página web: <a><xsl:attribute name="href"><xsl:value-of select="ies/web"/></xsl:attribute><xsl:value-of select="ies/web"/></a></p>
		<ul>
		  <xsl:for-each select="ies/ciclos/ciclo">
			<li><xsl:value-of select="nombre"/></li>
		  </xsl:for-each>
		  </ul>
	  </body>
	</html>
  </xsl:template>

</xsl:stylesheet>
