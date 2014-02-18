<%@ page language="C#" autoeventwireup="true" inherits="loading, App_Web_loading.aspx.cdcab7d2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<title>Please Wait Loading</title>
<meta http-equiv="window-target" content="_top" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>
<link href="css/loadingstyle.css" rel="stylesheet" type="text/css" />
<link href="css/jquery-ui-1.8.16.custom.css" rel="stylesheet" type="text/css"/>
<link rel="icon" href="http://www.erlsindia.co.in/images/favicon.ico" type="image/vnd.microsoft.icon"/><script language="javascript" src="http://www.erlsindia.co.in/js/DisableCtrlU.js"></script><script type="text/javascript">document.oncontextmenu=new Function("return false");</script></head>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>

<style type="text/css">
        #process1{
        font-size:12px;
        font-family:Georgia, verdana;
        width: 319px;
        color: green;
    }
    </style>

   <script type="text/javascript">
        $(function() {
            var cnt = 0;
            var counter = setInterval(function() {
                if (cnt < 14)
				{
                    if(cnt == 1)
					$('#process1').html("[][][]");
                    if(cnt == 2)
					$('#process1').html("[][][][][][]");
					if(cnt == 3)
					$('#process1').html("[][][][][][][][][]");
					if(cnt == 4)
					$('#process1').html("[][][][][][][][][][][][]");
					if(cnt == 5)
					$('#process1').html("[][][][][][][][][][][][][][][]");
					if(cnt == 6)
					$('#process1').html("[][][][][][][][][][][][][][][][][][]");
					if(cnt == 7)
					$('#process1').html("[][][][][][][][][][][][][][][][][][][][][]");
					if(cnt == 8)
					$('#process1').html("[][][][][][][][][][][][][][][][][][][][][][][][]");
					if(cnt == 9)
					$('#process1').html("[][][][][][][][][][][][][][][][][][][][][][][][][][][]");
					if(cnt == 10)
					$('#process1').html("[][][][][][][][][][][][][][][][][][][][][][][][][][][][][][]");
					if(cnt == 11)
					$('#process1').html("[][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][]");					
					if(cnt == 14)
					$('#process1').html("Redirecting to New Page");
                    cnt++;
                }
                else {
                    clearInterval(counter);
					window.parent.location = "login.aspx";
                }
            }, 1000);
        });
    </script>

<body style="text-align:center; vertical-align:middle; margin-top:15%;">

<div class="example">
        <center><img src="images/erlslogo.jpg" style="height: 129px" /><br /><br /><br />
        <div id="process1"></div><br />
        </center>
 </div>
<script src="http://www.google-analytics.com/urchin.js" type="text/javascript">
</script>
  <table width="100%" border="0" cellspacing="0" cellpadding="0" style="height: 1px">
    <tr>
    <td valign="top" class="copy" style="height: 31px; width: 100%;">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> </td>
    </tr>  
    </table>
</body>
</html>