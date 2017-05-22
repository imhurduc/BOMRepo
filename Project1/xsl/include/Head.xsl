<?xml version="1.0" encoding="UTF-8"?>
<!--
# $Header: $
#
# $Log: $
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:XmlTransform="java:de.axway.converter.xml.xsltextensions.XsltExtensions" exclude-result-prefixes="XmlTransform">	<xsl:output method="xml" indent="yes" encoding="ISO-8859-1"/>
	<xsl:template name="map_Head">
		<!-- Abbildungen fuer das Objekt Head -->
		<Head>
			<Seller>
				<!-- Layout der Selleridentifikation wird aufgebaut -->
				<xsl:value-of select="substring(NAD_Group[NAD/NAD_3035_Party_Qualif = 'SE']/NAD/NAD_C082/NAD_3039_Party_ID_Ident,1,3)"/>
				<xsl:text> </xsl:text>
				<xsl:value-of select="substring(NAD_Group[NAD/NAD_3035_Party_Qualif = 'SE']/NAD/NAD_C082/NAD_3039_Party_ID_Ident,4,4)"/>
				<xsl:text> </xsl:text>
				<xsl:value-of select="substring(NAD_Group[NAD/NAD_3035_Party_Qualif = 'SE']/NAD/NAD_C082/NAD_3039_Party_ID_Ident,8)"/>
			</Seller>
			<Buyer>
				<!-- Layout der Buyeridentifikation wird aufgebaut -->
				<xsl:value-of select="substring(NAD_Group[NAD/NAD_3035_Party_Qualif = 'BY']/NAD/NAD_C082/NAD_3039_Party_ID_Ident,1,3)"/>
				<xsl:text> </xsl:text>
				<xsl:value-of select="substring(NAD_Group[NAD/NAD_3035_Party_Qualif = 'BY']/NAD/NAD_C082/NAD_3039_Party_ID_Ident,4,4)"/>
				<xsl:text> </xsl:text>
				<xsl:value-of select="substring(NAD_Group[NAD/NAD_3035_Party_Qualif = 'BY']/NAD/NAD_C082/NAD_3039_Party_ID_Ident,8)"/>
			</Buyer>
			<Message_Date>
				<xsl:value-of select="XmlTransform:convertDate(DTM[DTM_C507/DTM_2005_Date_Qualif = 'MES']/DTM_C507/DTM_2380_Date_Time,'yyMMdd','ddMMyy')"/>
			</Message_Date>
			<Number>
				<!-- Layout der Number wird aufgebaut -->
				<xsl:value-of select="XmlTransform:getDate('yyyyMMdd')"/>
				<xsl:value-of select="substring(BGM/BGM_1004_Document_No,string-length(BGM/BGM_1004_Document_No)-9)"/>
			</Number>
		</Head>
	</xsl:template>
</xsl:stylesheet>