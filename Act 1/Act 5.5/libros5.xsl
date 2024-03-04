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
<th>Precio (€)</th>
<th>Número de páginas</th>
</tr>
<xsl:for-each select="libreria/libro">
<tr>
<td><xsl:value-of select="isbn"/></td>
<td><xsl:value-of select="titulo"/></td>
<td><xsl:value-of select="autor"/></td>
<td><xsl:value-of select="editor"/></td>
<td><xsl:value-of select="precio"/></td>
<td>
    <xsl:call-template name="numPaginasStyle">
        <xsl:with-param name="pages" select="numPaginas"/>
    </xsl:call-template>
</td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>

<xsl:template name="numPaginasStyle">
    <xsl:param name="pages"/>
    <xsl:choose>
        <xsl:when test="$pages > 150">
            <span style="color:red;"><xsl:value-of select="$pages"/></span>
        </xsl:when>
        <xsl:otherwise>
            <xsl:value-of select="$pages"/>
        </xsl:otherwise>
    </xsl:choose>
</xsl:template>

</xsl:stylesheet>
