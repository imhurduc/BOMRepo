<?xml version="1.0" encoding="UTF-8"?>
<!--
# $Header: $
#
# $Log: $
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:XmlTransform="java:de.axway.converter.xml.xsltextensions.XsltExtensions" exclude-result-prefixes="XmlTransform">	<xsl:output method="xml" indent="yes" encoding="ISO-8859-1"/>
	<xsl:template name="map_Text">
		<!-- Abbildungen fuer das Objekt Text -->
		<xsl:param name="_START"/>
		<!-- 
		Hier bei den Texten ist es aehnlich, wie bei den DEL-Segmenten. Free_text_line
		kommt in der Quelle beliebig oft vor. Im Ziel enthaelt das Segment Text 
		4 Text_Line Objekte. Damit sicher gestellt ist, dass 4 Free_text_line
		in ein Segement Text abgebildet werden, wird hier ebenso eine Mimik 
		angewandt, die rekursiv unter Beruecksichtigung eines Startpunktes, die
		Abbildung und Segmenterzeugung vornimmt.
		-->
		<Text>
			<xsl:for-each select="(FTX/Free_text/Free_text_line)[(position() &gt; $_START) and (position() &lt; ($_START+5))]">
				<Text_Line>
					<xsl:value-of select="node()"/>
				</Text_Line>
			</xsl:for-each>
		</Text>
		<xsl:if test="count(FTX/Free_text/Free_text_line) &gt; ($_START+4)">
			<!-- Wenn in der Quelle noch Texte vorhanden sind, dann wird hier das Template erneut aufgerufen -->
			<xsl:call-template name="map_Text">
				<xsl:with-param name="_START" select="$_START+4"/>
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>