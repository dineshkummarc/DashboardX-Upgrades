<%@ page language="C#" autoeventwireup="true" inherits="_Default, App_Web_default.aspx.cdcab7d2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>ERLS ISSUES</title>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $("a.switch_thumb").toggle(function () {
            $(this).addClass("swap");
            $("ul.display").fadeOut("fast", function () {
                $(this).fadeIn("fast").addClass("thumb_view");
            });
        }, function () {
            $(this).removeClass("swap");
            $("ul.display").fadeOut("fast", function () {
                $(this).fadeIn("fast").removeClass("thumb_view");
            });
        });

    });
</script>

<style type="text/css">
body {
	margin: 0;
	padding: 50px 0 0;
	font: 10px normal Verdana, Arial, Helvetica, sans-serif;
	background: #111  no-repeat center top;
	color: #fff;
}
* {
	margin: 0;
	padding: 0;
}

.copy a{
	color:white;	
	text-decoration:none;
	font-weight:normal;
}


.copy{
	color:white;
	background:inherit;
	text-align:right;
	padding:5px 20px 0 0;
}

img {
	border: none;
}
h1 {
	font: 5em normal Georgia, 'Times New Roman', Times, serif;
	text-align:center;
	margin-bottom: 20px;
}
h1 span { 	color: #e7ff61; }
h1 small{
	font: 0.2em normal Verdana, Arial, Helvetica, sans-serif;
	text-transform:uppercase;
	letter-spacing: 1.5em;
	display: block;
	color: #ccc;
}

.container {
	width: 758px;
	margin: 0 auto;
	padding-bottom: 100px;
	overflow: hidden;
}
ul.display {
	float: left;
	width: 756px;
	margin: 0;
	padding: 0;
	list-style: none;
	border-top: 1px solid #333;
	border-right: 1px solid #333;
	background: #222;
}
ul.display li {
	float: left;
	width: 754px;
	padding: 10px 0;
	margin: 0;
	border-top: 1px solid #111;
	border-right: 1px solid #111;
	border-bottom: 1px solid #333;
	border-left: 1px solid #333;
}
ul.display li a {
	color: #e7ff61;
	text-decoration: none;
}
ul.display li .content_block {
	padding: 0 10px;
}
ul.display li .content_block h2 {
	margin: 0;
	padding: 5px;
	font-weight: normal;
	font-size: 1.7em;

}
ul.display li .content_block p {
	margin: 0;
	padding: 5px 5px 5px 245px;
	font-size: 1.2em;
}
ul.display li .content_block a img{
	padding: 5px;
	border: 2px solid #ccc;
	background: #fff;
	margin: 0 15px 0 0;
	float: left;
}

ul.thumb_view li{
	width: 250px;
}
ul.thumb_view li h2 {
	display: inline;
}
ul.thumb_view li p{
	display: none;
}
ul.thumb_view li .content_block a img {
	margin: 0 0 10px;
}


a.switch_thumb {
	width: 122px;
	height: 26px;
	line-height: 26px;
	padding: 0;
	margin: 10px 0;
	display: block;
	background: url(images/switch.gif) no-repeat;
	outline: none;
	text-indent: -9999px;
}
a:hover.switch_thumb {
	filter:alpha(opacity=75);
	opacity:.75;
	-ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=75)";
}
a.swap { background-position: left bottom; }

</style>
<link rel="icon" href="http://www.erlsindia.co.in/images/favicon.ico" type="image/vnd.microsoft.icon"/><script language="javascript" src="http://www.erlsindia.co.in/js/DisableCtrlU.js"></script><script type="text/javascript">                                                                                                                                                                                                      document.oncontextmenu = new Function("return false");</script></head>

<body>

<h1>ERLS<span> ISSUES PORTAL</span><small></small></h1>
<div class="container">
<a href="#" class="switch_thumb">Switch Thumb</a> 

