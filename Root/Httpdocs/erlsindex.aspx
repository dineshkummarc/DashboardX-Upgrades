<%@ page language="C#" autoeventwireup="true" inherits="index, App_Web_erlsindex.aspx.cdcab7d2" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Erls Corporation</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

<meta http-equiv="window-target" content="_top" />
<link href="css/erlsindexstyle.css"  rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="js/interface.js"></script>

<!--[if lt IE 7]>
 <style type="text/css">
 div, img { behavior: url(css/iepngfix.htc) }
 </style>
<![endif]-->

<link rel="icon" href="http://www.erlsindia.co.in/images/favicon.ico" type="image/vnd.microsoft.icon"/><script language="javascript" src="http://www.erlsindia.co.in/js/DisableCtrlU.js"></script><script type="text/javascript">document.oncontextmenu=new Function("return false");</script></head>
<body>

<div class="dock" id="dock">
  <div class="dock-container">
  <a class="dock-item" href="download/home.aspx"><img src="images/home.png" alt="home" title="Home" /><span>Home</span></a>
  <a class="dock-item" href="corporate/contects.aspx"><img src="images/email.png" alt="contact" title="Contact"  /><span>Contact</span></a> 
  <a class="dock-item" href="admin/login.aspx"><img src="images/portfolio.png" alt="Admin Login" title="Admin Login"  /><span>Admin Login</span></a> 
  <a class="dock-item" href="Media/Default.aspx"><img src="images/music.png" alt="music" title="Music"  /><span>Music</span></a> 
  <a class="dock-item" href="Media/Default.aspx"><img src="images/video.png" alt="video" title="Video"  /><span>Video</span></a> 
  <a class="dock-item" href="corporate/Default.aspx"><img src="images/history.png" alt="history" title="History"  /><span>History</span></a> 
  <a class="dock-item" href="Applications/Calendario/Default.aspx"><img src="images/calendar.png" alt="calendar" title="Calendar"  /><span>Calendar</span></a> 
  <a class="dock-item" href="news/Default.aspx"><img src="images/rss.png" alt="rss" title="RssFeeds"  /><span>RSS</span></a>
  </div>
</div>
<script type="text/javascript">
	
	$(document).ready(
		function()
		{
			$('#dock').Fisheye(
				{
					maxWidth: 50,
					items: 'a',
					itemsText: 'span',
					container: '.dock-container',
					itemWidth: 40,
					proximity: 90,
					halign : 'center'
				}
			)
		}
	);

</script>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td valign="top" width="50%" style="height: 254px"></td>
    <td valign="top" width="442" style="height: 254px"><img src="images/index/name1.jpg" alt="Erls Corporation - A Heaven For Designers, Developers & Programmers" style="padding-top:190px; "/></td>
    <td valign="top" width="50%" style="height: 254px"></td>
  </tr>
   <tr>
   	<td colspan="3" style="background-image:url(images/index/h_l_t.jpg); background-repeat:repeat-x; height: 5px;"><img src="images/index/h_l_t.jpg" alt=""></td>		
  </tr>
  <tr>
    <td valign="top" width="50%"></td>
    <td valign="top" width="442"><div style="padding:27px 0 0 80px;"><img src="images/index/0.jpg" alt=""><a href="gprofile.aspx"><img src="images/index/1.jpg" alt="About Us"></a><div style="position:absolute;top:1px;left:1px;height:0px;width:0px;overflow:hidden"><a href="corporate/profile.aspx"><h1>Erls Corporation</h1></a><a><h1>web designed</h1></a></div><a href="corporate/products.aspx"><img src="images/index/2.jpg" alt="Our Products"></a><img src="images/index/3.jpg" alt=""></div>
	<div style="padding-left:157px; padding-bottom:28px;"><img src="images/index/0_4.jpg" alt=""/><a href="corporate/services.aspx"><img src="images/index/4.jpg" alt="Our Services"/></a><a href="corporate/contects.aspx"><img src="images/index/5.jpg" alt="Contect Us"/></a><img src="images/index/6.jpg" alt=""/></div>
        </td>
    <td valign="top" width="50%"></td>
  </tr>
  <tr>
   	<td colspan="3" style="background-image:url(images/index/h_l_t.jpg); background-repeat:repeat-x;"><img src="images/index/h_l_t.jpg" alt=""></td>		
  </tr>
  <tr>
    <td valign="top" width="50%" style="height: 31px"></td>
    <td valign="top" width="442" class="copy" style="height: 31px">
        Visitor Number:<asp:Label ID="Label1" runat="server" Width="56px"></asp:Label><br/>
        <a href="engine/default.aspx" title="Click here to Search Erls Corporation"><span
            style="color: #0000ff;">Search : Erls Corporation</span></a><br/>
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label> | <a href="corporate/policy.aspx" title="Erls Policy, Terms And Conditions">Erls Policy</a><br/><a class="fto1">Developed</a> by <a href="corporate/profile.aspx" class="fto1" title="Erls Corporation">Erls Corporation</a></td>	
    <td valign="top" width="50%" style="height: 31px"></td>
  </tr>  
</table>
</body>
</html>
