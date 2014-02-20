<%@ page language="C#" autoeventwireup="true" inherits="xpath, App_Web_xpath.aspx.72cec4e5" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<head id="Head1" runat="server">
<title>XML VALIDATOR</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>
<link href="dtdstyle.css" rel="stylesheet" type="text/css" />
<link rel="icon" href="http://www.erlsindia.co.in/images/favicon.ico" type="image/vnd.microsoft.icon"/><script language="javascript" src="http://www.erlsindia.co.in/js/DisableCtrlU.js"></script><script type="text/javascript">document.oncontextmenu=new Function("return false");</script></head>

<body bgcolor="White">
<script language="javascript">
var transformedwindow;

function doTransform()
{
if ((document.frmTransform.TxtXMLFileName.value).length == 0) 
{
	alert("Invalid XML FileName");
	return;
}

if ((document.frmTransform.TxtXSLFileName.value).length == 0) 
{
	alert("Invalid XSL FileName");
	return;
}

var xslt = new ActiveXObject("Msxml2.XSLTemplate.4.0");
var xslDoc = new ActiveXObject("Msxml2.FreeThreadedDOMDocument.4.0");
var xslProc;
xslDoc.async = false;
xslDoc.load(document.frmTransform.TxtXSLFileName.value);
xslt.stylesheet = xslDoc;
var xmlDoc = new ActiveXObject("Msxml2.DOMDocument.4.0");
xmlDoc.async = false;
xmlDoc.load(document.frmTransform.TxtXMLFileName.value);
xslProc = xslt.createProcessor();
xslProc.input = xmlDoc;
xslProc.transform();
transformedwindow=window.open('Transformed.aspx','_new','location=0,status=1,toolbar=0,menuBar=0,scrollBars=0,directories=0,resizable=0,width=600,height=600');
var tmpXMLOutput = xslProc.output;
transformedwindow.document.write('<HTML><TITLE>Transformed Output</Title><BODY>'   + tmpXMLOutput + '</BODY></HTML>');
}
function doReset()
{
document.frmTransform.TxtXSLFileName.value="";
document.frmTransform.TxtXMLFileName.value="";
if (!(typeof transformedwindow == "undefined"))
    transformedwindow.close();
}
</script>
<table width="100%" border="0" align="center" height="86">
    <tr> 
      <td style="width: 358px; height: 96px">
      <img style="width: 225px" align="left" src="images/Validator/xpathlogo.gif" />
      </td>
      <td style="height: 96px">
      <img align="right" src="images/Validator/erlscorlogo.jpg" />
      </td>
    </tr>
    </table>
    <div align="justify" style="text-align: center"><hr style="height: 1px; color: #000000;" />
        <font face="Verdana, Arial, Helvetica, sans-serif" size="5"><b><span style="text-align:center">XSLT AND XPATH Validator</span></b></font>
        <hr style="height: 1px; color: #000000;" />
    </div>
<p align="center">
    &nbsp;</p>
<form name="frmTransform" method="post" action="">
  <table width="75%" border="0" align="center" height="86">
    <tr> 
      <td height="25"> 
        <div align="center"><b>Enter the XML File Name:</b></div>
      </td>
      <td height="25"> 
        <input type="text" name="TxtXMLFileName" size="40">
        &nbsp; 
      </td>
    </tr>
    <tr> 
      <td height="25"> 
        <div align="center"><b>Enter the XSL File Name:</b></div>
      </td>
      <td height="25"> 
        <input type="text" name="TxtXSLFileName" size="40">
        &nbsp; 
      </td>
    </tr>
    <tr> 
      <td colspan="2" height="24"> 
        <div align="left" style="width: 681; height: 19"></div>
      </td>
    </tr>
    <tr> 
      <td height="24"> 
      </td>
      <td height="24"> 
        <font face="Verdana, Arial, Helvetica, sans-serif" size="2"><input type="button" onclick="javascript:doTransform()" value="Transform">&nbsp;
        <input type="button" onclick="javascript:doReset()" value="Reset"></font>
      </td>
    </tr>
  </table>
    <p> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"><a href="../download/home.aspx">Home</a>
  <a href="default.aspx">Back</a></font></p>
  <table width="100%" border="0" cellspacing="0" cellpadding="0" style="height: 1px">
 <tr>
    <td valign="top" class="copy" style="height: 31px; width: 3432px;">
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label> | <a href="../corporate/policy.aspx">Erls Policy</a><br/><a class="fto1">Developed</a> by <a href="../corporate/profile.aspx" class="fto1">Erls Corporation</a></td>	
 </tr>  
</table>
</form>        
    </body>
</html>