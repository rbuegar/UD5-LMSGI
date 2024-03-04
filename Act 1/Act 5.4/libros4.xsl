<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
<h1>Libros</h1>
<table border="1" style="border-collapse: collapse;">
<tr bgcolor="#887788">
<th>ISBN</th>
<th>Título</th>
<th>Autor</th>
<th>Editor</th>
<th>Número de páginas</th>
<th>Precio (€)</th>
</tr>
<xsl:for-each select="libreria/libro">
<tr>
<xsl:choose>
<xsl:when test="precio > 25">
<td bgcolor="red"><xsl:value-of select="isbn"/></td>
<xsl:apply-templates select="titulo | autor | editor | numPaginas | precio"/>
</xsl:when>
<xsl:otherwise>
<td bgcolor="green"><xsl:value-of select="isbn"/></td>
<xsl:apply-templates select="titulo | autor | editor | numPaginas | precio"/>
</xsl:otherwise>
</xsl:choose>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>

<xsl:template match="titulo | autor | editor | numPaginas | precio">
<td><xsl:value-of select="."/></td>
</xsl:template>

</xsl:stylesheet>
