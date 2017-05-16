<?xml version="1.0" encoding="UTF-8"?>
<!--
# $Header: $
#
# $Log: $
-->
<!--
Dieses Stylesheet zaehlt diverse Objekte und notiert dies im Segment Trailer
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:XmlTransform="java:de.axway.converter.xml.xsltextensions.XsltExtensions" exclude-result-prefixes="XmlTransform">	<xsl:output method="xml" indent="yes" encoding="ISO-8859-1"/>
	<xsl:template match="ACTIS">
		<xsl:call-template name="count_segments"/>
	</xsl:template>
	<xsl:template name="count_segments">
		<xsl:choose>
			<xsl:when test="name(child::*) != ''">
				<xsl:element name="{name()}">
					<xsl:for-each select="child::*">
						<xsl:call-template name="count_segments"/>
					</xsl:for-each>
				</xsl:element>
			</xsl:when>
			<xsl:otherwise>
				<xsl:choose>
					<xsl:when test="name() = 'Head_No'">
						<xsl:element name="{name()}">
							<xsl:value-of select="count(../preceding-sibling::*[name()='Head'])"/>
						</xsl:element>
					</xsl:when>
					<xsl:when test="name() = 'Article_No'">
						<xsl:element name="{name()}">
							<xsl:value-of select="count(../preceding::*[name()='Article_Grp'])"/>
						</xsl:element>
					</xsl:when>
					<xsl:when test="name() = 'Location_No'">
						<xsl:element name="{name()}">
							<xsl:value-of select="count(../preceding::*[name()='Location'])"/>
						</xsl:element>
					</xsl:when>
					<xsl:when test="name() = 'Quantities_No'">
						<xsl:element name="{name()}">
							<xsl:value-of select="count(../preceding::*[name()='Quantities'])"/>
						</xsl:element>
					</xsl:when>
					<xsl:when test="name() = 'Text_No'">
						<xsl:element name="{name()}">
							<xsl:value-of select="count(../preceding::*[name()='Text'])"/>
						</xsl:element>
					</xsl:when>
					<xsl:when test="name() = 'Trailer_No'">
						<xsl:element name="{name()}">
							<xsl:value-of select="count(../../descendant-or-self::*[name()='Trailer'])"/>
						</xsl:element>
					</xsl:when>
					<xsl:otherwise>
						<xsl:element name="{name()}">
							<xsl:value-of select="."/>
						</xsl:element>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>