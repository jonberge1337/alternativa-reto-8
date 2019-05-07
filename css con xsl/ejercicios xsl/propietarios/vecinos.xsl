<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 
  
  <xsl:template match="/">	
	
	<html xmlns="http://www.w3.org/1999/xhtml">
	  <head>
		<title>ejercicio2</title>
		<link href="vecinos.css" rel="stylesheet" type="text/css" />
	  </head>
	  <body>
		<h1>RELACIÓN DE MOROSOS</h1>	
		<ul>
		  <xsl:for-each select="comunidad/vecino">
			<xsl:choose>
			  
			  <xsl:when test="@cargo='Presidente'">
				<li><xsl:value-of select="codigo_vecino"/> - <xsl:value-of select="@cargo"/></li>
				<li><spam style="color:red"><xsl:value-of select="nombre"/> <xsl:if test="deuda &gt; 0"> MOROSO</xsl:if></spam></li>
				<li>Nº <xsl:value-of select="portal"/> - <xsl:value-of select="portal/@piso"/>º - <xsl:value-of select="portal/@letra"/></li>
				<li><xsl:value-of select="codigo_cuenta_corriente"/></li> 
			  </xsl:when>
			  
			  <xsl:when test="@cargo='Vicepresidente'">
				<li><xsl:value-of select="codigo_vecino"/> - <xsl:value-of select="@cargo"/></li>
				<li><spam style="color:blue"><xsl:value-of select="nombre"/> <xsl:if test="deuda &gt; 0"> MOROSO</xsl:if></spam></li>
				<li>Nº <xsl:value-of select="portal"/> - <xsl:value-of select="portal/@piso"/>º - <xsl:value-of select="portal/@letra"/></li>
				<li><xsl:value-of select="codigo_cuenta_corriente"/></li>
			  </xsl:when>
			  
              <xsl:when test="@cargo='Secretario'">
				<li><xsl:value-of select="codigo_vecino"/> - <xsl:value-of select="@cargo"/></li>
				<li><spam style="color:gray"><xsl:value-of select="nombre"/> <xsl:if test="deuda &gt; 0"> MOROSO</xsl:if></spam></li>
				<li>Nº <xsl:value-of select="portal"/> - <xsl:value-of select="portal/@piso"/>º - <xsl:value-of select="portal/@letra"/></li>
				<li><xsl:value-of select="codigo_cuenta_corriente"/></li>  
			  </xsl:when>
			  
              <xsl:otherwise>
                <p><xsl:value-of select="nombre"/> <xsl:if test="deuda > 0"> MOROSO</xsl:if></p>
              </xsl:otherwise>
			  
            </xsl:choose>
			<br/><br/>
		  </xsl:for-each>
		</ul>
	  </body>
	</html>
	
  </xsl:template>
</xsl:stylesheet>
