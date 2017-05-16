<?xml version="1.0" encoding="UTF-8"?>
<!--
# $Header: $
#
# $Log: $
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:XmlTransform="java:de.axway.converter.xml.xsltextensions.XsltExtensions" exclude-result-prefixes="XmlTransform">	<xsl:include href="include/Head.xsl"/>
	<xsl:include href="include/Article.xsl"/>
	<xsl:include href="include/Location.xsl"/>
	<xsl:include href="include/Quantities.xsl"/>
	<xsl:include href="include/Text.xsl"/>
	<xsl:include href="include/Trailer.xsl"/>

	<xsl:output method="xml" indent="yes" encoding="ISO-8859-1"/>
	<xsl:param name="use_buyer_no" select="'N'"/>
	<xsl:param name="PPATH" select="''"/>
	<!--
	===========================================================================
	Nonterminaler Ablauf
	===========================================================================
	-->
	<xsl:template match="/">
		<!-- Abarbeitung Pro Message -->
		<xsl:apply-templates select="ACTIS/data/Message"/>
	</xsl:template>
	<xsl:template match="Message">
		<!-- Abarbeitung Pro Message -->
		<ACTIS>
			<data>
				<!-- Abbildungen fuer das Objekt Head -->
				<xsl:call-template name="map_Head"/>
				<!-- Abarbeitung Pro Article -->
				<xsl:apply-templates select="NAD_Group/Consignee/Article"/>
				<!-- Abbildungen fuer das Objekt Trailer -->
				<xsl:call-template name="map_Trailer"/>
			</data>
		</ACTIS>
	</xsl:template>
	<xsl:template match="Article">
		<!-- Abarbeitung Pro Article -->
		<Article_Grp>
			<!-- Abbildungen fuer das Objekt Article -->
			<xsl:call-template name="map_Article"/>
			<!-- Abbildungen fuer das Objekt Location -->
			<xsl:call-template name="map_Location"/>
			<!-- Abbildungen fuer das Objekt Quantities -->
			<xsl:call-template name="map_Quantities">
				<xsl:with-param name="_START" select="1"/>
			</xsl:call-template>
			<!-- Abbildungen fuer das Objekt Text -->
			<xsl:call-template name="map_Text">
				<xsl:with-param name="_START" select="'0'"/>
			</xsl:call-template>
		</Article_Grp>
	</xsl:template>
</xsl:stylesheet>