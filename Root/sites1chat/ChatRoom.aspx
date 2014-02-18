<%@ page language="C#" autoeventwireup="true" inherits="ChatRoom, App_Web_chatroom.aspx.cdcab7d2" %>
<%@ Register assembly="Anthem" namespace="Anthem" tagprefix="anthem" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Erls ChatME</title>
    <style type="text/css">

        .style1
        {
            width: 62%;
        }
        .style2
        {
            width: 102px;
        }
        .style3
        {
            width: 333px;
        }
        .style4
        {
            width: 102px;
            height: 357px;
        }
        .style5
        {
            width: 333px;
            height: 357px;
        }
        .style6
        {
            height: 357px;
            width: 280px;
        }
        #Text1
        {
            height: 36px;
            width: 183px;
        }
        .style7
        {
            width: 280px;
        }
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
        <style>	
			@import url(http://fonts.googleapis.com/css?family=Raleway:400,700);
			body {
				background: #7f9b4e url(images/login/13.jpg) no-repeat center top;
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
				
		.classic { padding: 0.8em 1em; }
		.custom { padding: 0.5em 0.8em 0.8em 2em; }
		* html a:hover { background: transparent; }
		</style>

<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
    $(function () {
        $('ul.menu').find('img').fadeTo('slow', 1);
        $('ul.menu').find('img').hover(function () {
            $(this).fadeTo('fast', 0.7);
            $('body').css({ 'background-image': 'url(' + $(this).attr('src') + ')' });
        }, function () {
            $(this).fadeTo('slow', 1);
        });
    });
</script>
		
   <link rel="icon" href="http://www.erlsindia.co.in/images/favicon.ico" type="image/vnd.microsoft.icon"/><script type="text/javascript" language="javascript" src="http://www.erlsindia.co.in/js/DisableCtrlU.js"></script><script type="text/javascript"> document.oncontextmenu = new Function("return false");</script></head>


</head>
<body onunload="Leave(); return false;">
<script type="text/javascript">
function Leave()
{
    Anthem_InvokePageMethod('Leave', null, null);
}

</script>
    <form id="form1" runat="server" defaultbutton="ButtonSend">
    <div>
    
<table class="style1">
    <tr>
        <td class="style2">
            <anthem:Label ID="LabelUserName" runat="server">
            &nbsp;
            </anthem:Label>
            <anthem:Label ID="Label1" runat="server">
                &nbsp;User Name:</anthem:Label>
        </td>
        <td class="style3">
&nbsp;<anthem:TextBox ID="TextBoxName" runat="server" Height="37px" Width="381px"></anthem:TextBox>&nbsp;
            </td>
        <td class="style7">
            <anthem:Button ID="ButtonJoin" runat="server" Height="42px" 
                onclick="ButtonJoin_Click" Text="Join" Width="91px" />
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            <anthem:Label ID="LabelError" runat="server" AutoUpdateAfterCallBack="True" 
                UpdateAfterCallBack="True"></anthem:Label>
            </td>
        <td class="style7">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style5">
            <anthem:ListBox ID="ListBox2" runat="server" Height="352px" Width="385px" 
                AutoUpdateAfterCallBack="True">
            </anthem:ListBox>
        </td>
        <td class="style6">
            <anthem:Timer ID="Timer1" runat="server">
            </anthem:Timer>
            <anthem:ListBox ID="ListBox1" runat="server" Height="352px" Width="191px" 
                AutoUpdateAfterCallBack="True" TextDuringCallBack="Loading...">
            </anthem:ListBox>
            </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            <anthem:TextBox ID="TextBoxType2" runat="server" Height="37px" Width="390px"></anthem:TextBox>
            </td>
        <td class="style7">
            <anthem:Button ID="ButtonSend" runat="server" Height="41px" 
                onclick="ButtonSend_Click" Text="Send" Width="90px" />
            </td>
    </tr>
</table>
<div id="main">
	<p>Change the Background using given pictures</p>
	<div>
		<ul class="menu">
			
            <!--
            <li><img src="images/login/1.jpg" /></li>
			<li><img src="images/login/2.jpg" /></li>
			<li><img src="images/login/3.jpg" /></li>
			<li><img src="images/login/4.jpg" /></li>
			<li><img src="images/login/5.jpg" /></li>
			<li><img src="images/login/6.jpg" /></li> -->
			<!-- Alternatively Use media Queries for this page to show these images -->
						
			<li><img src="images/login/7.jpg" /></li>
			<li><img src="images/login/8.jpg" /></li>
			<li><img src="images/login/9.jpg" /></li>
			<li><img src="images/login/10.jpg" /></li>
			<li><img src="images/login/11.jpg" /></li>
			<li><img src="images/login/12.jpg" /></li>
			
		</ul>
	</div>
</div>


    </div>
    </form>
</body>
</html>
