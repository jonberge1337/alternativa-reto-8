<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xml:template match="/">
	<html>
	  <body>
		<xsl:for-each select="ies/ciclos/ciclo">
		  <p><xsl:value-of select=""/></p>
		</xsl:for-each> 
	  </body>
	</html>
  </xml:template>
</xsl:stylesheet>
