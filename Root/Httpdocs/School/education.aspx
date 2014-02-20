<%@ page language="C#" autoeventwireup="true" inherits="school_education, App_Web_education.aspx.fa6bc620" %>


<!--
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >

<head id="Head1" runat="server">
<title>ERLS EDUCATION</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>
<link href="dtdstyle.css" rel="stylesheet" type="text/css" />
<link rel="icon" href="http://www.erlsindia.co.in/images/favicon.ico" type="image/vnd.microsoft.icon"/><script language="javascript" src="http://www.erlsindia.co.in/js/DisableCtrlU.js"></script><script type="text/javascript">document.oncontextmenu=new Function("return false");</script></head>

<body>    
    <div id="content">
    <table width="100%" border="0" align="center" height="86">
    <tr> 
     <td style="height: 95px">
      <img align="left" src="images/erlslogo.jpg" style="width: 108px; height: 97px" /></td>
    </tr>
    </table>
    <div id="font2" style="text-align: center">
    <hr style="height: 1px; color: #000000;" />
        <b><span style="text-align:center"><span style="font-size: 18pt; font-family: Verdana">
            ERLS CORPORATION EDUCATION PORTAL</span></span></b>&nbsp;
        <hr style="height: 1px; color: #000000;" />
    </div>
    <div style="text-align: center; text-decoration:none;">
        <br/>
        <br/>
    <fieldset style="width: 97%; height: 200px" visible="false">
        <strong><span style="font-family: Verdana; text-decoration: none;">
            <br/>
            <a href="esqat.aspx">Erls School of Quality Assurance and Testing</a><br/>
            <br/>
            <a href="essie.aspx">Erls School of Software intelligence and Excellance</a><br/>
            <br/>
            <a href="euopl.aspx">Erls University of Programming Languages</a><br/>
            <br/>
            <a href="../standards/default.aspx">Erls School of Standards</a><br/>
            <br/>
            <a href="../validator/default.aspx">Erls School of Online Validators</a><br/>
            <br/>
            <a href="../compilers/default.aspx">Erls School of Online Compilers</a><br/>
            <br/>
            <a href="../Interpretation/default.aspx">Erls University of Dreams Interpretation</a><br/>
            <br/>
            <br/>
            </span></strong></fieldset>
    </div>
      <p id="font-style"><a href="../download/home.aspx">Home</a></p>  
      <table width="100%" border="0" cellspacing="0" cellpadding="0" style="height: 1px">
 <tr>
    <td valign="top" class="copy" style="height: 31px; width: 3432px;">
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label> | <a href="../corporate/policy.aspx">Erls Policy</a><br/><a class="fto1">Developed</a> by <a href="../corporate/profile.aspx" class="fto1">Erls Corporation</a></td>	
 </tr>  
</table>
</div>
    </body>
</html>

-->

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>ERLS CORPORATION EDUCATION PORTAL</title>
<script type="text/javascript" src="../js/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
 
	$("a.switch_thumb").toggle(function(){
	  $(this).addClass("swap"); 
	  $("ul.display").fadeOut("fast", function() {
	  	$(this).fadeIn("fast").addClass("thumb_view"); 
		 });
	  }, function () {
      $(this).removeClass("swap");
	  $("ul.display").fadeOut("fast", function() {
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
	background: url(../images/switch.gif) no-repeat;
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
<link rel="icon" href="http://www.erlsindia.co.in/images/favicon.ico" type="image/vnd.microsoft.icon"/><script language="javascript" src="http://www.erlsindia.co.in/js/DisableCtrlU.js"></script><script type="text/javascript">document.oncontextmenu=new Function("return false");</script></head>

<body>

<h1>ERLS<span> EDUCATION PORTAL</span><small></small></h1>
<div class="container">
<a href="#" class="switch_thumb">Switch Thumb</a> 

<ul class="display">
	<li>
		<div class="content_block">
			<a href="esqat.aspx"><img src="../images/sample.gif" alt="Erls School of Quality Assurance and Testing" /></a>

			<h2><a href="esqat.aspx">E.S.Q.A.T</a></h2>
			<p>Askin', jehosephat come pudneer, sam-hell, in lament had. Cabin tax-collectors spell, chitlins spittin' watchin' hootch me rightly kinfolk that. Woman kickin', work yer last dogs, rattler hee-haw mobilehome stew trailer driveway shootin'. </p>
		</div>
	</li>
	<li>
		<div class="content_block">
			<a href="essie.aspx"><img src="../images/sample.gif" alt="Erls School of Software intelligence and Excellance" /></a>
			<h2><a href="essie.aspx">E.S.S.I.E</a></h2>

			<p>Askin', jehosephat come pudneer, sam-hell, in lament had. Cabin tax-collectors spell, chitlins spittin' watchin' hootch me rightly kinfolk that. Woman kickin', work yer last dogs, rattler hee-haw mobilehome stew trailer driveway shootin'. </p>
		</div>
	</li>
	<li>
		<div class="content_block">
			<a href="euopl.aspx"><img src="../images/sample.gif" alt="Erls University of Programming Languages" /></a>
			<h2><a href="euopl.aspx">E.U.O.P.L</a></h2>
			<p>Askin', jehosephat come pudneer, sam-hell, in lament had. Cabin tax-collectors spell, chitlins spittin' watchin' hootch me rightly kinfolk that. Woman kickin', work yer last dogs, rattler hee-haw mobilehome stew trailer driveway shootin'. </p>

		</div>
	</li>
	<li>
		<div class="content_block">
			<a href="../standards/default.aspx"><img src="../images/sample.gif" alt="Erls School of Standards" /></a>
			<h2><a href="../standards/default.aspx">E.S.S</a></h2>
			<p>Askin', jehosephat come pudneer, sam-hell, in lament had. Cabin tax-collectors spell, chitlins spittin' watchin' hootch me rightly kinfolk that. Woman kickin', work yer last dogs, rattler hee-haw mobilehome stew trailer driveway shootin'. </p>

		</div>
	</li>
	<li>
		<div class="content_block">
			<a href="../validator/default.aspx"><img src="../images/sample.gif" alt="Erls School of Online ValidatorsE" /></a>
			<h2><a href="../validator/default.aspx">E.S.O.V</a></h2>
			<p>Askin', jehosephat come pudneer, sam-hell, in lament had. Cabin tax-collectors spell, chitlins spittin' watchin' hootch me rightly kinfolk that. Woman kickin', work yer last dogs, rattler hee-haw mobilehome stew trailer driveway shootin'. </p>

		</div>
	</li>
	<li>
		<div class="content_block">
			<a href="../compilers/default.aspx"><img src="../images/sample.gif" alt="Erls School of Online Compilers" /></a>
			<h2><a href="../compilers/default.aspx">E.S.O.C</a></h2>
			<p>Askin', jehosephat come pudneer, sam-hell, in lament had. Cabin tax-collectors spell, chitlins spittin' watchin' hootch me rightly kinfolk that. Woman kickin', work yer last dogs, rattler hee-haw mobilehome stew trailer driveway shootin'. </p>

		</div>
	</li>
	<li>
		<div class="content_block">
			<a href="../Interpretation/default.aspx"><img src="../images/sample.gif" alt="Erls University of Dreams Interpretation" /></a>
			<h2><a href="../Interpretation/default.aspx">E.U.D.I</a></h2>
			<p>Askin', jehosephat come pudneer, sam-hell, in lament had. Cabin tax-collectors spell, chitlins spittin' watchin' hootch me rightly kinfolk that. Woman kickin', work yer last dogs, rattler hee-haw mobilehome stew trailer driveway shootin'. </p>

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
