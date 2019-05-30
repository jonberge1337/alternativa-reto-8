<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>

		<head>
			<link rel="stylesheet" type="text/css" href="ventas.css" title="style" />
			<title>Ventas</title>
		</head>

		<body>

        <!-- <img src="components.png" alt="Componentes" />
			<table class="paleBlueRows">
				<thead>
					<tr>
						<th>
							Código
						</th>
						<th>
							Producto
						</th>
						<th>
							Precio (€)
						</th>
						<th>
							Stock
						</th>
						<th>
							Stock Mínimo
						</th>
						<th>
							Cantidad Vendida
						</th>
					</tr>
				</thead>
				<tbody>
					<xsl:for-each select="//componente">
						<tr>
							<td>
								<xsl:value-of select="./codigo/@producto" />
							</td>
							<td>
								<xsl:value-of select="./@tipo" />
							</td>
							<td>
								<xsl:value-of select="./precio" />
							</td>
							<td>
								<xsl:value-of select="./stock" />
							</td>
							<td>
								<xsl:value-of select="./minimo" />
							</td>
							<td>
								<xsl:value-of select="./vendidos" />
							</td>
						</tr>
					</xsl:for-each> -->
					<!-- <tr>
						<td>
							<xsl:value-of select="./codigo/@producto" />
						</td>
						<td>
							<xsl:value-of select="./vendidos" />
						</td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td>TOTAL:</td>
						<td></td>
						<td><xsl:value-of select="format-number(sum(//componente/precio), '0.00€')" /></td>
						<td></td>
						<td></td>
						<td><xsl:value-of select="sum(//componente/vendidos)" /></td>
					</tr>
				</tfoot>
			</table> -->
        <img src="servicios.png" alt="Servicios" />
            			<table class="paleBlueRows">
				<thead>
					<tr>
						<th>
							Código
						</th>
						<th>
							Producto
						</th>
						<th>
							Precio (€)
						</th>
						<th>
							Cantidad Vendida
						</th>
					</tr>
				</thead>
				<tbody>
					<xsl:for-each select="//servicio">
						<tr>
							<td>
								<xsl:value-of select="./codigo/@producto" />
							</td>
							<td>
								<xsl:value-of select="./@tipo" />
							</td>
							<td>
								<xsl:value-of select="./precio" />
							</td>
							<td>
								<xsl:value-of select="./vendidos" />
							</td>
						</tr>
					</xsl:for-each>
					<tr>
						<td>
							<xsl:value-of select="./codigo/@producto" />
						</td>
						<td>
							<xsl:value-of select="./vendidos" />
						</td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td>TOTAL:</td>
						<td></td>
						<td><xsl:value-of select="format-number(sum(//servicio/precio), '0.00€')" /></td>
						<td><xsl:value-of select="sum(//servicio/vendidos)" /></td>
					</tr>
				</tfoot>
			</table>
		</body>

		</html>
	</xsl:template>
</xsl:stylesheet>