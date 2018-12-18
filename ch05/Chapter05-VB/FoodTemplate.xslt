<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:template match="/">
        <xsl:for-each select="ourmenu/food">
            <DIV STYLE="background-color:navy; color:white; padding:4px">
                <SPAN STYLE="font-weight:bold; color:white">
                    <xsl:value-of select="name"/>
                </SPAN>
                - <xsl:value-of select="price"/>
            </DIV>
            <DIV STYLE="margin-left:20px; margin-bottom:1em; font-size:10pt">
                <xsl:value-of select="description"/>
            </DIV>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>