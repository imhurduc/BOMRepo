<?xml version="1.0" encoding="UTF-8"?>
<!-- 
# 
# $Header: $
# 
# $Log: $
#
#
# Stylesheet was automatically generated on Oct 13, 2016 10:23:08 AM
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:XmlTransform="java:de.axway.converter.xml.xsltextensions.XsltExtensions">
    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
    <!-- Template for '/' -->
    <xsl:template match="/">
        <ACTIS>
            <xsl:call-template name="UNA"/>
            <xsl:call-template name="data"/>
        </ACTIS>
    </xsl:template>
    <!-- Template for 'UNA' -->
    <xsl:template name="UNA">
        <UNA>
            <idUNA>
                <!-- Please insert the transformation instruction here -->
            </idUNA>
            <Com_Sep>
                <!-- Please insert the transformation instruction here -->
            </Com_Sep>
            <Data_Sep>
                <!-- Please insert the transformation instruction here -->
            </Data_Sep>
            <Decimal_Notation>
                <!-- Please insert the transformation instruction here -->
            </Decimal_Notation>
            <Release_Ind>
                <!-- Please insert the transformation instruction here -->
            </Release_Ind>
            <Filler>
                <!-- Please insert the transformation instruction here -->
            </Filler>
            <Seg_Terminator>
                <!-- Please insert the transformation instruction here -->
            </Seg_Terminator>
        </UNA>
    </xsl:template>
    <!-- Template for 'data' -->
    <xsl:template name="data">
        <data>
            <xsl:call-template name="UNB"/>
            <xsl:call-template name="Message"/>
            <xsl:call-template name="UNZ"/>
        </data>
    </xsl:template>
    <!-- Template for 'UNB' -->
    <xsl:template name="UNB">
        <UNB>
            <idUNB>
                <!-- Please insert the transformation instruction here -->
            </idUNB>
            <xsl:call-template name="UNB_S001_Syntax_Identifier"/>
            <xsl:call-template name="UNB_S002_Interchange_Sender"/>
            <xsl:call-template name="UNB_S003_Interchange_Recipient"/>
            <xsl:call-template name="UNB_S004_DateTime_Preparation"/>
            <UNB_0020_Interchange_Control_Ref>
                <!-- Please insert the transformation instruction here -->
            </UNB_0020_Interchange_Control_Ref>
            <xsl:call-template name="UNB_S005_Recipients_Ref_Passwd"/>
        </UNB>
    </xsl:template>
    <!-- Template for 'UNB_S001_Syntax_Identifier' -->
    <xsl:template name="UNB_S001_Syntax_Identifier">
        <UNB_S001_Syntax_Identifier>
            <UNB_0001_syntax_identifier>
                <xsl:value-of select="child::*[position()=1]/X_addResponse/X_return"/>
            </UNB_0001_syntax_identifier>
            <UNB_0002_Syntax_Version_Number>
                <!-- Please insert the transformation instruction here -->
            </UNB_0002_Syntax_Version_Number>
        </UNB_S001_Syntax_Identifier>
    </xsl:template>
    <!-- Template for 'UNB_S002_Interchange_Sender' -->
    <xsl:template name="UNB_S002_Interchange_Sender">
        <UNB_S002_Interchange_Sender>
            <UNB_0004_Sender_Identification>
                <!-- Please insert the transformation instruction here -->
            </UNB_0004_Sender_Identification>
        </UNB_S002_Interchange_Sender>
    </xsl:template>
    <!-- Template for 'UNB_S003_Interchange_Recipient' -->
    <xsl:template name="UNB_S003_Interchange_Recipient">
        <UNB_S003_Interchange_Recipient>
            <UNB_0010_Recipient_Identific>
                <!-- Please insert the transformation instruction here -->
            </UNB_0010_Recipient_Identific>
        </UNB_S003_Interchange_Recipient>
    </xsl:template>
    <!-- Template for 'UNB_S004_DateTime_Preparation' -->
    <xsl:template name="UNB_S004_DateTime_Preparation">
        <UNB_S004_DateTime_Preparation>
            <UNB_0017_Date>
                <!-- Please insert the transformation instruction here -->
            </UNB_0017_Date>
            <UNB_0019_Time>
                <!-- Please insert the transformation instruction here -->
            </UNB_0019_Time>
        </UNB_S004_DateTime_Preparation>
    </xsl:template>
    <!-- Template for 'UNB_S005_Recipients_Ref_Passwd' -->
    <xsl:template name="UNB_S005_Recipients_Ref_Passwd">
        <UNB_S005_Recipients_Ref_Passwd>
            <UNB_0022_Recipients_Ref_Passwd>
                <!-- Please insert the transformation instruction here -->
            </UNB_0022_Recipients_Ref_Passwd>
        </UNB_S005_Recipients_Ref_Passwd>
    </xsl:template>
    <!-- Template for 'Message' -->
    <xsl:template name="Message">
        <Message>
            <xsl:call-template name="UNH"/>
            <xsl:call-template name="BGM"/>
            <xsl:call-template name="DTM"/>
            <xsl:call-template name="NAD_Group"/>
            <xsl:call-template name="UNT"/>
        </Message>
    </xsl:template>
    <!-- Template for 'UNH' -->
    <xsl:template name="UNH">
        <UNH>
            <idUNH>
                <!-- Please insert the transformation instruction here -->
            </idUNH>
            <UNH_0062_Message_Ref_Number>
                <!-- Please insert the transformation instruction here -->
            </UNH_0062_Message_Ref_Number>
            <xsl:call-template name="UNH_S009_Message_Identifier"/>
            <xsl:call-template name="UNH_S010_Status_Of_The_Transfer"/>
        </UNH>
    </xsl:template>
    <!-- Template for 'UNH_S009_Message_Identifier' -->
    <xsl:template name="UNH_S009_Message_Identifier">
        <UNH_S009_Message_Identifier>
            <UNH_0065_Message_Type>
                <!-- Please insert the transformation instruction here -->
            </UNH_0065_Message_Type>
            <UNH_0052_Message_Version_Nr>
                <!-- Please insert the transformation instruction here -->
            </UNH_0052_Message_Version_Nr>
            <UNH_0054_Message_Release_Nr>
                <!-- Please insert the transformation instruction here -->
            </UNH_0054_Message_Release_Nr>
        </UNH_S009_Message_Identifier>
    </xsl:template>
    <!-- Template for 'UNH_S010_Status_Of_The_Transfer' -->
    <xsl:template name="UNH_S010_Status_Of_The_Transfer">
        <UNH_S010_Status_Of_The_Transfer>
            <UNH_0070_Sequence_Of_Transfers>
                <!-- Please insert the transformation instruction here -->
            </UNH_0070_Sequence_Of_Transfers>
        </UNH_S010_Status_Of_The_Transfer>
    </xsl:template>
    <!-- Template for 'BGM' -->
    <xsl:template name="BGM">
        <BGM>
            <idBGM>
                <!-- Please insert the transformation instruction here -->
            </idBGM>
            <xsl:call-template name="BGM_C002"/>
        </BGM>
    </xsl:template>
    <!-- Template for 'BGM_C002' -->
    <xsl:template name="BGM_C002">
        <BGM_C002>
            <BGM_1001_Document_Name_C>
                <!-- Please insert the transformation instruction here -->
            </BGM_1001_Document_Name_C>
        </BGM_C002>
    </xsl:template>
    <!-- Template for 'DTM' -->
    <xsl:template name="DTM">
        <DTM>
            <idDTM>
                <!-- Please insert the transformation instruction here -->
            </idDTM>
            <xsl:call-template name="DTM_C507"/>
        </DTM>
    </xsl:template>
    <!-- Template for 'DTM_C507' -->
    <xsl:template name="DTM_C507">
        <DTM_C507>
            <DTM_2005_Date_Qualif>
                <!-- Please insert the transformation instruction here -->
            </DTM_2005_Date_Qualif>
        </DTM_C507>
    </xsl:template>
    <!-- Template for 'NAD_Group' -->
    <xsl:template name="NAD_Group">
        <NAD_Group>
            <xsl:call-template name="NAD"/>
            <xsl:call-template name="Consignee"/>
        </NAD_Group>
    </xsl:template>
    <!-- Template for 'NAD' -->
    <xsl:template name="NAD">
        <NAD>
            <idNAD>
                <!-- Please insert the transformation instruction here -->
            </idNAD>
            <NAD_3035_Party_Qualif>
                <!-- Please insert the transformation instruction here -->
            </NAD_3035_Party_Qualif>
            <xsl:call-template name="NAD_C082"/>
            <xsl:call-template name="NAD_C058"/>
            <xsl:call-template name="NAD_C080"/>
            <xsl:call-template name="NAD_C059"/>
        </NAD>
    </xsl:template>
    <!-- Template for 'NAD_C082' -->
    <xsl:template name="NAD_C082">
        <NAD_C082>
            <NAD_3039_Party_ID_Ident>
                <!-- Please insert the transformation instruction here -->
            </NAD_3039_Party_ID_Ident>
        </NAD_C082>
    </xsl:template>
    <!-- Template for 'NAD_C058' -->
    <xsl:template name="NAD_C058">
        <NAD_C058>
            <NAD_3124_Name_and_Address_1>
                <!-- Please insert the transformation instruction here -->
            </NAD_3124_Name_and_Address_1>
        </NAD_C058>
    </xsl:template>
    <!-- Template for 'NAD_C080' -->
    <xsl:template name="NAD_C080">
        <NAD_C080>
            <NAD_3036_Party_Name>
                <!-- Please insert the transformation instruction here -->
            </NAD_3036_Party_Name>
        </NAD_C080>
    </xsl:template>
    <!-- Template for 'NAD_C059' -->
    <xsl:template name="NAD_C059">
        <NAD_C059>
            <NAD_3042_Street_and_NO>
                <!-- Please insert the transformation instruction here -->
            </NAD_3042_Street_and_NO>
        </NAD_C059>
    </xsl:template>
    <!-- Template for 'Consignee' -->
    <xsl:template name="Consignee">
        <Consignee>
            <xsl:call-template name="NAD_Cons"/>
            <xsl:call-template name="Article"/>
        </Consignee>
    </xsl:template>
    <!-- Template for 'NAD_Cons' -->
    <xsl:template name="NAD_Cons">
        <NAD_Cons>
            <idNAD_Cons_>
                <!-- Please insert the transformation instruction here -->
            </idNAD_Cons_>
            <NAD_Cons_3035_Party_Qualif>
                <!-- Please insert the transformation instruction here -->
            </NAD_Cons_3035_Party_Qualif>
            <xsl:call-template name="NAD_Cons_C082"/>
            <xsl:call-template name="NAD_Cons_C058"/>
            <xsl:call-template name="NAD_Cons_C080"/>
            <xsl:call-template name="NAD_Cons_C059"/>
        </NAD_Cons>
    </xsl:template>
    <!-- Template for 'NAD_Cons_C082' -->
    <xsl:template name="NAD_Cons_C082">
        <NAD_Cons_C082>
            <NAD_Cons_3039_Party_ID_Ident>
                <!-- Please insert the transformation instruction here -->
            </NAD_Cons_3039_Party_ID_Ident>
        </NAD_Cons_C082>
    </xsl:template>
    <!-- Template for 'NAD_Cons_C058' -->
    <xsl:template name="NAD_Cons_C058">
        <NAD_Cons_C058>
            <NAD_Cons_3124_Name_and_Address_1>
                <!-- Please insert the transformation instruction here -->
            </NAD_Cons_3124_Name_and_Address_1>
        </NAD_Cons_C058>
    </xsl:template>
    <!-- Template for 'NAD_Cons_C080' -->
    <xsl:template name="NAD_Cons_C080">
        <NAD_Cons_C080>
            <NAD_Cons_3036_Party_Name>
                <!-- Please insert the transformation instruction here -->
            </NAD_Cons_3036_Party_Name>
        </NAD_Cons_C080>
    </xsl:template>
    <!-- Template for 'NAD_Cons_C059' -->
    <xsl:template name="NAD_Cons_C059">
        <NAD_Cons_C059>
            <NAD_Cons_3042_Street_and_NO>
                <!-- Please insert the transformation instruction here -->
            </NAD_Cons_3042_Street_and_NO>
        </NAD_Cons_C059>
    </xsl:template>
    <!-- Template for 'Article' -->
    <xsl:template name="Article">
        <Article>
            <xsl:call-template name="ARD"/>
            <xsl:call-template name="PDN"/>
            <xsl:call-template name="DEL"/>
            <xsl:call-template name="FTX"/>
        </Article>
    </xsl:template>
    <!-- Template for 'ARD' -->
    <xsl:template name="ARD">
        <ARD>
            <idARD>
                <!-- Please insert the transformation instruction here -->
            </idARD>
            <xsl:call-template name="ARD_Article_Identification"/>
            <xsl:call-template name="ARD_Order_Identification"/>
        </ARD>
    </xsl:template>
    <!-- Template for 'ARD_Article_Identification' -->
    <xsl:template name="ARD_Article_Identification">
        <ARD_Article_Identification>
            <ARD_7304_Buyer_Article_No>
                <!-- Please insert the transformation instruction here -->
            </ARD_7304_Buyer_Article_No>
        </ARD_Article_Identification>
    </xsl:template>
    <!-- Template for 'ARD_Order_Identification' -->
    <xsl:template name="ARD_Order_Identification">
        <ARD_Order_Identification>
            <ARD_1022_Order_Contract_No>
                <!-- Please insert the transformation instruction here -->
            </ARD_1022_Order_Contract_No>
        </ARD_Order_Identification>
    </xsl:template>
    <!-- Template for 'PDN' -->
    <xsl:template name="PDN">
        <PDN>
            <idPDN>
                <!-- Please insert the transformation instruction here -->
            </idPDN>
            <xsl:call-template name="PDN_Despatch_Note"/>
        </PDN>
    </xsl:template>
    <!-- Template for 'PDN_Despatch_Note' -->
    <xsl:template name="PDN_Despatch_Note">
        <PDN_Despatch_Note/>
    </xsl:template>
    <!-- Template for 'DEL' -->
    <xsl:template name="DEL">
        <DEL>
            <idDEL>
                <!-- Please insert the transformation instruction here -->
            </idDEL>
            <xsl:call-template name="DEL_Date_Time_Periods"/>
            <xsl:call-template name="DEL_Qty_Status_Delivery_Type"/>
        </DEL>
    </xsl:template>
    <!-- Template for 'DEL_Date_Time_Periods' -->
    <xsl:template name="DEL_Date_Time_Periods">
        <DEL_Date_Time_Periods/>
    </xsl:template>
    <!-- Template for 'DEL_Qty_Status_Delivery_Type' -->
    <xsl:template name="DEL_Qty_Status_Delivery_Type">
        <DEL_Qty_Status_Delivery_Type>
            <DEL_6060_Qty>
                <!-- Please insert the transformation instruction here -->
            </DEL_6060_Qty>
        </DEL_Qty_Status_Delivery_Type>
    </xsl:template>
    <!-- Template for 'FTX' -->
    <xsl:template name="FTX">
        <FTX>
            <idFTX>
                <!-- Please insert the transformation instruction here -->
            </idFTX>
            <xsl:call-template name="Free_text"/>
        </FTX>
    </xsl:template>
    <!-- Template for 'Free_text' -->
    <xsl:template name="Free_text">
        <Free_text>
            <Free_text_line>
                <!-- Please insert the transformation instruction here -->
            </Free_text_line>
        </Free_text>
    </xsl:template>
    <!-- Template for 'UNT' -->
    <xsl:template name="UNT">
        <UNT>
            <idUNT>
                <!-- Please insert the transformation instruction here -->
            </idUNT>
            <UNT_0074_Number_Of_Segments>
                <!-- Please insert the transformation instruction here -->
            </UNT_0074_Number_Of_Segments>
            <UNT_0062_Message_Ref_Number>
                <!-- Please insert the transformation instruction here -->
            </UNT_0062_Message_Ref_Number>
        </UNT>
    </xsl:template>
    <!-- Template for 'UNZ' -->
    <xsl:template name="UNZ">
        <UNZ>
            <idUNZ>
                <!-- Please insert the transformation instruction here -->
            </idUNZ>
            <UNZ_0036_Inter_Control_Count>
                <!-- Please insert the transformation instruction here -->
            </UNZ_0036_Inter_Control_Count>
            <UNZ_0020_Inter_Control_Ref>
                <!-- Please insert the transformation instruction here -->
            </UNZ_0020_Inter_Control_Ref>
        </UNZ>
    </xsl:template>
</xsl:stylesheet>
