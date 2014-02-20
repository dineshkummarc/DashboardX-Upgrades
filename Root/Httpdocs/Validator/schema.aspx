<%@ page language="C#" autoeventwireup="true" inherits="schema, App_Web_schema.aspx.72cec4e5" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<head id="Head1" runat="server">
<title>XML VALIDATOR</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>
<link href="dtdstyle.css" rel="stylesheet" type="text/css" />
<link rel="icon" href="http://www.erlsindia.co.in/images/favicon.ico" type="image/vnd.microsoft.icon"/><script language="javascript" src="http://www.erlsindia.co.in/js/DisableCtrlU.js"></script><script type="text/javascript">document.oncontextmenu=new Function("return false");</script></head>

<body bgcolor="White">
<script Language="javascript">
var transformedwindow;

function doValidate()
{
if ((document.frmTransform.TxtXMLFileName.value).length == 0) 
{
	alert("Invalid XML FileName");
	return;
}

if ((document.frmTransform.TxtXSDFileName.value).length == 0) 
{
	alert("Invalid XSD FileName");
	return;
}

var xmlDoc = new ActiveXObject("Msxml2.FreeThreadedDOMDocument.4.0");
xmlDoc.async = false;
xmlDoc.load(document.frmTransform.TxtXMLFileName.value);
var namespace=xmlDoc.documentElement.namespaceURI;
xmlDoc.validateOnParse=true
var xsdschemacache = new ActiveXObject("Msxml2.XMLSchemaCache.4.0");
xsdschemacache.add(namespace,document.frmTransform.TxtXSDFileName.value);
xmlDoc.schemas=xsdschemacache;
xmlDoc.load(document.frmTransform.TxtXMLFileName.value);
var error=xmlDoc.parseError;
transformedwindow=window.open('Transformed.aspx','_new','location=0,status=1,toolbar=0,menuBar=0,scrollBars=0,directories=0,resizable=0,width=600,height=600');
 if(error!="")
    {
     transformedwindow.document.write('<HTML><TITLE>Schema Validator</Title><BODY><P><b>Error Validating the document</b></p><br/>');
     transformedwindow.document.write('<b>Error URL: </b><br/>' + error.url + '<br/>');
     transformedwindow.document.write('<b>Error Line: </b><br/>' + error.line + '<br/>');
     transformedwindow.document.write('<b>Error Position: </b><br/>' + error.linepos + '<br/>');
     transformedwindow.document.write('<b>Error Reason: </b><br/>' + error.reason + '<br/>');   
     transformedwindow.document.write('</BODY></HTML>');
     }
     else
     {
	transformedwindow.document.write('<HTML><TITLE>Schema Validator</Title><BODY><b>No Error </b><br/>');
	transformedwindow.document.write('</BODY></HTML>');
     }
}

function doReset()
{
document.frmTransform.TxtXSDFileName.value="";
document.frmTransform.TxtXMLFileName.value="";
if (!(typeof transformedwindow == "undefined"))
    transformedwindow.close();
}
</script>
    <table width="100%" border="0" align="center" height="86">
    <tr> 
      <td style="width: 358px; height: 96px">
      <img style="width: 225px" align="left" src="images/Validator/xsltlogo.gif" />
      </td>
      <td style="height: 96px">
      <img align="right" src="images/Validator/erlscorlogo.jpg" />
      </td>
    </tr>
    </table>
    <div align="justify" style="text-align: center"><hr style="height: 1px; color: #000000;" />
        <font face="Verdana, Arial, Helvetica, sans-serif" size="5"><b><span style="text-align:center">
            XML AND XSD Validator</span></b></font>
        <hr style="height: 1px; color: #000000;" />
        <br />
    </div>
<form name="frmTransform" method="post" action="">
  <table width="75%" border="0" align="center">
    <tr> 
      <td> 
        <b>Enter the XML File Name:</b>
      </td>
      <td> 
        <input type="text" name="TxtXMLFileName" size="40">
      </td>
    </tr>
    <tr> 
      <td> 
        <b>Enter the XSD File Name:</b> 
      </td>
      <td> 
        <input type="text" name="TxtXSDFileName" size="40">
      </td>
    </tr>
    <tr> 
      <td> 
      </td>
      <td> 
        <font face="Verdana, Arial, Helvetica, sans-serif" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="button" onclick="javascript:doValidate()" value="Validate">&nbsp;&nbsp;&nbsp;
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

