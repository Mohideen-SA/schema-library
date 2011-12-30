<?xml version="1.0" encoding="ISO-8859-1"?><xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns="http://www.opentravel.org/OTA/2003/05" targetNamespace="http://www.opentravel.org/OTA/2003/05" version="1.0"><!-- Duplicate --><xsl:template match="//xs:complexType[@name='CacheType']/xs:sequence/xs:element[@name='TimeSpan']/xs:complexType/xs:complexContent/xs:extension[@base='TimeSpanType']"><xs:extension base="TimeSpanTypeNotif">    <xsl:apply-templates /></xs:extension></xsl:template><!-- Duplicate --><xsl:template match="//xs:complexType[@name='TimeSpanType'][xs:attribute[@name='End']/xs:simpleType]"><xs:complexType name="TimeSpanTypeNotif">    <xsl:apply-templates /></xs:complexType></xsl:template><!-- Duplicate --><xsl:template match="//xs:complexType[@name='CacheType'][xs:sequence/xs:element[@type='TimeSpanType']]"><xs:complexType name="CacheTypeChange">    <xsl:apply-templates /></xs:complexType></xsl:template><!-- Duplicate --><xsl:template match="//xs:element[@name='OTA_HotelCacheChangeRS']//xs:element[@name='CacheChangeInfo']"><xs:element name="CacheChangeInfo" type="CacheTypeChange" minOccurs="0" maxOccurs="unbounded">                       <xsl:apply-templates /></xs:element>                   </xsl:template><!-- This is a duplicate definition that is never used (in GroundCancelRS) --><xsl:template match="//xs:complexType[@name='VehicleCancelRSAdditionalInfoType'][../xs:element[@name='OTA_GroundCancelRS']]"><xs:complexType name="GroundCancelRSAdditionalInfoType">    <xsl:apply-templates /></xs:complexType>                   </xsl:template><!-- TODO Fix this - This is probably a JiBX bug (found in VehModifyRS.xsl) --><xsl:template match="//xs:list[@itemType='TransactionStatusType']"><xs:list itemType="xs:string">    <xsl:apply-templates /></xs:list>                   </xsl:template><!-- Declare namespace if not --><xsl:template match="//xs:schema[not(@targetNamespace='http://www.opentravel.org/OTA/2003/05')]">  <xsl:copy>    <xsl:for-each select="@*">      <xsl:attribute name="{name()}">        <xsl:value-of select="."/>      </xsl:attribute>    </xsl:for-each>      <xsl:attribute name="targetNamespace">http://www.opentravel.org/OTA/2003/05</xsl:attribute>  	<xsl:apply-templates />  </xsl:copy></xsl:template><xsl:template match="*">  <xsl:copy>    <xsl:for-each select="@*">      <xsl:attribute name="{name()}">        <xsl:value-of select="."/>      </xsl:attribute>    </xsl:for-each>  	<xsl:apply-templates />  </xsl:copy></xsl:template></xsl:stylesheet>