<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="temporada" mode="links">
		<tr><td>
			<a href="#{generate-id()}">
		 		Temporada <xsl:value-of select="position()"/>:
	    		<xsl:value-of select="@titulo"/>
	        </a>
	    </td></tr>
	</xsl:template>

	<xsl:template match="temporada" mode="normal">
		<h3>
			<a name="{generate-id()}">
				Temporada <xsl:number format="1"/> :
				<xsl:value-of select="@titulo"/>
			</a>
		</h3>

		<xsl:for-each select="personagem">
			<h6>Personagem: <xsl:value-of select="@nome"/>
			</h6>
		</xsl:for-each>

		<div id="full"/>

		<xsl:for-each select="episodio">
			<xsl:apply-templates select="current()" mode="normal"/>
		</xsl:for-each>
	</xsl:template>

</xsl:stylesheet>