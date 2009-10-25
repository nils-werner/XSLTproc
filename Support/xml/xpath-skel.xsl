<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml"
	encoding="UTF-8"
	indent="yes" />

<xsl:template match="/">
	<xsl:apply-templates select="placeholder" />
</xsl:template>


<xsl:template match="*">
	<xsl:copy-of select="." />
</xsl:template>

<xsl:template match="@*">
	<xsl:value-of select="." />
</xsl:template>


</xsl:stylesheet>