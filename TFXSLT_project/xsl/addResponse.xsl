<?xml version="1.0" encoding="UTF-8"?>
<!--
#
# $Header:$
#
# $Log:$
#
-->
<!--Stylesheet was automatically generated on Oct 13, 2016 10:17:56 AM-->
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:XmlTransform="java:de.axway.converter.xml.xsltextensions.XsltExtensions" exclude-result-prefixes="XmlTransform">
	<xsl:output method="xml" indent="yes" encoding="UTF-8"/>

	<xsl:param name="ACTISEDI" select="''"/>
	<xsl:param name="PPATH" select="''"/>

	<xsl:variable name="systemdate" select="XmlTransform:getDate('yyyyMMdd')"/>
	<xsl:variable name="systemtime" select="XmlTransform:getDate('HHmmss')"/>



	<!--Template for root element -->
	<xsl:template match="/">
		<version>
			<!--Please insert the transformation instruction here-->
		</version>
		<xsl:call-template name="UNA" />
		<xsl:call-template name="data" />
	</xsl:template>

	<!--Template for 'UNA' -->
	<xsl:template name="UNA">
		<UNA>
			<idUNA>
				<!--Please insert the transformation instruction here-->
			</idUNA>
			<Com_Sep>
				<!--Please insert the transformation instruction here-->
			</Com_Sep>
			<Data_Sep>
				<!--Please insert the transformation instruction here-->
			</Data_Sep>
			<Decimal_Notation>
				<!--Please insert the transformation instruction here-->
			</Decimal_Notation>
			<Release_Ind>
				<!--Please insert the transformation instruction here-->
			</Release_Ind>
			<Filler>
				<!--Please insert the transformation instruction here-->
			</Filler>
			<Seg_Terminator>
				<!--Please insert the transformation instruction here-->
			</Seg_Terminator>
		</UNA>
	</xsl:template>

	<!--Template for 'data' -->
	<xsl:template name="data">
		<data>
			<xsl:call-template name="UNB" />
			<xsl:call-template name="Message" />
			<xsl:call-template name="UNZ" />
		</data>
	</xsl:template>

	<!--Template for 'UNB' -->
	<xsl:template name="UNB">
		<UNB>
			<idUNB>
				<!--Please insert the transformation instruction here-->
			</idUNB>
			<xsl:call-template name="UNB_S001_Syntax_Identifier" />
			<xsl:call-template name="UNB_S002_Interchange_Sender" />
			<xsl:call-template name="UNB_S003_Interchange_Recipient" />
			<xsl:call-template name="UNB_S004_DateTime_Preparation" />
			<UNB_0020_Interchange_Control_Ref>
				<!--Please insert the transformation instruction here-->
			</UNB_0020_Interchange_Control_Ref>
			<xsl:call-template name="UNB_S005_Recipients_Ref_Passwd" />
			<UNB_0026_Application_Reference>
				<!--Please insert the transformation instruction here-->
			</UNB_0026_Application_Reference>
			<UNB_0029_Processing_Prior_Code>
				<!--Please insert the transformation instruction here-->
			</UNB_0029_Processing_Prior_Code>
			<UNB_0031_Acknowledgement_Request>
				<!--Please insert the transformation instruction here-->
			</UNB_0031_Acknowledgement_Request>
			<UNB_0032_Communic_Agreement_ID>
				<!--Please insert the transformation instruction here-->
			</UNB_0032_Communic_Agreement_ID>
			<UNB_0035_Test_Indicator>
				<!--Please insert the transformation instruction here-->
			</UNB_0035_Test_Indicator>
		</UNB>
	</xsl:template>

	<!--Template for 'UNB_S001_Syntax_Identifier' -->
	<xsl:template name="UNB_S001_Syntax_Identifier">
		<UNB_S001_Syntax_Identifier>
			<UNB_0001_syntax_identifier>
				<!--Please insert the transformation instruction here-->
			</UNB_0001_syntax_identifier>
			<UNB_0002_Syntax_Version_Number>
				<!--Please insert the transformation instruction here-->
			</UNB_0002_Syntax_Version_Number>
		</UNB_S001_Syntax_Identifier>
	</xsl:template>

	<!--Template for 'UNB_S002_Interchange_Sender' -->
	<xsl:template name="UNB_S002_Interchange_Sender">
		<UNB_S002_Interchange_Sender>
			<UNB_0004_Sender_Identification>
				<!--Please insert the transformation instruction here-->
			</UNB_0004_Sender_Identification>
			<UNB_0007_Identif_Code_Qualif_S>
				<!--Please insert the transformation instruction here-->
			</UNB_0007_Identif_Code_Qualif_S>
			<UNB_0008_Address_For_Rev_Routing>
				<!--Please insert the transformation instruction here-->
			</UNB_0008_Address_For_Rev_Routing>
		</UNB_S002_Interchange_Sender>
	</xsl:template>

	<!--Template for 'UNB_S003_Interchange_Recipient' -->
	<xsl:template name="UNB_S003_Interchange_Recipient">
		<UNB_S003_Interchange_Recipient>
			<UNB_0010_Recipient_Identific>
				<!--Please insert the transformation instruction here-->
			</UNB_0010_Recipient_Identific>
			<UNB_0007_Identif_Code_Qualif_R>
				<!--Please insert the transformation instruction here-->
			</UNB_0007_Identif_Code_Qualif_R>
			<UNB_0014_Routing_Address>
				<!--Please insert the transformation instruction here-->
			</UNB_0014_Routing_Address>
		</UNB_S003_Interchange_Recipient>
	</xsl:template>

	<!--Template for 'UNB_S004_DateTime_Preparation' -->
	<xsl:template name="UNB_S004_DateTime_Preparation">
		<UNB_S004_DateTime_Preparation>
			<UNB_0017_Date>
				<!--Please insert the transformation instruction here-->
			</UNB_0017_Date>
			<UNB_0019_Time>
				<!--Please insert the transformation instruction here-->
			</UNB_0019_Time>
		</UNB_S004_DateTime_Preparation>
	</xsl:template>

	<!--Template for 'UNB_S005_Recipients_Ref_Passwd' -->
	<xsl:template name="UNB_S005_Recipients_Ref_Passwd">
		<UNB_S005_Recipients_Ref_Passwd>
			<UNB_0022_Recipients_Ref_Passwd>
				<!--Please insert the transformation instruction here-->
			</UNB_0022_Recipients_Ref_Passwd>
			<UNB_0025_Recip_RefPw_Qualifier>
				<!--Please insert the transformation instruction here-->
			</UNB_0025_Recip_RefPw_Qualifier>
		</UNB_S005_Recipients_Ref_Passwd>
	</xsl:template>

	<!--Template for 'Message' -->
	<xsl:template name="Message">
		<Message>
			<xsl:call-template name="UNH" />
			<xsl:call-template name="BGM" />
			<xsl:call-template name="DTM" />
			<xsl:call-template name="NAD_Group" />
			<xsl:call-template name="UNT" />
		</Message>
	</xsl:template>

	<!--Template for 'UNH' -->
	<xsl:template name="UNH">
		<UNH>
			<idUNH>
				<!--Please insert the transformation instruction here-->
			</idUNH>
			<UNH_0062_Message_Ref_Number>
				<!--Please insert the transformation instruction here-->
			</UNH_0062_Message_Ref_Number>
			<xsl:call-template name="UNH_S009_Message_Identifier" />
			<UNH_0068_Common_Access_Ref>
				<!--Please insert the transformation instruction here-->
			</UNH_0068_Common_Access_Ref>
			<xsl:call-template name="UNH_S010_Status_Of_The_Transfer" />
		</UNH>
	</xsl:template>

	<!--Template for 'UNH_S009_Message_Identifier' -->
	<xsl:template name="UNH_S009_Message_Identifier">
		<UNH_S009_Message_Identifier>
			<UNH_0065_Message_Type>
				<!--Please insert the transformation instruction here-->
			</UNH_0065_Message_Type>
			<UNH_0052_Message_Version_Nr>
				<!--Please insert the transformation instruction here-->
			</UNH_0052_Message_Version_Nr>
			<UNH_0054_Message_Release_Nr>
				<!--Please insert the transformation instruction here-->
			</UNH_0054_Message_Release_Nr>
			<UNH_0051_Controlling_Agency>
				<!--Please insert the transformation instruction here-->
			</UNH_0051_Controlling_Agency>
			<UNH_0057_Assoc_Assigned_Code>
				<!--Please insert the transformation instruction here-->
			</UNH_0057_Assoc_Assigned_Code>
		</UNH_S009_Message_Identifier>
	</xsl:template>

	<!--Template for 'UNH_S010_Status_Of_The_Transfer' -->
	<xsl:template name="UNH_S010_Status_Of_The_Transfer">
		<UNH_S010_Status_Of_The_Transfer>
			<UNH_0070_Sequence_Of_Transfers>
				<!--Please insert the transformation instruction here-->
			</UNH_0070_Sequence_Of_Transfers>
			<UNH_0073_First_Last_Transfer>
				<!--Please insert the transformation instruction here-->
			</UNH_0073_First_Last_Transfer>
		</UNH_S010_Status_Of_The_Transfer>
	</xsl:template>

	<!--Template for 'BGM' -->
	<xsl:template name="BGM">
		<BGM>
			<idBGM>
				<!--Please insert the transformation instruction here-->
			</idBGM>
			<xsl:call-template name="BGM_C002" />
			<BGM_1004_Document_No>
				<!--Please insert the transformation instruction here-->
			</BGM_1004_Document_No>
			<BGM_1225_Message_Function_C>
				<!--Please insert the transformation instruction here-->
			</BGM_1225_Message_Function_C>
			<BGM_4343_Response_Type_C>
				<!--Please insert the transformation instruction here-->
			</BGM_4343_Response_Type_C>
		</BGM>
	</xsl:template>

	<!--Template for 'BGM_C002' -->
	<xsl:template name="BGM_C002">
		<BGM_C002>
			<BGM_1001_Document_Name_C>
				<!--Please insert the transformation instruction here-->
			</BGM_1001_Document_Name_C>
			<BGM_1131_Code_List_Qualif>
				<!--Please insert the transformation instruction here-->
			</BGM_1131_Code_List_Qualif>
			<BGM_3055_Code_List_Resp>
				<!--Please insert the transformation instruction here-->
			</BGM_3055_Code_List_Resp>
			<BGM_1000_Document_Name>
				<!--Please insert the transformation instruction here-->
			</BGM_1000_Document_Name>
		</BGM_C002>
	</xsl:template>

	<!--Template for 'DTM' -->
	<xsl:template name="DTM">
		<DTM>
			<idDTM>
				<!--Please insert the transformation instruction here-->
			</idDTM>
			<xsl:call-template name="DTM_C507" />
		</DTM>
	</xsl:template>

	<!--Template for 'DTM_C507' -->
	<xsl:template name="DTM_C507">
		<DTM_C507>
			<DTM_2005_Date_Qualif>
				<!--Please insert the transformation instruction here-->
			</DTM_2005_Date_Qualif>
			<DTM_2380_Date_Time>
				<!--Please insert the transformation instruction here-->
			</DTM_2380_Date_Time>
			<DTM_2379_Format_Qualif>
				<!--Please insert the transformation instruction here-->
			</DTM_2379_Format_Qualif>
		</DTM_C507>
	</xsl:template>

	<!--Template for 'NAD_Group' -->
	<xsl:template name="NAD_Group">
		<NAD_Group>
			<xsl:call-template name="NAD" />
			<xsl:call-template name="Consignee" />
		</NAD_Group>
	</xsl:template>

	<!--Template for 'NAD' -->
	<xsl:template name="NAD">
		<NAD>
			<idNAD>
				<!--Please insert the transformation instruction here-->
			</idNAD>
			<NAD_3035_Party_Qualif>
				<!--Please insert the transformation instruction here-->
			</NAD_3035_Party_Qualif>
			<xsl:call-template name="NAD_C082" />
			<xsl:call-template name="NAD_C058" />
			<xsl:call-template name="NAD_C080" />
			<xsl:call-template name="NAD_C059" />
			<NAD_3164_City_Name>
				<!--Please insert the transformation instruction here-->
			</NAD_3164_City_Name>
			<NAD_3229_Country_Sub_ID>
				<!--Please insert the transformation instruction here-->
			</NAD_3229_Country_Sub_ID>
			<NAD_3251_Postcode_ID>
				<!--Please insert the transformation instruction here-->
			</NAD_3251_Postcode_ID>
			<NAD_3207_Country_C>
				<!--Please insert the transformation instruction here-->
			</NAD_3207_Country_C>
		</NAD>
	</xsl:template>

	<!--Template for 'NAD_C082' -->
	<xsl:template name="NAD_C082">
		<NAD_C082>
			<NAD_3039_Party_ID_Ident>
				<!--Please insert the transformation instruction here-->
			</NAD_3039_Party_ID_Ident>
			<NAD_1131_Code_List_Qualif>
				<!--Please insert the transformation instruction here-->
			</NAD_1131_Code_List_Qualif>
			<NAD_3055_Code_List_Resp>
				<!--Please insert the transformation instruction here-->
			</NAD_3055_Code_List_Resp>
		</NAD_C082>
	</xsl:template>

	<!--Template for 'NAD_C058' -->
	<xsl:template name="NAD_C058">
		<NAD_C058>
			<NAD_3124_Name_and_Address_1>
				<!--Please insert the transformation instruction here-->
			</NAD_3124_Name_and_Address_1>
			<NAD_3124_Name_and_Address_2>
				<!--Please insert the transformation instruction here-->
			</NAD_3124_Name_and_Address_2>
			<NAD_3124_Name_and_Address_3>
				<!--Please insert the transformation instruction here-->
			</NAD_3124_Name_and_Address_3>
			<NAD_3124_Name_and_Address_4>
				<!--Please insert the transformation instruction here-->
			</NAD_3124_Name_and_Address_4>
			<NAD_3124_Name_and_Address_5>
				<!--Please insert the transformation instruction here-->
			</NAD_3124_Name_and_Address_5>
		</NAD_C058>
	</xsl:template>

	<!--Template for 'NAD_C080' -->
	<xsl:template name="NAD_C080">
		<NAD_C080>
			<NAD_3036_Party_Name>
				<!--Please insert the transformation instruction here-->
			</NAD_3036_Party_Name>
			<NAD_3045_Party_Name_Format_C>
				<!--Please insert the transformation instruction here-->
			</NAD_3045_Party_Name_Format_C>
		</NAD_C080>
	</xsl:template>

	<!--Template for 'NAD_C059' -->
	<xsl:template name="NAD_C059">
		<NAD_C059>
			<NAD_3042_Street_and_NO>
				<!--Please insert the transformation instruction here-->
			</NAD_3042_Street_and_NO>
		</NAD_C059>
	</xsl:template>

	<!--Template for 'Consignee' -->
	<xsl:template name="Consignee">
		<Consignee>
			<xsl:call-template name="NAD_Cons" />
			<xsl:call-template name="Article" />
		</Consignee>
	</xsl:template>

	<!--Template for 'NAD_Cons' -->
	<xsl:template name="NAD_Cons">
		<NAD_Cons>
			<idNAD_Cons_>
				<!--Please insert the transformation instruction here-->
			</idNAD_Cons_>
			<NAD_Cons_3035_Party_Qualif>
				<!--Please insert the transformation instruction here-->
			</NAD_Cons_3035_Party_Qualif>
			<xsl:call-template name="NAD_Cons_C082" />
			<xsl:call-template name="NAD_Cons_C058" />
			<xsl:call-template name="NAD_Cons_C080" />
			<xsl:call-template name="NAD_Cons_C059" />
			<NAD_Cons_3164_City_Name>
				<!--Please insert the transformation instruction here-->
			</NAD_Cons_3164_City_Name>
			<NAD_Cons_3229_Country_Sub_ID>
				<!--Please insert the transformation instruction here-->
			</NAD_Cons_3229_Country_Sub_ID>
			<NAD_Cons_3251_Postcode_ID>
				<!--Please insert the transformation instruction here-->
			</NAD_Cons_3251_Postcode_ID>
			<NAD_Cons_3207_Country_C>
				<!--Please insert the transformation instruction here-->
			</NAD_Cons_3207_Country_C>
		</NAD_Cons>
	</xsl:template>

	<!--Template for 'NAD_Cons_C082' -->
	<xsl:template name="NAD_Cons_C082">
		<NAD_Cons_C082>
			<NAD_Cons_3039_Party_ID_Ident>
				<!--Please insert the transformation instruction here-->
			</NAD_Cons_3039_Party_ID_Ident>
			<NAD_Cons_1131_Code_List_Qualif>
				<!--Please insert the transformation instruction here-->
			</NAD_Cons_1131_Code_List_Qualif>
			<NAD_Cons_3055_Code_List_Resp>
				<!--Please insert the transformation instruction here-->
			</NAD_Cons_3055_Code_List_Resp>
		</NAD_Cons_C082>
	</xsl:template>

	<!--Template for 'NAD_Cons_C058' -->
	<xsl:template name="NAD_Cons_C058">
		<NAD_Cons_C058>
			<NAD_Cons_3124_Name_and_Address_1>
				<!--Please insert the transformation instruction here-->
			</NAD_Cons_3124_Name_and_Address_1>
			<NAD_Cons_3124_Name_and_Address_2>
				<!--Please insert the transformation instruction here-->
			</NAD_Cons_3124_Name_and_Address_2>
			<NAD_Cons_3124_Name_and_Address_3>
				<!--Please insert the transformation instruction here-->
			</NAD_Cons_3124_Name_and_Address_3>
			<NAD_Cons_3124_Name_and_Address_4>
				<!--Please insert the transformation instruction here-->
			</NAD_Cons_3124_Name_and_Address_4>
			<NAD_Cons_3124_Name_and_Address_5>
				<!--Please insert the transformation instruction here-->
			</NAD_Cons_3124_Name_and_Address_5>
		</NAD_Cons_C058>
	</xsl:template>

	<!--Template for 'NAD_Cons_C080' -->
	<xsl:template name="NAD_Cons_C080">
		<NAD_Cons_C080>
			<NAD_Cons_3036_Party_Name>
				<!--Please insert the transformation instruction here-->
			</NAD_Cons_3036_Party_Name>
			<NAD_Cons_3045_Party_Name_Format_C>
				<!--Please insert the transformation instruction here-->
			</NAD_Cons_3045_Party_Name_Format_C>
		</NAD_Cons_C080>
	</xsl:template>

	<!--Template for 'NAD_Cons_C059' -->
	<xsl:template name="NAD_Cons_C059">
		<NAD_Cons_C059>
			<NAD_Cons_3042_Street_and_NO>
				<!--Please insert the transformation instruction here-->
			</NAD_Cons_3042_Street_and_NO>
		</NAD_Cons_C059>
	</xsl:template>

	<!--Template for 'Article' -->
	<xsl:template name="Article">
		<Article>
			<xsl:call-template name="ARD" />
			<xsl:call-template name="PDN" />
			<xsl:call-template name="DEL" />
			<xsl:call-template name="FTX" />
		</Article>
	</xsl:template>

	<!--Template for 'ARD' -->
	<xsl:template name="ARD">
		<ARD>
			<idARD>
				<!--Please insert the transformation instruction here-->
			</idARD>
			<xsl:call-template name="ARD_Article_Identification" />
			<xsl:call-template name="ARD_Qty_Delivered_Unit" />
			<xsl:call-template name="ARD_Order_Identification" />
		</ARD>
	</xsl:template>

	<!--Template for 'ARD_Article_Identification' -->
	<xsl:template name="ARD_Article_Identification">
		<ARD_Article_Identification>
			<ARD_7304_Buyer_Article_No>
				<!--Please insert the transformation instruction here-->
			</ARD_7304_Buyer_Article_No>
			<ARD_7194_Seller_Article_No>
				<!--Please insert the transformation instruction here-->
			</ARD_7194_Seller_Article_No>
			<ARD_7008_Article_Description>
				<!--Please insert the transformation instruction here-->
			</ARD_7008_Article_Description>
		</ARD_Article_Identification>
	</xsl:template>

	<!--Template for 'ARD_Qty_Delivered_Unit' -->
	<xsl:template name="ARD_Qty_Delivered_Unit">
		<ARD_Qty_Delivered_Unit>
			<ARD_6270_Qty_Delivered>
				<!--Please insert the transformation instruction here-->
			</ARD_6270_Qty_Delivered>
			<ARD_6410_Measure_Unit_Specifier>
				<!--Please insert the transformation instruction here-->
			</ARD_6410_Measure_Unit_Specifier>
		</ARD_Qty_Delivered_Unit>
	</xsl:template>

	<!--Template for 'ARD_Order_Identification' -->
	<xsl:template name="ARD_Order_Identification">
		<ARD_Order_Identification>
			<ARD_1022_Order_Contract_No>
				<!--Please insert the transformation instruction here-->
			</ARD_1022_Order_Contract_No>
			<ARD_2001_Order_Date>
				<!--Please insert the transformation instruction here-->
			</ARD_2001_Order_Date>
		</ARD_Order_Identification>
	</xsl:template>

	<!--Template for 'PDN' -->
	<xsl:template name="PDN">
		<PDN>
			<idPDN>
				<!--Please insert the transformation instruction here-->
			</idPDN>
			<xsl:call-template name="PDN_Despatch_Note" />
			<xsl:call-template name="PDN_Qty_Delivered_Received" />
		</PDN>
	</xsl:template>

	<!--Template for 'PDN_Despatch_Note' -->
	<xsl:template name="PDN_Despatch_Note">
		<PDN_Despatch_Note>
			<PDN_1128_Despatch_Note_No>
				<!--Please insert the transformation instruction here-->
			</PDN_1128_Despatch_Note_No>
			<PDN_2219_Despatch_Note_Date>
				<!--Please insert the transformation instruction here-->
			</PDN_2219_Despatch_Note_Date>
		</PDN_Despatch_Note>
	</xsl:template>

	<!--Template for 'PDN_Qty_Delivered_Received' -->
	<xsl:template name="PDN_Qty_Delivered_Received">
		<PDN_Qty_Delivered_Received>
			<PDN_6270_Qty_Delivered>
				<!--Please insert the transformation instruction here-->
			</PDN_6270_Qty_Delivered>
			<PDN_6872_Qty_Received>
				<!--Please insert the transformation instruction here-->
			</PDN_6872_Qty_Received>
		</PDN_Qty_Delivered_Received>
	</xsl:template>

	<!--Template for 'DEL' -->
	<xsl:template name="DEL">
		<DEL>
			<idDEL>
				<!--Please insert the transformation instruction here-->
			</idDEL>
			<xsl:call-template name="DEL_Date_Time_Periods" />
			<xsl:call-template name="DEL_Qty_Status_Delivery_Type" />
		</DEL>
	</xsl:template>

	<!--Template for 'DEL_Date_Time_Periods' -->
	<xsl:template name="DEL_Date_Time_Periods">
		<DEL_Date_Time_Periods>
			<DEL_2803_First_Date>
				<!--Please insert the transformation instruction here-->
			</DEL_2803_First_Date>
			<DEL_2002_First_Time>
				<!--Please insert the transformation instruction here-->
			</DEL_2002_First_Time>
			<DEL_2805_Last_Date>
				<!--Please insert the transformation instruction here-->
			</DEL_2805_Last_Date>
			<DEL_2002_Last_Time>
				<!--Please insert the transformation instruction here-->
			</DEL_2002_Last_Time>
		</DEL_Date_Time_Periods>
	</xsl:template>

	<!--Template for 'DEL_Qty_Status_Delivery_Type' -->
	<xsl:template name="DEL_Qty_Status_Delivery_Type">
		<DEL_Qty_Status_Delivery_Type>
			<DEL_6060_Qty>
				<!--Please insert the transformation instruction here-->
			</DEL_6060_Qty>
			<DEL_1310_Part_Consignment_Number>
				<!--Please insert the transformation instruction here-->
			</DEL_1310_Part_Consignment_Number>
			<DEL_7803_Delivery_Instr_Reason>
				<!--Please insert the transformation instruction here-->
			</DEL_7803_Delivery_Instr_Reason>
			<DEL_6811_Schedule_Status_Ind>
				<!--Please insert the transformation instruction here-->
			</DEL_6811_Schedule_Status_Ind>
			<DEL_6903_Cumulative_Quantity>
				<!--Please insert the transformation instruction here-->
			</DEL_6903_Cumulative_Quantity>
			<DEL_6904_Cumul_Quant_Prior_Sched>
				<!--Please insert the transformation instruction here-->
			</DEL_6904_Cumul_Quant_Prior_Sched>
		</DEL_Qty_Status_Delivery_Type>
	</xsl:template>

	<!--Template for 'FTX' -->
	<xsl:template name="FTX">
		<FTX>
			<idFTX>
				<!--Please insert the transformation instruction here-->
			</idFTX>
			<xsl:call-template name="Free_text" />
		</FTX>
	</xsl:template>

	<!--Template for 'Free_text' -->
	<xsl:template name="Free_text">
		<Free_text>
			<Free_text_line>
				<!--Please insert the transformation instruction here-->
			</Free_text_line>
		</Free_text>
	</xsl:template>

	<!--Template for 'UNT' -->
	<xsl:template name="UNT">
		<UNT>
			<idUNT>
				<!--Please insert the transformation instruction here-->
			</idUNT>
			<UNT_0074_Number_Of_Segments>
				<!--Please insert the transformation instruction here-->
			</UNT_0074_Number_Of_Segments>
			<UNT_0062_Message_Ref_Number>
				<!--Please insert the transformation instruction here-->
			</UNT_0062_Message_Ref_Number>
		</UNT>
	</xsl:template>

	<!--Template for 'UNZ' -->
	<xsl:template name="UNZ">
		<UNZ>
			<idUNZ>
				<!--Please insert the transformation instruction here-->
			</idUNZ>
			<UNZ_0036_Inter_Control_Count>
				<!--Please insert the transformation instruction here-->
			</UNZ_0036_Inter_Control_Count>
			<UNZ_0020_Inter_Control_Ref>
				<!--Please insert the transformation instruction here-->
			</UNZ_0020_Inter_Control_Ref>
		</UNZ>
	</xsl:template>
</xsl:stylesheet>