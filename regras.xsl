<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8"/>
	<xsl:include href="cabecalho.xsl" /> 
	<xsl:include href="temp.xsl" />
	<xsl:include href="episod.xsl" />
	<xsl:include href="cena.xsl" /> 
	<xsl:include href="parte.xsl" /> 

	<xsl:template match="guiao">
		<html>
			<head>
				<title>GUIAO</title>
				<link rel="stylesheet" type ="text/css" href="style.css"/>
			</head>
			<body>
				<xsl:apply-templates select="cabecalho"/>
				
				<table>
					<th>Conteúdo</th>
					<tr><td><xsl:apply-templates select="hierarquia/temporada" mode="links"/></td></tr>
					<tr><td><xsl:apply-templates select="hierarquia/temporada/episodio" mode="links2"/></td></tr>
					<tr><td><xsl:apply-templates select="hierarquia/parte" mode="links3"/></td></tr>
				</table>

				<xsl:for-each select="hierarquia/temporada">
					<xsl:apply-templates select="current()" mode="normal">
					</xsl:apply-templates>
				</xsl:for-each>
				<xsl:for-each select="hierarquia/parte">
					<xsl:apply-templates select="current()" mode="normal">
					</xsl:apply-templates>
				</xsl:for-each>
				<xsl:for-each select="hierarquia/cena">
					<xsl:apply-templates select="current()">
					</xsl:apply-templates>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>


</xsl:stylesheet>