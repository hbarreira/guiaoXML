<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="parte" mode="links3">
		<tr><td>
			<a href="#{generate-id()}">
		 		Parte <xsl:value-of select="position()"/>:
	    		<xsl:value-of select="@titulo"/>
	        </a>
	    </td></tr>
	</xsl:template>

	<xsl:template match="parte" mode="normal">
			<h4>
	    		<a name="{generate-id()}">
					Parte <xsl:number format="1"/>:
					<xsl:value-of select="@titulo"/>
				</a>
	    	</h4>

	    	<xsl:for-each select="personagem">
				<h6>Personagens: <xsl:value-of select="@nome"/>
				</h6>
			</xsl:for-each>

			<div id="full"/>

			<xsl:for-each select="cena">
				<xsl:apply-templates select="current()"/>
			</xsl:for-each>
	</xsl:template>

</xsl:stylesheet>