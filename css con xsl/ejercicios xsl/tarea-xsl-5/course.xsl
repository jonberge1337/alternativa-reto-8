<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
	<html>
	  <head>
		<title>ejercicio 5</title>
	  </head>
	  <body>
		<h1><xsl:value-of select="course/head/title"/></h1>
		<p>Course Number: <xsl:value-of select="course/body/course_num"/></p>
		<p>Course Version: <xsl:value-of select="course/body/course_version"/></p>
		<p>Course Length: <xsl:value-of select="course/body/duration"/></p>
		<p>Price: <xsl:value-of select="course/body/price"/></p>
		<p>Delivery Method: <xsl:value-of select="course/body/delivery_method"/></p>
		<h3>Delivery Description</h3>
		<p><xsl:value-of select="course/body/details/delivery_description/para"/></p>
		<h3>Requirements</h3>
		<ul>
		  <li><xsl:value-of select="course/body/details/requirements/requirement"/></li>
		</ul>
		<h3>Prerequisites</h3>
		<ul>
		  <xsl:for-each select="course/body/details/prerequisites/prerequisite">
			<li><xsl:value-of select="."/></li>
		  </xsl:for-each>
		</ul>
		<h3>Followups</h3>
		<ul>
		  <xsl:for-each select="//followup">
			<li><xsl:value-of select="."/></li>
		  </xsl:for-each>
		</ul>
		<h3>Objectives</h3>
		<ul>
		  <xsl:for-each select="//objective">
			<li><xsl:value-of select="."/></li>
		  </xsl:for-each>
		</ul>
		<h3>Course Overview</h3>
		<ul>
		  <xsl:for-each select="//overview/para">
			<p><xsl:value-of select="."/></p>
		  </xsl:for-each>
		</ul>
		<h3>Course Content</h3>
		<h5>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<xsl:value-of select="//module_title"/></h5>
		<ul>
		  <xsl:for-each select="//module_topic">
			<li><xsl:value-of select="."/></li>
		  </xsl:for-each>
		</ul>
		<h5>Modification History</h5>
		
	  </body>
	</html>
  </xsl:template>
</xsl:stylesheet>
