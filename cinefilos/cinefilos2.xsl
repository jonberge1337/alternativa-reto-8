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
                    <tr>
                        <td>
                            <xsl:value-of select="titulo" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <xsl:value-of select="director" />
                        </td>
                    </tr>
                    <td>
                        <img>
                        <xsl:attribute name="src">
                            <xsl:value-of select="./foto/@imagen" />
                        </xsl:attribute>
                        </img>
                    </td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>

        </html>
    </xsl:template>
</xsl:stylesheet>