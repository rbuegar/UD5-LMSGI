<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
<h1>Libros con precio superior a 12 €</h1>
<table border="1" style="border-collapse: collapse; background-color: #DDDDDD;">
<tr bgcolor="#887788">
<th>ISBN</th>
<th>Título</th>
<th>Autor</th>
<th>Editor</th>
<th>Número de páginas</th>
<th>Precio (€)</th>
</tr>
<xsl:for-each select="libreria/libro[precio &gt; 12 and autor = 'Marta López']">
<tr>
<td><xsl:value-of select="isbn"/></td>
<td><xsl:value-of select="titulo"/></td>
<td><xsl:value-of select="autor"/></td>
<td><xsl:value-of select="editor"/></td>
<td><xsl:value-of select="numPaginas"/></td>
<td><xsl:value-of select="precio"/></td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
