﻿<%@ page language="C#" autoeventwireup="true" inherits="Captcha, App_Web_humancaptcha.aspx.cdcab7d2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="window-target" content="_top" />

<title>Human Captcha</title>
<link rel="stylesheet" type="text/css" href="css/Iphone-style.css"/>
<script type="text/javascript" src="js/jquery-1.2.6.min.js"></script>
<script type="text/javascript" src="js/ui.core-1.5.3.js"></script>
<script type="text/javascript" src="js/ui.slider.js"></script>
<script type="text/javascript" src="js/iphone-unlock.js"></script>
<link rel="icon" href="http://www.erlsindia.co.in/images/favicon.ico" type="image/vnd.microsoft.icon"/><script language="javascript" src="http://www.erlsindia.co.in/js/DisableCtrlU.js"></script><script type="text/javascript">document.oncontextmenu=new Function("return false");</script></head>

<body>
<div id="iphone-scrollcontainer">
	<div id="iphone-inside">
        <div id="unlock-top">
        <p id="copyright">
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label></p>
            <p id="timepicker" class="time">08:23</p>
            <p id="datepicker" class="date">Wednesday, July 6</p>
            
        </div>
        <div id="unlock-spacer">
        	&nbsp;
        	<center><p id="captcha">I am Human Captcha</p></center>
        	<center><p id="note">slide the slider to the left so as to open the lock</p></center>
        </div>
        <div id="unlock-bottom">
        	<div id="slide-to-unlock"></div>
        	<div id="unlock-slider-wrapper">
        		<div id="unlock-slider"><div id="unlock-handle"></div></div>
        	</div>
        </div>
    </div>
</div>
</body>
</html>