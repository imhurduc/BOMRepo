<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="2.0" exclude-result-prefixes="xs " xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns="http://schemas.xmlsoap.org/soap/envelope/" xmlns:ns0="http://service.arno.com/MathServiceNoPolicy">
    <!-- Template for '/' -->
    <xsl:template match="/">
        <Envelope>
            <Body>
                <ns0:add>
                        <ns0:a>
                            <xsl:value-of select="'100'"/>
                        </ns0:a>
                   
                        <ns0:b>
                            <xsl:value-of select="'20'"/>
                        </ns0:b>
                </ns0:add>
            </Body>
        </Envelope>
    </xsl:template>
</xsl:stylesheet>