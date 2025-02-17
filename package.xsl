<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <html lang="en">
        
            <meta charset="utf-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
            <title>Eventopia Packages</title>
            <style>
                body {
                    font-family: Arial, sans-serif;
                    background-color: #f8f8f8;
                    color: #333;
                    margin: 0;
                    padding: 0;
                }
                header {
                    background-color: #996633;
                    color: white;
                    text-align: center;
                    padding: 20px;
                }
                header h1 {
                    margin: 0;
                    font-size: 2.5em;
                }
                header h2 {
                    margin: 10px 0 0;
                    font-size: 1.2em;
                }
                table {
                    width: 90%;
                    margin: 20px auto;
                    border-collapse: collapse;
                    background-color: #fff;
                }
                th, td {
                    border: 1px solid #ddd;
                    padding: 8px;
                    text-align: center;
                }
                th {
                    background-color: #cc9966;
                    color: white;
                    font-weight: bold;
                }
                tr:nth-child(even) {
                    background-color: #f2f2f2;
                }
                tr:hover {
                    background-color: #ddd;
                }
                footer {
                    text-align: center;
                    padding: 10px;
                    background-color: #333;
                    color: white;
                    font-size: 0.9em;
                }
            </style>
       
        <body>
            <header>
                <h1>Eventopia</h1>
                <h2>Our Event Packages</h2>
            </header>

            <main>
                <table>
                    <tr>
                        <th>Package Name</th>
                        <th>Price (RM)</th>
                        <th>Description</th>
                        <th>Included Details</th>
                    </tr>
                    <xsl:for-each select="packages/package">
                        <tr>
                            <td><xsl:value-of select="name" /></td>
                            <td><xsl:value-of select="price" /></td>
                            <td><xsl:value-of select="description" /></td>
                            <td>
                                <ul style="list-style: none; padding: 0; margin: 0; text-align: left;">
                                    <xsl:for-each select="details/detail">
                                        <li><xsl:value-of select="." /></li>
                                    </xsl:for-each>
                                </ul>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </main>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
