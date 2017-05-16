<?xml version="1.0" encoding="UTF-8"?>
<!--
# $Header: $
#
# $Log: $
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:XmlTransform="java:de.axway.converter.xml.xsltextensions.XsltExtensions" exclude-result-prefixes="XmlTransform">	<xsl:output method="xml" indent="yes" encoding="ISO-8859-1"/>
	<xsl:template name="map_Article">
		<!-- Abbildungen fuer das Objekt Article -->
		<Article>
			<xsl:choose>
				<xsl:when test="$use_buyer_no = 'N'">
					<Article_Number>
						<xsl:value-of select="ARD/ARD_Article_Identification/ARD_7194_Seller_Article_No"/>
					</Article_Number>
				</xsl:when>
				<xsl:otherwise>
					<Article_Number>
						<xsl:value-of select="ARD/ARD_Article_Identification/ARD_7304_Buyer_Article_No"/>
					</Article_Number>
				</xsl:otherwise>
			</xsl:choose>
			<Article_Description>
				<xsl:value-of select="ARD/ARD_Article_Identification/ARD_7008_Article_Description"/>
			</Article_Description>
			<Measure_Unit_Specifier>
				<!-- Es wird auf die Ersetzungstabelle aus dem Projektverzeichnis zugegriffen -->
				<xsl:value-of select="XmlTransform:getProperty(concat(string($PPATH),'/tftab/deliv_delin_mu.sta'),ARD/ARD_Qty_Delivered_Unit/ARD_6410_Measure_Unit_Specifier)"/>
			</Measure_Unit_Specifier>
			<Quantity>
				<xsl:value-of select="format-number(ARD/ARD_Qty_Delivered_Unit/ARD_6270_Qty_Delivered*1000,'000000000000000')"/>
			</Quantity>
			<Contract_No>
				<!-- Layout der Contract number wird aufgebaut -->
				<xsl:value-of select="substring(ARD/ARD_Order_Identification/ARD_1022_Order_Contract_No,1,3)"/>
				<xsl:text>-</xsl:text>
				<xsl:value-of select="substring(ARD/ARD_Order_Identification/ARD_1022_Order_Contract_No,4,4)"/>
				<xsl:text>-</xsl:text>
				<xsl:value-of select="substring(ARD/ARD_Order_Identification/ARD_1022_Order_Contract_No,8)"/>
			</Contract_No>
			<Previous_Note_No>
				<!-- PDN[last()] stellt sicher, dass die Information aus dem letzten PDN-Segment verwendet wird -->
				<xsl:value-of select="PDN[last()]/PDN_Despatch_Note/PDN_1128_Despatch_Note_No"/>
			</Previous_Note_No>
			<Previous_Note_Date>
				<!-- PDN[last()] stellt sicher, dass die Information aus dem letzten PDN-Segment verwendet wird -->
				<xsl:value-of select="XmlTransform:convertDate(PDN[last()]/PDN_Despatch_Note/PDN_2219_Despatch_Note_Date,'yyMMdd','ddMMyy')"/>
			</Previous_Note_Date>
		</Article>
	</xsl:template>
</xsl:stylesheet>