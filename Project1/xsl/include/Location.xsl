<?xml version="1.0" encoding="UTF-8"?>
<!--
# $Header: $
#
# $Log: $
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:XmlTransform="java:de.axway.converter.xml.xsltextensions.XsltExtensions" exclude-result-prefixes="XmlTransform">	<xsl:output method="xml" indent="yes" encoding="ISO-8859-1"/>
	<xsl:template name="map_Location">
		<!-- Abbildungen fuer das Objekt Location -->
		<Location>
			<Delivery_Party_Name>
				<xsl:value-of select="../NAD_Cons/NAD_Cons_C082/NAD_Cons_3039_Party_ID_Ident"/>
			</Delivery_Party_Name>
			<Delivery_Address_1>
				<xsl:value-of select="../NAD_Cons/NAD_Cons_C058/NAD_Cons_3124_Name_and_Address_1"/>
			</Delivery_Address_1>
			<Delivery_Address_2>
				<xsl:value-of select="../NAD_Cons/NAD_Cons_C058/NAD_Cons_3124_Name_and_Address_2"/>
			</Delivery_Address_2>
			<Delivery_Address_3>
				<xsl:value-of select="../NAD_Cons/NAD_Cons_C058/NAD_Cons_3124_Name_and_Address_3"/>
			</Delivery_Address_3>
		</Location>
	</xsl:template>
</xsl:stylesheet>