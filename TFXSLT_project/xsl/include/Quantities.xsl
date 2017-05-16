<?xml version="1.0" encoding="UTF-8"?>
<!--
# $Header: $
#
# $Log: $
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:XmlTransform="java:de.axway.converter.xml.xsltextensions.XsltExtensions" exclude-result-prefixes="XmlTransform">	<xsl:output method="xml" indent="yes" encoding="ISO-8859-1"/>
	<xsl:template name="map_Quantities">
		<!-- Abbildungen fuer das Objekt Quantities -->
		<xsl:param name="_START"/>
		<Quantities>
			<!-- 
			Da im Ziel 8 Mengenangaben pro Segment vorkommen duerfen, ist hier eine entsprechende
			Mimik realisiert, die dies sicher stellt. In der Schleife werden 8 DEL-Segment verarbeitet.
			Der Startpunkt dafuer wird ueber den Parameter $_START festgelegt. Sollten darueber hinaus
			noch weitere DEL-Segment vorhanden sein, dann wird das Template map_Quantities
			rekursiv erneut aufgerufen, jetzt aber mit entsprechend neuem Inhalt in $_START.
			-->
			<xsl:for-each select="DEL[position() &gt; ($_START - 1) and position() &lt; ($_START + 9)]">
				<Quantity_Grp>
					<xsl:choose>
						<xsl:when test="DEL_Qty_Status_Delivery_Type/DEL_7803_Delivery_Instr_Reason = '2'">
							<Deliver_Date>222222</Deliver_Date>
						</xsl:when>
						<xsl:when test="DEL_Qty_Status_Delivery_Type/DEL_7803_Delivery_Instr_Reason = '3'">
							<Deliver_Date>333333</Deliver_Date>
						</xsl:when>
						<xsl:when test="DEL_Qty_Status_Delivery_Type/DEL_7803_Delivery_Instr_Reason = '4'">
							<Deliver_Date>444444</Deliver_Date>
						</xsl:when>
						<xsl:otherwise>
							<Deliver_Date>
								<xsl:value-of select="XmlTransform:convertDate(DEL_Date_Time_Periods/DEL_2803_First_Date,'yyMMdd','ddMMyy')"/>
							</Deliver_Date>
						</xsl:otherwise>
					</xsl:choose>
					<Deliver_Time>
						<xsl:value-of select="DEL_Date_Time_Periods/DEL_2002_First_Time"/>
					</Deliver_Time>
					<Deliver_Quantity>
						<xsl:value-of select="format-number(DEL_Qty_Status_Delivery_Type/DEL_6060_Qty*100,'0000000000')"/>
					</Deliver_Quantity>
				</Quantity_Grp>
			</xsl:for-each>
			<xsl:if test="count(DEL) &lt; ($_START + 8)">
				<Quantity_Grp>
					<Deliver_Date>000000</Deliver_Date>
				</Quantity_Grp>
			</xsl:if>
		</Quantities>
		<xsl:if test="count(DEL) &gt; ($_START + 8)">
			<!-- Wenn in der Quelle noch DEL vorhanden sind, dann wird hier das Template erneut aufgerufen -->
			<xsl:call-template name="map_Quantities">
				<xsl:with-param name="_START">
					<xsl:value-of select="$_START + 9"/>
				</xsl:with-param>
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>