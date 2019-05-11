<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
	<html>
	  <head>
		<title>ejercicio 6</title>
	  </head>
	  <body>
		<h1><xsl:value-of select="sales/summary/heading"/></h1>
		<h2><xsl:value-of select="sales/summary/subhead"/></h2>
		<p><xsl:value-of select="sales/summary/description"/></p>
		<table border="0">
		  <tr>
			<td><h4>Region\Quarter</h4></td>
			<td><h4>Q1</h4></td>
			<td><h4>Q2</h4></td>
			<td><h4>Q3</h4></td>
			<td><h4>Q4</h4></td>
			<td><h4>total</h4></td>
		  </tr>
		  <tr>
			<td><h4>West coast</h4></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		  </tr>
		</table>
	  </body>
	</html>
  </xsl:template>
</xsl:stylesheet>
