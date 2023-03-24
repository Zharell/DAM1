<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
   <head>
      <title>Mi colecci�n de CDs</title>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
      <link rel="stylesheet" href="catalogo.css"/>	  
    </head>
  <body>
    	<h2>Mi colecci�n de CDs</h2>
	<table border="1">
		<tr bgcolor="#9acd32">
			<th>Titulo</th>
			<th>Artista</th>
			<th>Precio</th>
		</tr>
      		<xsl:for-each select="catalogo/cd">
		<tr>
        	<td><xsl:value-of select="titulo"/></td>
				<xsl:choose>
        			<xsl:when test="precio>= 10">
						<td bgcolor="#ff00ff">
							<xsl:value-of select="artista"/></td>
					</xsl:when>
					<xsl:when test="precio >= 9">
          				<td bgcolor="#ffff00">
         				<xsl:value-of select="artista"/></td>
					</xsl:when>
        			<xsl:otherwise>
          				<td><xsl:value-of select="artista"/></td>
        			</xsl:otherwise>
      			</xsl:choose>
			<td><xsl:value-of select="precio"/></td>
      		</tr>
		</xsl:for-each>
    	</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>


