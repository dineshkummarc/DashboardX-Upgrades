<%@ page language="C#" autoeventwireup="true" inherits="dtd, App_Web_dtd.aspx.72cec4e5" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
<title>XML VALIDATOR</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>
<link href="dtdstyle.css" rel="stylesheet" type="text/css" />
<link rel="icon" href="http://www.erlsindia.co.in/images/favicon.ico" type="image/vnd.microsoft.icon"/><script language="javascript" src="http://www.erlsindia.co.in/js/DisableCtrlU.js"></script><script type="text/javascript">document.oncontextmenu=new Function("return false");</script></head>
<body bgcolor="White">
<script Language="javascript" type="text/javascript">
var transformedwindow;
function doValidate()
{
	if ((document.frmTransform.TxtXMLFileName.value).length == 0) 
	{
		alert("Invalid XML FileName");
		return;
	}

    var xmldoc= new ActiveXObject("Msxml2.DOMDocument.4.0");
    xmldoc.validateOnParse = true;
    xmldoc.load(document.frmTransform.TxtXMLFileName.value);
    var error=xmldoc.parseError;
    transformedwindow=window.open('Transformed.aspx','_new','location=0,status=1,toolbar=0,menuBar=0,scrollBars=0,directories=0,resizable=0,width=600,height=600');
    if(error!="")
    {
     transformedwindow.document.write('<HTML><TITLE>DTD Validator</Title><BODY><P><b>Error Validating the document</b></p><br/>');
     transformedwindow.document.write('<b>Error URL: </b><br/>' + error.url + '<br/>');
     transformedwindow.document.write('<b>Error Line: </b><br/>' + error.line + '<br/>');
     transformedwindow.document.write('<b>Error Position: </b><br/>' + error.linepos + '<br/>');
     transformedwindow.document.write('<b>Error Reason: </b><br/>' + error.reason + '<br/>');   
     transformedwindow.document.write('</BODY></HTML>');
     }
     else
     {
	transformedwindow.document.write('<HTML><TITLE>DTD Validator</Title><BODY><b>No Error</b><br/>');
	transformedwindow.document.write('</BODY></HTML>');
     }
}

function doReset()
{
document.frmTransform.TxtXMLFileName.value="";
if (!(typeof transformedwindow == "undefined"))
    transformedwindow.close();
}

</script>
   <table width="100%" border="0" align="center" height="86">
    <tr> 
      <td style="width: 358px; height: 96px">
      <img style="width: 225px" align="left" src="images/Validator/xmllogo.gif" />
      </td>
      <td style="height: 96px">
      <img align="right" src="images/Validator/erlscorlogo.jpg" />
      </td>
    </tr>
    </table>
   <div style="text-align: center"> 
    <hr style="height: 1px; color: #000000;" />
        <font face="Verdana, Arial, Helvetica, sans-serif" size="5"><b><span style="text-align:center">
            XML Validator</span></b></font>
        <hr style="height: 1px; color: #000000;" />
    </div>
    <div style="text-align: center">
    <p>&nbsp;</p>
<form name="frmTransform" method="post" action="">
  <table border="0" align="middle">
    <tr> 
      <td> 
        <b>Enter the XML File Name:</b><br/>
      </td>
      <td> 
        <font face="Verdana, Arial, Helvetica, sans-serif" size="2"></font>   
        <input type="text" name="TxtXMLFileName" size="40"></td>
      </tr>
    <tr> 
      <td width="212" height="27"> </td>
      <td colspan="3" height="27" width="492"> <font face="Verdana, Arial, Helvetica, sans-serif; text-align:left" size="2">
        <input type="button" onClick="javascript:doValidate()" value="Validate"><input type="button" onClick="javascript:doReset()" value="Reset"></font></td>
    </tr>
    <tr> 
      <td colspan="4" height="40" width="659"> 
        <div align="left"></div>
        <div align="left">
            &nbsp;</div>
      </td>
    </tr>
  </table>
  <p> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> </font></p>
</form> 
</div>
<p> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"><a href="../download/home.aspx">Home</a>
  <a href="default.aspx">Back</a></font></p>
  <table width="100%" border="0" cellspacing="0" cellpadding="0" style="height: 1px">
 <tr>
    <td valign="top" class="copy" style="height: 31px; width: 3432px;">
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label> | <a href="../corporate/policy.aspx">Erls Policy</a><br/><a class="fto1">Developed</a> by <a href="../corporate/profile.aspx" class="fto1">Erls Corporation</a></td>	
 </tr>  
</table>   
    </body>
</html>


