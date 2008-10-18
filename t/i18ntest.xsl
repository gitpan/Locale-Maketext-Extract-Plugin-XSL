<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
    xmlns:i18n="http://www.3united.com/coin/curator/i18n"
    extension-element-prefixes="i18n">

    <xsl:template match="/document">
        <xsl:value-of select="i18n:loc(&quot;Could not retrieve Object '[_1]'.&quot;, 'testobject')"/>
    </xsl:template>

</xsl:stylesheet>