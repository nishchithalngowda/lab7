<?xml version="1.0" encoding="iso-8859-1"?><!-- DWXMLSource="Sports.xml" -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<style>
table {
  border-collapse: collapse;
  width: 80%;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #FFFFFF}

th {
  background-color: #6F1521;
  color: white;
}
h1 {
  font-family: Trattatello, fantasy;

}
.header {
  background-color: #6F1521;
  text-align: center;
  padding:inherit;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>
<title>compatible Blood Type Donars</title>
</head>
<div class="header">
  <h1><font color="#FFFFFF" size="+4">Blood Bank Management System</font></h1>
</div>
 <center><img src="slide1.jpg" /></center>
<body>
 <h2 align="center"><font><u><b>compatible Blood Type Donars</b></u></font></h2>
   <table align="center" border="1" bordercolor="#000099">
   <tr>
    <th >Blood_Type</th>
    <th >Donate_Blood_To</th>
    <th >Recieve_Blood_From</th>

   </tr>
    <xsl:for-each select="bloodgroup/details">
   <tr>
    <td ><xsl:value-of select="Blood_Type"/></td>
    <td ><xsl:value-of select="Donate_Blood_To"/></td>
    <td ><xsl:value-of select="Recieve_Blood_From"/></td>

   </tr>
    </xsl:for-each>
    </table><br />
<center>

<h2>Next Blood Camp Will Conduct By:</h2>
<p id="state"></p>
<p id="location"></p>
<p id="date"></p>
<p id="start_time"></p>
<p id="contactus"></p>



<script>
var parser, xmlDoc;
var text = "<EventDetails><ed>" +
"<state>Karnataka,Banglore</state>" +
"<location>Christ University,Central Campus</location>" +
"<date>29 November 2021</date>" +
"<start_time>10.00AM[IST]</start_time>" +
"<contactus>nishchitha.ln@cs.christuniversity.in</contactus>" +
"</ed></EventDetails>";

if (window.DOMParser) {
  parser = new DOMParser();
  xmlDoc = parser.parseFromString(text,"text/xml");
} else {
  xmlDoc = new ActiveXObject("Microsoft.XMLDOM");
  xmlDoc.async = false;
  xmlDoc.loadXML(text);
}

document.getElementById("state").innerHTML =
xmlDoc.getElementsByTagName("state")[0].childNodes[0].nodeValue;
document.getElementById("location").innerHTML =
xmlDoc.getElementsByTagName("location")[0].childNodes[0].nodeValue;
document.getElementById("date").innerHTML =
xmlDoc.getElementsByTagName("date")[0].childNodes[0].nodeValue;
document.getElementById("start_time").innerHTML =
xmlDoc.getElementsByTagName("start_time")[0].childNodes[0].nodeValue;
document.getElementById("contactus").innerHTML =
xmlDoc.getElementsByTagName("contactus")[0].childNodes[0].nodeValue;




</script>
</center>
</body>
</html>

</xsl:template>
</xsl:stylesheet>
