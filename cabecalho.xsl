<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="cabecalho">
		<h1>Guiao<xsl:text>: </xsl:text> <xsl:value-of select="titulo"/></h1>
		<h2 >Data de publicação: <xsl:value-of select="data_publicacao"/></h2>
		<h2 >Sinopse: <xsl:value-of select="sinopse"/></h2>
		<div id="meia"/>
		<h2>
			Autores<xsl:text>: </xsl:text>
			<xsl:for-each select="autor">
				<xsl:value-of select="current()"></xsl:value-of>
					<xsl:if test="position()!=last()">
						<xsl:text>, </xsl:text>
					</xsl:if>
			</xsl:for-each>
			<xsl:text>.</xsl:text>
		</h2>
	</xsl:template>
</xsl:stylesheet>