<%@ page language="C#" autoeventwireup="true" inherits="Shutdown, App_Web_shutdown.aspx.cdcab7d2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
<title>Processing ShutDown Request</title>
<meta http-equiv="window-target" content="_top" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>
<link href="css/loadingstyle.css" rel="stylesheet" type="text/css" />

<link rel="icon" href="http://www.erlsindia.co.in/images/favicon.ico" type="image/vnd.microsoft.icon"/><script language="javascript" src="http://www.erlsindia.co.in/js/DisableCtrlU.js"></script><script type="text/javascript">document.oncontextmenu=new Function("return false");</script></head>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>

<style type="text/css">
        #process1, #process2, #process3, #process4, #process5, #process6, #process7, #process8
		, #process9, #process10, #process11, #process12, #process13, #process14, #process15, #process16
		, #process17, #process18, #process19, #process20{
        font-size:12px;
        font-family:Georgia, verdana;
        }
    </style>
   <script type="text/javascript">
        $(function() {
            var cnt = 0;
            var counter = setInterval(function() {
                if (cnt < 20)
				{
                    if(cnt == 1)
					$('#process1').html(cnt + " - process1");
                    if(cnt == 2)
					$('#process2').html(cnt + " - process2");
					if(cnt == 3)
					$('#process3').html(cnt + " - process3");
					if(cnt == 4)
					$('#process4').html(cnt + " - process4");
					if(cnt == 5)
					$('#process5').html(cnt + " - process5");
					if(cnt == 6)
					$('#process6').html(cnt + " - process6");
					if(cnt == 7)
					$('#process7').html(cnt + " - process7");
					if(cnt == 8)
					$('#process8').html(cnt + " - process8");
					if(cnt == 9)
					$('#process9').html(cnt + " - process9");
					if(cnt == 10)
					$('#process10').html(cnt + " - process10");
					if(cnt == 11)
					$('#process11').html(cnt + " - process11");
					if(cnt == 12)
					$('#process12').html(cnt + " - process12");
					if(cnt == 13)
					$('#process13').html(cnt + " - process13");
					if(cnt == 14)
					$('#process14').html(cnt + " - process14");
					if(cnt == 15)
					$('#process15').html(cnt + " - process15");
					if(cnt == 16)
					$('#process16').html(cnt + " - process16");
					if(cnt == 17)
					$('#process17').html(cnt + " - process17");
					if(cnt == 18)
					$('#process18').html(cnt + " - process18");
					if(cnt == 19)
					$('#process19').html(cnt + " - process19");
					if(cnt == 20)
					$('#process20').html(cnt + " - Redirecting to New Page");
                    cnt++;
                }
                else {
                    clearInterval(counter);
					window.parent.location = "index.aspx";
                }
            }, 1000);
        });
    </script>

<body>
<div class="example">
        <center><img src="images/erlslogo.jpg" alt="" style="height: 129px" />
        <img src="images/erlscorlogo.jpg" alt="" style="height: 85px" />
        <div id="process1"></div>
	    <div id="process2"></div>
	    <div id="process3"></div>
	    <div id="process4"></div>
	    <div id="process5"></div>
	    <div id="process6"></div>
	    <div id="process7"></div>
	    <div id="process8"></div>
	    <div id="process9"></div>
	    <div id="process10"></div>
	    <div id="process11"></div>
	    <div id="process12"></div>
	    <div id="process13"></div>
	    <div id="process14"></div>
	    <div id="process15"></div>
	    <div id="process16"></div>
	    <div id="process17"></div>
	    <div id="process18"></div>
	    <div id="process19"></div>
	    <div id="process20"></div></center>
    </div>
  <table width="100%" border="0" cellspacing="0" cellpadding="0" style="height: 1px">
    <tr>
    <td valign="top" class="copy" style="height: 31px; width: 100%;">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> </td>
    </tr>  
    </table>
</body>
</html>