<ul class="display">
	<li>
		<div class="content_block">
			<a href="https://github.com/dineshkummarc/doctorx/issues?sort=created&state=open"><img src="images/sample.gif" alt="ERLS CORPORATION DOCTORX" /></a>

			<h2><a href="https://github.com/dineshkummarc/doctorx/issues?sort=created&state=open">DOCTORX</a></h2>
			<p> </p>
		</div>
	</li>
	<li>
		<div class="content_block">
			<a href="https://github.com/dineshkummarc/doctorx/issues?sort=created&state=open"><img src="images/sample.gif" alt="ERLS CORPORATION DOCTORX 2.0" /></a>
			<h2><a href="https://github.com/dineshkummarc/doctorx/issues?sort=created&state=open">DOCTORX 2.0</a></h2>

			<p> </p>
		</div>
	</li>
	<li>
		<div class="content_block">
			<a href="https://github.com/dineshkummarc/dashboardx/issues?state=open"><img src="images/sample.gif" alt="ERLS CORPORATION DASHBOARDX" /></a>
			<h2><a href="https://github.com/dineshkummarc/dashboardx/issues?state=open">DASHBOARDX</a></h2>
			<p> </p>

		</div>
	</li>
	<li>
		<div class="content_block">
			<a href="https://github.com/dineshkummarc/dashboardx2.0/issues?state=open"><img src="images/sample.gif" alt="ERLS CORPORATION DASHBOARDX 2.0" /></a>
			<h2><a href="https://github.com/dineshkummarc/dashboardx2.0/issues?state=open">DASHBOARDX 2.0</a></h2>
			<p> </p>

		</div>
	</li>
	<li>
		<div class="content_block">
			<a href="https://github.com/dashboard-x/dashboardx-index/issues"><img src="images/sample.gif" alt="DashboardX-index" /></a>
			<h2><a href="https://github.com/dashboardx/dashboardx-index/issues">DashboardX-index</a></h2>
			<p>The stylish very first page of the erls website over the production portal. dashboardx-index shows all of the changes made during the development of the portal.</p>

		</div>
	</li>
	<li>
		<div class="content_block">
			<a href="https://github.com/d-s-foundation/DSF_Production2/issues"><img src="images/sample.gif" alt="DSF_Production2" /></a>
			<h2><a href="https://github.com/d-s-foundation/DSF_Production2/issues?state=open">DSF_Production2</a></h2>
			<p>Denno Secqtinstien (DS) Foundation was initiated as a Management Team for one of the bussiness Portals of a Well known shop in delhi. A small team to manage online shopping of Shops in delhi. Now the Shopping Portal is a part of Erlsindia's Dashboard. The DS Foundation was initiated in the year 2004 and still manages the works and documentation of Online shopping Portals for delhi based firms and provides satisfactory services giving a beautiful smile over the faces of several investors. The DS Foundation is involved in maintaining Erls corporation and DoctoR and other Their products.</p>

		</div>
	</li>
	<li>
		<div class="content_block">
			<a href="https://github.com/dineshkummarc/DSFoundation/issues"><img src="images/sample.gif" alt="DSFoundation" /></a>
			<h2><a href="https://github.com/dineshkummarc/DSFoundation/issues">DSFoundation</a></h2>
			<p>Denno Secqtinstien (DS) Foundation was initiated as a Management Team for one of the bussiness Portals of a Well known shop in delhi. A small team to manage online shopping of Shops in delhi. Now the Shopping Portal is a part of Erlsindia's Dashboard. The DS Foundation was initiated in the year 2004 and still manages the works and documentation of Online shopping Portals for delhi based firms and provides satisfactory services giving a beautiful smile over the faces of several investors. The DS Foundation is involved in maintaining Erls corporation and DoctoR and other Their products. </p>

		</div>
	</li>
    <li>
		<div class="content_block">
			<a href="https://github.com/dineshkummarc/Googbox/issues"><img src="images/sample.gif" alt="Googbox" /></a>
			<h2><a href="https://github.com/dineshkummarc/Googbox/issues">GoogBox</a></h2>
			<p>The stylish Overlay shown for extending check services for the index, the very first page of the erls website. the googbox is a internal part of doctorx and its successor project.</p>

		</div>
	</li>
</ul>
</div>

<table width="100%" border="0" cellspacing="0" cellpadding="0" style="height: 1px">
 <tr>
    <td valign="top" class="copy" style="height: 31px; width: 3432px;">
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label> | <a href="../corporate/policy.aspx">Erls Policy</a><br/><a class="fto1">Developed</a> by <a href="../corporate/profile.aspx" class="fto1">Erls Corporation</a></td>	
 </tr>  
</table>

</body>
</html>
