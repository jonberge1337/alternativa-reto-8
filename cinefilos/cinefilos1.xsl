<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
            
		<head>
			<title>Primer XSL</title>
		</head>

		<body>
			<table border="1">
				<xsl:for-each select="//pelicula">
					<tr>
						<td>
							<xsl:value-of select="titulo" />
						</td>
						<td>
							<xsl:value-of select="nacionalidad" />
						</td>
						<td>
							<xsl:value-of select="productor" />
						</td>
						<td>
							<xsl:value-of select="director" />
						</td>
						<td>
							<xsl:value-of select="año" />
						</td>
						<td>
							<strong><xsl:value-of select="name(duracion/@horas)" /></strong>
							<xsl-text>:&#160;</xsl-text>
							<xsl:value-of select="duracion/@horas" />
							<xsl-text>&#160;</xsl-text>
							<strong><xsl:value-of select="name(duracion/@minutos)" /></strong>
							<xsl-text>:&#160;</xsl-text>
							<xsl:value-of select="duracion/@minutos" />
						</td>
						<td>
							<xsl:value-of select="Genero" />
						</td>
						<td>
							<xsl:value-of select="URL" />
						</td>
					</tr>
					<tr>
						<td>
							<xsl:value-of select="sinopsis" />  
						</td>
					</tr>
				</xsl:for-each>
			</table>
		</body>

		</html>
	</xsl:template>
</xsl:stylesheet>
