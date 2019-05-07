<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
	<html>
	  <head>
		<style>table{border-collapse: collapse;}</style>
	  </head>
	  <body>
		<table border="2">
		  <xsl:for-each select="ies/ciclos/ciclo">
		  <tr><td><xsl:value-of select="nombre"/></td></tr>
		</xsl:for-each>
		</table>
	  </body>
	</html>
  </xsl:template>
</xsl:stylesheet>
