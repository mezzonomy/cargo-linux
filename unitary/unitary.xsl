<?xml version='1.0' encoding='iso-8859-1'?>
<!--Document short description: 


     Low level element propagation for unitary testing


	                         (c) 2012-2014, Mezzonomy
	                         All rights reserved
     
     Author: mezzonomy@orange.fr
-->

<xsl:stylesheet
	version      = "1.0"
	xmlns:xsl    = "http://www.w3.org/1999/XSL/Transform"
    xmlns:isl    = "http://www.mezzonomy.com/interface-stylesheet-language"
	xmlns:wdg    = "http://www.mezzonomy.com/widget"
	xmlns:ins    = "http://www.mezzonomy.com/insiders"
	xmlns:on     = "http://www.mezzonomy.com/events"
	xmlns:lyt    = "http://www.mezzonomy.com/layout"
	xmlns:c-p    = "http://www.mezzonomy.com/card-print"
	xmlns:html   = "http://www.w3.org/1999/xhtml"
>

<xsl:import href="cargo/language.xsl"/>
<xsl:import href="cargo/help.xsl"/>

<xsl:template match="text()"/>
<xsl:template match="wdg:Interface">
  <xsl:copy>
    <xsl:copy-of select="@*"/>
    <xsl:apply-templates mode="menu" select="preceding::isl:menus"/>
    <xsl:apply-templates mode="unitary"/>
    <xsl:apply-templates mode="help" select="preceding::isl:help"/>
  </xsl:copy>
</xsl:template>

<!--
  ::
  ::
  -->

<xsl:template match="wdg:*" mode="unitary">
	<xsl:copy>
		<xsl:copy-of select="@*"/>
		<xsl:apply-templates mode="unitary"/>
	</xsl:copy>
</xsl:template>
<xsl:template match="c-p:*"  mode="unitary">
	<xsl:copy>
		<xsl:copy-of select="@*"/>
		<xsl:apply-templates mode="unitary"/>
	</xsl:copy>
</xsl:template>
<xsl:template match="lyt:*"  mode="unitary">
	<xsl:copy>
		<xsl:copy-of select="@*"/>
		<xsl:apply-templates mode="unitary"/>
	</xsl:copy>
</xsl:template>
<xsl:template match="ins:*"  mode="unitary">
	<xsl:copy>
		<xsl:copy-of select="@*"/>
		<xsl:apply-templates mode="unitary"/>
	</xsl:copy>
</xsl:template>
<xsl:template match="on:*" mode="unitary">
	<xsl:copy>
		<xsl:copy-of select="@*"/>
		<xsl:apply-templates mode="unitary"/>
	</xsl:copy>
</xsl:template>
<xsl:template match="html:*" mode="unitary">
  <xsl:copy>
    <xsl:copy-of select="@*"/>
    <xsl:apply-templates mode="unitary"/>
  </xsl:copy>
</xsl:template>

</xsl:stylesheet>

