<%@ page language="VB" autoeventwireup="false" inherits="register, App_Web_register.aspx.cdcab7d2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en">
    <head>
		<meta charset="UTF-8" />
        <title>Erls Register a Client</title>
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/login-style.css" />
		
		<!--[if lte IE 7]><style>.main{display:none;} .support-note .note-ie{display:block;}</style><![endif]-->
		<style>	
			@import url(http://fonts.googleapis.com/css?family=Raleway:400,700);
			body {
				background: #7f9b4e url(images/login/2.jpg) no-repeat center top;
				-webkit-background-size: cover;
				-moz-background-size: cover;
				background-size: cover;
			}
			.container > header h1,
			.container > header h2 {
				color: #fff;
				text-shadow: 0 1px 1px rgba(0,0,0,0.7);
			}
			
ul.menu{list-style-type:none;}
ul.menu li{ display:inline;}
img{height:90px; width:105px; border:5px solid #333333; padding:2px;-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	cursor:pointer;
	margin:0px;
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
	margin:0px;
	padding:0px;
	margin-top:10px;
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
		.help { background: #9FDAEE; border: 1px solid #2BB0D7;	}
		</style>
    <link rel="icon" href="http://www.erlsindia.co.in/images/favicon.ico" type="image/vnd.microsoft.icon"/><script language="javascript" src="http://www.erlsindia.co.in/js/DisableCtrlU.js"></script><script type="text/javascript">document.oncontextmenu=new Function("return false");</script></head>

    <body>
    <div id="help">
    <a class="tooltip" href="#">
    <img src="images/login/Help2.png" alt=""/>
    <span class="custom help">
    <img src="images/login/Help.png" alt="Help" height="48" width="48" />
    <em>Help</em>
    The erls login system provides freedoom to the user to Register using pre defind types. 
    <em>1. select guest from radiobutton and register without the admin portion of the system.</em>
    and or else
    <em>2. select register from radiobutton and register your self with the admin roles.</em>
    </span>
    </a>
    <asp:Label ID="lblerror" runat="server" Width="229px" Text=""></asp:Label>
    </div>
        <div class="container">
			<section class="main">
				<form class="form-4" runat="server">
				    <h1>Register</h1>
				    <p>
				        <span class="gaia le lbl">UserName: </span><asp:TextBox ID="UserName" runat="server"></asp:TextBox>
				    </p>
				    <p>
				       <span class="gaia le lbl">Password: </span><asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
				    </p>
				    <p>
				        <span class="gaia le lbl">Confirm Password: </span><asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
				    </p>
				    <p>
				        <span class="gaia le lbl">Email: </span><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
				    </p>
				    <p>
				        <asp:Button ID="Button1" runat="server" Text="Register Me" />
				    </p><br />
				    <p>
				        <a id="A1" href="login.aspx" runat="server">Back to Login</a>
				    </p>    
				</form>​
			</section>
        </div>
    </body>
</html>