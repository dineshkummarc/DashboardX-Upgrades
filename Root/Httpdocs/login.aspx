<%@ page language="C#" autoeventwireup="true" inherits="login, App_Web_login.aspx.cdcab7d2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
    <head>
		<meta charset="UTF-8" content="" />
        <title>Erls Login for Client</title>
        <link rel="stylesheet" type="text/css" href="css/login-style.css" />
		
		<!--[if lte IE 7]><style>.main{display:none;} .support-note .note-ie{display:block;}</style><![endif]-->
		<style>	
			@import url(http://fonts.googleapis.com/css?family=Raleway:400,700);
			body {
				background: #7f9b4e url(images/login/bg2.jpg) no-repeat center top;
				-webkit-background-size: cover;
				-moz-background-size: cover;
				background-size: cover;
			}
#main{margin:20; position:static; width:100%; text-align:center;bottom:100px;}
ul.menu{list-style-type:none;}
ul.menu li{ display:inline;}
img{height:90px; 
    width:105px; 
    border:5px solid #333333; 
    padding:2px;
    -moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	cursor:pointer;
	margin:5px;
}

#help img
{
	padding:1px;
	margin:1px;
	height:50px;
	width:50px;
}

#help:hover img
{
	padding:1px;
	margin:1px;
	height:50px;
	border-color:#990099;
	width:50px;
}

img:hover{border-color:#990099;}
.text a{background-color:#33CCCC; color:#FFFFFF; font-size:20px; font-weight:bold;
	font-family:Georgia, "Times New Roman", Times, serif; height:40px; line-height:40px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 15px;
	border-radius: 15px;
	margin:10px;
	padding:10px;
	margin-top:50px;
	text-decoration:none;
}
.text .small{ font-size:16px;}
.text .title{ color:#993366;}
</style>

<style type="text/css">
		.tooltip {
			border-bottom: 1px dotted #000000; 
			color: #000000; 
			outline: none;
			cursor: help; 
			text-decoration: none;
			position: relative;
		}
		.tooltip span {
			margin-left: -999em;
			position: relative;
			display: none;
		}
		.tooltip:hover span {
			border-radius: 5px 5px; 
			-moz-border-radius: 5px; 
			-webkit-border-radius: 5px; 
			box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.1); 
			-webkit-box-shadow: 5px 5px rgba(0, 0, 0, 0.1); 
			-moz-box-shadow: 5px 5px rgba(0, 0, 0, 0.1);
			font-family: Calibri, Tahoma, Geneva, sans-serif;
			position: absolute; 
			left: 1em; 
			top: 2em; 
			z-index: 99;
			margin-left: 0; 
			width: 350px;
			display: block;
		}
		.tooltip:hover img {
			border: 0;
			border-color:#990099;
			margin: -10px 0 0 -55px;
			float: left; 
			padding:1px;
	         margin:1px;
	        height:50px;
	        width:50px;
			position: relative;
			padding:1px;
		}
		.tooltip:hover em {
			font-family: Candara, Tahoma, Geneva, sans-serif; 
			font-size: 1.2em; 
			font-weight: bold;
			display: block; 
			padding: 0.2em 0 0.6em 0;
		}
		
		.classic { padding: 0.8em 1em; }
		.custom { padding: 0.5em 0.8em 0.8em 2em; }
		* html a:hover { background: transparent; }
		.help { background: #9FDAEE; border: 1px solid #2BB0D7;	text-decoration: none;}
		</style>

<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
$(function(){
	$('ul.menu').find('img').fadeTo('slow', 1);
	$('ul.menu').find('img').hover(function(){
		$(this).fadeTo('fast', 0.7);
		$('body').css({ 'background-image' : 'url('+$(this).attr('src')+')' });
	}, function(){
		$(this).fadeTo('slow', 1);
	});
});
</script>
		
   <link rel="icon" href="http://www.erlsindia.co.in/images/favicon.ico" type="image/vnd.microsoft.icon"/><script type="text/javascript" language="javascript" src="http://www.erlsindia.co.in/js/DisableCtrlU.js"></script><script type="text/javascript">document.oncontextmenu=new Function("return false");</script></head>

    <body>
    <div id="help">
    <a class="tooltip" href="#">
    <img src="images/login/Help2.png" alt=""/>
    <span class="custom help">
    <img src="images/login/Help.png" alt="Help" height="48" width="48" />
    <em>Help</em>
    The erls login system provides freedoom to the user to login using pre defind types. 
    <em>1. select anonymous from radiobutton and use username as 'erlsindia' and password as 'erlsindia'.</em>
    <em>2. select doctorX from radiobutton and use username as 'erlsindia' and password as 'erlsindia'.</em>
    <em>3. select guest from radiobutton and register without the admin portion of the system.</em>
    and or else
    <em>4. select register from radiobutton and register your self with the admin roles.</em>
    </span>
    </a>
    <asp:Label ID="lblerror" runat="server" Width="229px" Text=""></asp:Label>
    </div>
        <div class="container">
			<section class="main">
				<form class="form-4" runat="server">
				    <h1>Login</h1>
				    <p>
				        <span>UserName: +Keyboard<label id="vkeyboard" visible="false" title="Vartiual Keyboard"></label></span><asp:TextBox ID="UserName" runat="server"></asp:TextBox>
				    </p>
				    <p>
				        <span>Password: +Keyboard<label id="Label1" visible="false" title="Vartiual Keyboard"></label></span><asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
				    </p>	
				    <p>
				         <span>Module: </span>
				        <asp:RadioButton GroupName="Module" ID="RadioButton1" runat="server" Text="Anonymous no login redirect to cprofile"></asp:RadioButton>Anonymous
				        <asp:RadioButton GroupName="Module" ID="RadioButton2" runat="server" Text="DoctorX Portal"></asp:RadioButton>DoctorX
				        <asp:RadioButton GroupName="Module" ID="RadioButton3" runat="server" Text="Erls Corporation redirect to dashboard"></asp:RadioButton>Erls Corporation
				        <asp:RadioButton GroupName="Module" ID="RadioButton4" runat="server" Text="Guest Visit pre defind redirect to erlsindex"></asp:RadioButton>Guest
				        <asp:RadioButton GroupName="Module" ID="RadioButton5" runat="server" Text="Admin Login"></asp:RadioButton>Admin
				        <asp:RadioButton GroupName="Module" ID="RadioButton6" runat="server" Text="Founders Login"></asp:RadioButton>FoundersBoard
				    </p>			    
				    <p>
				        <asp:Button ID="Button1" runat="server" Text="Log In" onclick="Button1_Click" />
				    </p>
                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
				    <br />
				    <p>
				        <a id="A1" href="register.aspx" runat="server">Navigate to Registeration</a>
				    </p>
				         
				</form>​
			</section>
        </div>
        
        <div id="main">
	<p>Change the Background using given pictures</p>
	<div>
		<ul class="menu">
			<li><img src="images/login/1.jpg"/></li>
			<li><img src="images/login/2.jpg"/></li>
			<li><img src="images/login/3.jpg"/></li>
			<li><img src="images/login/4.jpg"/></li>
			<li><img src="images/login/5.jpg"/></li>
			<li><img src="images/login/6.jpg"/></li>
			
			<!-- Alternatively Use media Queries for this page to show these images -->
			<!--
			<li><img src="images/login/7.jpg" /></li>
			<li><img src="images/login/8.jpg" /></li>
			<li><img src="images/login/9.jpg" /></li>
			<li><img src="images/login/10.jpg" /></li>
			<li><img src="images/login/11.jpg" /></li>
			<li><img src="images/login/12.jpg" /></li>
			-->
		</ul>
	</div>
</div>
        
    </body>
</html>