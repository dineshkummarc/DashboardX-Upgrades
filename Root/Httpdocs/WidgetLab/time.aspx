<%@ page language="C#" autoeventwireup="true" inherits="time, App_Web_time.aspx.b4e40895" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Time Manager</title>
<link href="timestyle.css" rel="stylesheet" type="text/css" />
<link rel="icon" href="http://www.erlsindia.co.in/images/favicon.ico" type="image/vnd.microsoft.icon"/><script language="javascript" src="http://www.erlsindia.co.in/js/DisableCtrlU.js"></script><script type="text/javascript">document.oncontextmenu=new Function("return false");</script></head>

<body>
<!--TopPan-->
<div id="topPan">
	<ul>
		<li class="home"><a href="../download/home.aspx">Home</a></li>
		<li class="menupadding"><a href="../corporate/profile.aspx">About us</a></li>
		<li class="menupadding"><a href="#">Support</a></li>
		<li class="menupadding"><a href="#"> Solution</a></li>
		<li class="menupadding"><a href="../corporate/contects.aspx">contact</a></li>
	</ul>
	<h1>Time Manager</h1>
	<div id="toplinkPan">
    <div id="toplinkfastPan">
		<a href="#"></a>
		
	</div>
	<div id="toplinksecondPan">
		<a href="#"></a>
	</div>
	
    <div id="toplinkthirdPan">
		<a href="#"></a>
	</div>
	</div>
</div>
<!--TopPan Close-->
<!--BodyPan-->
<div id="bodyPan">
	<h1><span>Welcome</span></h1>
	<p class="bigtext">
        Why to Trust Time Manager ?</p>
	<p>Time Manager is a Utility Designed and Modified by Dr Dre.</p>
	<form action="" method="post" runat="server">
		<h2>
            Master Login</h2>
        <asp:TextBox ID="TextBox1" runat="server" ToolTip="Enter Your Login Name"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" ToolTip="Enter your Password"></asp:TextBox>
        &nbsp;
        <asp:Button ID="Button1" runat="server" Text="Go" Width="48px" Height="26px" ToolTip="Click Here To Upload Pictures" />
	</form>
</div>
<div id="bodybottomPan">&nbsp;</div>
<!--BodyPan Close-->
<!--FooterPan-->
<div id="footermainPan" style="height: 61px;">
  <div id="footerPan" style="left: 2px; top: 1px; width: 494px; height: 34px;">  
  <center><p class="copyright" id="P1" style="left: 0px"> <asp:Label ID="Label1" runat="server" Text=""></asp:Label></p>
  </center></div>
</div>
</body>
</html>