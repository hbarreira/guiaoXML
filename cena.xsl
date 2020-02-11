<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
		<xsl:template match="cena">
			<p class="cena">
			CENA <xsl:number format="1"/>:  <xsl:value-of select="contexto/local"/>; <xsl:value-of select="contexto/momento"/>.
	    	</p>
	   		<hr/>

	   		<xsl:for-each select="personagem">
				<h6>Personagens: <xsl:value-of select="@nome"/>
				</h6>
			</xsl:for-each>

			<xsl:for-each select="adereco">
				<h6>Adereços: <xsl:value-of select="@nome"/>
				</h6>
			</xsl:for-each>

			<xsl:apply-templates/>
			<div id="full"/>	
	    </xsl:template>

		<xsl:template match="contexto"/>

		<xsl:template match="refere">
			<xsl:variable name="ref1" select="@ref"/>
			<xsl:for-each select="//personagem">
				<xsl:if test="@id = $ref1">
						<a class="maior"><xsl:value-of select="@nome"/></a>
				</xsl:if>
			</xsl:for-each>
			<xsl:for-each select="//adereco">
				<xsl:if test="@id = $ref1">
						<a class="negrito"><xsl:value-of select="@nome"/></a>
				</xsl:if>
			</xsl:for-each>
		</xsl:template>

		<xsl:template match="fala">
			<xsl:variable name="persid" select="refere/@ref"/>
			<xsl:for-each select="//personagem">
				<xsl:if test="@id = $persid">
					<p class="lfala">
						<xsl:value-of select="@nome"/>
					</p>
				</xsl:if>
			</xsl:for-each>
			<p class="fala">
				<xsl:value-of select="text()"/>
			</p>

			<xsl:apply-templates select="comentario"/>
		</xsl:template>

		<xsl:template match="comentario">
	    	(<i><xsl:value-of select="text()"/></i>)
		</xsl:template>
</xsl:stylesheet>