<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/"> 
		<html>
			<head>
				<title>Ejer VI Opci�n B</title>
				<style>
					body{margin:2em;}
					.negrita{font-weight:700; text-align:left;}
					table{width:32%;}
					td{width:2.5em;}
					#centrar{text-align:left; }
					.q{text-align:center}
				</style>
			</head>
			<body>

			
				<h1><xsl:value-of select="//heading"/></h1>
				<h2><xsl:value-of select="//subhead"/></h2>
				<p><xsl:value-of select="//description"/></p>
				<table>
					<tr class="negrita"><td>Region/Quarter</td><td class="q">Q1</td><td class="q">Q2</td><td class="q">Q3</td><td class="q">Q4</td><td class="q">Total</td></tr>
					<xsl:for-each select="//region">
						<xsl:variable name="minimo">
							<xsl:for-each select="./quarter">
								<xsl:sort select="@books_sold"/>
									<xsl:if test="position()=1">
										<xsl:value-of select="@books_sold"/>
									</xsl:if>
								</xsl:for-each>
						</xsl:variable>
						
						<tr>
							<td class="negrita"><xsl:value-of select="./name"/></td>
							<xsl:for-each select="./quarter">				
							<xsl:choose>
								<xsl:when test=".[@books_sold = $minimo]">
										<td id="centrar" style="color:red"><xsl:value-of select="format-number(@books_sold, '###,###')"/></td>
								</xsl:when>
								<xsl:otherwise>
										<td id="centrar" style="color:green"><xsl:value-of select="format-number(@books_sold, '###,###')"/></td>
								</xsl:otherwise>
								</xsl:choose>
							</xsl:for-each>
							<xsl:variable name="total" select="sum(quarter/@books_sold)"/>
							<td class="negrita" style="text-align:right"><xsl:value-of select="format-number($total,'###,###')"/></td>	
						</tr>		
					</xsl:for-each>
		
				</table>		
			</body>	
		</html>	
	</xsl:template>
</xsl:stylesheet>
