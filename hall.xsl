<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Event Halls</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        background-color: pink;
                        text-align: center;
                    }
                    table {
                        margin: auto;
                        border-collapse: collapse;
                        width: 80%;
                    }
                    th, td {
                        border: 1px solid black;
                        padding: 8px;
                        text-align: center;
                    }
                    th {
                        background-color: #f2a1c2;
                    }
                    tr:nth-child(even) {
                        background-color: #f9f9f9;
                    }
                </style>
            </head>
            <body>
                <h1>Event Halls</h1>
                <table>
                    <tr>
                        <th>Name Hall</th>
                        <th>State</th>
                        <th>City</th>
                        <th>Poscode</th>
                        <th>Price (RM)</th>
                        <th>Capacity</th>
                    </tr>
					
                    <xsl:for-each select="halls/hall">
					<tr>
						<td>
						<xsl:value-of select="name"/>
						</td>
                        <td>
						<xsl:value-of select="state" />
						</td>
                        <td>
						<xsl:value-of select="city" />
						</td>
                        <td>
						<xsl:value-of select="poscode" />
						</td>							
                        <td>
						<xsl:value-of select="price" />
						</td>
                        <td>
						<xsl:value-of select="capacity" />
						</td>                        
                    </tr>					
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
