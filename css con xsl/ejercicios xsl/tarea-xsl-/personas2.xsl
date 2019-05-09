<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
	<html>
	  <head>
		<title>ejercicio4</title>
	  </head>
	  <body>
		<ul>
		  <xsl:for-each select="personas/persona">
			<xsl:sort select="apellido1"/>
			<xsl:sort select="apellido2"/>
			<li><xsl:value-of select="apellido1"/>&#160;<xsl:value-of select="apellido2"/>&#160;<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="dni"/>&#160;<xsl:value-of select="ss"/></li>
		  </xsl:for-each>
		</ul>
	  </body>
	</html>
  </xsl:template>

</xsl:stylesheet>
