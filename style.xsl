<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:a="https://maya.technical.com"
    xmlns:b="https://acet.edu.in"
    xmlns:c="https://nepal.com">

    <xsl:template match="/">

        <html>
            <head>
                <title>This is first adding</title>

                <style>
                    table {
                        border: solid 2px;
                        width: 340px;
                    }

                    tr {
                        background-color: lightgray;
                    }

                    th {
                        border: solid gray 2px;
                    }
                </style>
            </head>

            <body>

                <table>
                    <tr>
                        <th>ID</th>
                        <th>Fname</th>
                        <th>Lname</th>
                        <th>Email</th>
                    </tr>

                    <xsl:for-each select="/personalDetail/user">

                        <xsl:sort select="a:fname | b:fname | c:fname" />

                        <tr>
                            <td>
                                <xsl:value-of select="@id"/>
                            </td>

                            <td>
                                <xsl:choose>
                                    <xsl:when test="a:fname">
                                        <xsl:value-of select="a:fname"/>
                                    </xsl:when>
                                    <xsl:when test="b:fname">
                                        <xsl:value-of select="b:fname"/>
                                    </xsl:when>
                                    <xsl:when test="c:fname">
                                        <xsl:value-of select="c:fname"/>
                                    </xsl:when>
                                </xsl:choose>
                            </td>

                            <td>
                                <xsl:choose>
                                    <xsl:when test="a:lname">
                                        <xsl:value-of select="a:lname"/>
                                    </xsl:when>
                                    <xsl:when test="b:lname">
                                        <xsl:value-of select="b:lname"/>
                                    </xsl:when>
                                    <xsl:when test="c:lname">
                                        <xsl:value-of select="c:lname"/>
                                    </xsl:when>
                                </xsl:choose>
                            </td>

                            <td>
                                <xsl:choose>
                                    <xsl:when test="a:email">
                                        <xsl:value-of select="a:email"/>
                                    </xsl:when>
                                    <xsl:when test="b:email">
                                        <xsl:value-of select="b:email"/>
                                    </xsl:when>
                                    <xsl:when test="c:email">
                                        <xsl:value-of select="c:email"/>
                                    </xsl:when>
                                </xsl:choose>
                            </td>
                        </tr>

                    </xsl:for-each>

                </table>

            </body>
        </html>

    </xsl:template>

</xsl:stylesheet>