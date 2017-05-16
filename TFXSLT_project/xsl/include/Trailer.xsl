<?xml version="1.0" encoding="UTF-8"?>
<!--
# $Header: $
#
# $Log: $
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:XmlTransform="java:de.axway.converter.xml.xsltextensions.XsltExtensions" exclude-result-prefixes="XmlTransform">	<xsl:output method="xml" indent="yes" encoding="ISO-8859-1"/>
	<xsl:template name="map_Trailer">
		<!-- Abbildungen fuer das Objekt Trailer -->
		<Trailer>
			<Total_Quantity>
				<xsl:value-of select="format-number(sum(NAD_Group/Consignee/Article/DEL/DEL_Qty_Status_Delivery_Type/DEL_6060_Qty)*1000,'00000000000000')"/>
			</Total_Quantity>
			<!--
			Die folgenden Tags werden im nachfolgenden XSLT-Script mit Zaehlern gefuellt.
			Damit dies geschehen kann, werden sie hier angelegt.
			-->
			<Head_No></Head_No>
			<Article_No></Article_No>
			<Location_No></Location_No>
			<Quantities_No></Quantities_No>
			<Text_No></Text_No>
			<Trailer_No></Trailer_No>
		</Trailer>
	</xsl:template>
</xsl:stylesheet>