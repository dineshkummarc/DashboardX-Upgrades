<%@ page language="C#" autoeventwireup="true" inherits="dashboard, App_Web_dashboard.aspx.cdcab7d2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="de" lang="de">
 <head>
    <title>Dindows DashboardX</title>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <link href="css/jquery-ui-1.8.6.custom.css" rel="stylesheet" type="text/css"/>
    <link href="css/AeroWindow.css" rel="stylesheet" type="text/css"/>
   <link href="css/DashboardStyle.css" rel="stylesheet" type="text/css"/>
   <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
   <script type="text/javascript" src="js/jquery-ui-1.8.17.custom.min.js"></script>
    <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>        
    <script type="text/javascript" src="js/jquery-AeroWindow.min.js"></script>
    <script src="js/ac.js" type="text/javascript"></script>
    <script src="js/jquery.jclock.js" type="text/javascript"></script>

    <style type="text/css">
        * {
        margin: 0px;
        padding: 0px;
      }
      body {
        background: url(images/win7-desktop-bg.jpg);
        font-family: arial;
        overflow: hidden;
      }
      #link {
        position: absolute;
        bottom: 60px;
        right: 30px;
        color: white;
        font-size: 11px;
      }
      #link a:link, #link a:visited {
        color: white;
      }      
    </style>
   
  <script type="text/javascript">
	var keyCodes=new Array(10);
	var pattern=[38,38,40,40,37,39,37,39,66,65];
	function keydownHandler(e)
	{
		keyCodes.shift();
		keyCodes.push(e.keyCode);
		if(keyCodes.every(function(element, index, array){return element===pattern[index];}))
		{
			document.getElementById("rainbow-message").style.display="";
		}
	}
	function disableCtrlKeyCombination(e)
            {
                //list all CTRL + key combinations you want to disable
                var forbiddenKeys = new Array('a', 'v', 'p', 's', 'x', 'w', 't', 'u', 'i', 'd', 'b', 'l', 'k', 'j', 'n', 'g', 'f', 'o', 'z', 'c', 'h' );
                var key;
                var isCtrl;
                if(window.event)
                {
                key = window.event.keyCode;     //IE
                if(window.event.ctrlKey)
                isCtrl = true;
                else
                isCtrl = false;
                }
                else
                {
                key = e.which;     //Firefox
                if(e.ctrlKey)
                isCtrl = true;
                else
                isCtrl = false;
                }
                //if ctrl is pressed check if other key is in forbidenKeys array
                if(isCtrl)
                {
                for(i=0; i<forbiddenKeys.length; i++)
                {
                //case-insensitive comparation
                if(forbiddenKeys[i].toLowerCase() == String.fromCharCode(key).toLowerCase())
                {
               // alert('Key combination CTRL'+ String.fromCharCode(key) + 'has been disabled.');
                return false;
                }
                }
                }
                return true;
            }
	window.onkeydown=keydownHandler;
	window.onkeypress=disableCtrlKeyCombination;
	// window.onkeydown=disableCtrlKeyCombination;
   </script>
   
   <script type="text/javascript">
    $(function($) {
      var options2 = {
        format: '%H:%M:%S %p \n %d-%m-%Y' // 24-hour
      }
      $('#TaskbarTime').jclock(options2);
    });
  </script>
  
  <link rel="icon" href="http://www.erlsindia.co.in/images/favicon.ico" type="image/vnd.microsoft.icon"/><script language="javascript" src="http://www.erlsindia.co.in/js/DisableCtrlU.js"></script><script type="text/javascript">document.oncontextmenu=new Function("return false");</script></head>
  <body>
     
    <div id="DesktopIcons">
      <ul style="display: none">
      <li><a href="http://www.erlsindia.co.in/UserProfile.aspx"><img src="images/icons/ec.png" border="0"/>User Profile</a>
        </li><li><a href="http://www.erlsindia.co.in/download/home.aspx"><img src="images/icons/ec.png" border="0"/>EC Home</a>
        </li><li><a href="http://www.erlsindia.co.in/Applications/Default.aspx"><img src="images/icons/AllPrograms.png" border="0"/>All Programs</a>
        </li><li><a href="http://www.erlsindia.co.in/AddressBook/Default.aspx"><img src="images/icons/Addressbook.png" border="0"/>Address Book</a>
        </li><li><a href="http://www.erlsindia.co.in/engine/Default.aspx"><img src="images/icons/Addressbook.png" border="0"/>Search Erls</a>
        </li><li><a href="http://www.erlsindia.co.in/drdre/login.aspx"><img src="images/icons/DoctoR.gif" border="0"/>EC DoctoR</a>
        </li><li><a href="http://www.erlsindia.co.in/corporate/charity.aspx"><img src="images/icons/charity.png" border="0"/>Charity Society</a>
        </li><li><a href="http://www.erlsindia.co.in/festivals/default.aspx"><img src="images/icons/festival.png" border="0"/>Festivals</a>
        </li><li><a href="http://www.erlsindia.co.in/card/default.aspx"><img src="images/icons/card.png" border="0"/>Card Creator</a>
        </li><li><a href="http://www.erlsindia.co.in/Shopping/default.aspx"><img src="images/icons/shopping.png" border="0"/>Shopping Cart</a>
        </li><li><a href="http://www.erlsindia.co.in/Products/default.aspx"><img src="images/icons/product.png" border="0"/>Erls Products</a>
        </li><li><a href="http://www.erlsindia.co.in/widgetlab/default.aspx"><img src="images/icons/widget.png" border="0"/>Widget Lab</a>
        </li><li><a href="http://www.erlsindia.co.in/chat/default.aspx"><img src="images/icons/chat.png" border="0"/>Chat Server</a>
        </li><li><a href="http://www.erlsindia.co.in/media/default.aspx"><img src="images/icons/media.png" border="0"/>MediaPlayers</a>
        </li><li><a href="http://www.erlsindia.co.in/webarchives/default.aspx"><img src="images/icons/archieves.png" border="0"/>Web Archieves</a>
        </li><li><a href="http://www.erlsindia.co.in/cooking/default.aspx"><img src="images/icons/default.png" border="0"/>Cooking Recipes</a>
        </li><li><a href="http://www.erlsindia.co.in/erlsgames/default.aspx"><img src="images/icons/games.png" border="0"/>Erls Games</a>
        </li><li><a href="http://www.erlsindia.co.in/rssfeed/default.aspx"><img src="images/icons/news.png" border="0"/>Erls News</a>
        </li><li><a href="http://www.erlsindia.co.in/corporate/sitemap.aspx"><img src="images/icons/sitemap.png" border="0"/>Erls SiteMap</a>
        </li><li><a href="http://www.erlsindia.co.in/corporate/profile.aspx"><img src="images/icons/default.png" border="0"/>Feedback 4 Erls</a>
       </li><li><a href="http://www.erlsindia.co.in/iFrameContent/WindowsUI.aspx"><img src="images/icons/help.png" border="0"/>HELP & Download</a>
       </li><li><a href="http://www.erlsindia.co.in/corporate/profile.aspx"><img src="images/icons/default.png" border="0"/>About Erls Corporation</a>
      </li></ul>
    </div>
    <p> </p>
    <div id="AD">
      <script type="text/javascript">
      <!--
      google_ad_client = "pub-7201128898371258";
      /* Windows UI - Desktop BG */
      google_ad_slot = "9626177799";
      google_ad_width = 160;
      google_ad_height = 600;
      //-->
      </script>
      
      <script type="text/javascript">
      </script>
      <object type="application/x-shockwave-flash" allowscriptaccess="always" width="150" height="150" align="middle" data="dashboardclock.swf"><param name="allowScriptAccess" value="always"><param name="movie" value="dashboardclock.swf"><param name="loop" value="true"><param name="quality" value="best"><param name="bgcolor" value="#ffffff"><param name="wmode" value="transparent"></object>    
      <br/>
      <br/>
      
      <div id="AeroWindowLinks" class="Lightboxdemo">
      <ul id="holder1">
      <!-- Skype 'Skype Me™!' button http://www.skype.com/go/skypebuttons -->
      <!--
      <script type="text/javascript"  src="http://download.skype.com/share/skypebuttons/js/skypeCheck.js"></script>
             <li><a href="skype:dinesh.amsoft?call" ><img src="http://download.skype.com/share/skypebuttons/buttons/call_blue_white_124x52.png" style="border: none;" width="124" height="52" alt="Skype Me™!" /></a></li><br/>
             <li><a href="http://www.erlsindia.co.in/engine/default.aspx" title="Erls Search" style="border: none; width:124; height:52;" alt="Erls Search">Erls Search</a></li><br />
            -->
            
       <script type="text/javascript" src="js/skypeCheck.js"></script>
             <li><a href="skype:dinesh.amsoft?call" ><img src="images/desktop/call_blue_white_124x52-1.png" width="124" height="52" alt="Skype Me™!" /></a></li><br/>
             <li><a href="http://www.erlsindia.co.in/engine/default.aspx" title="Erls Search" style="width:124; height:52;" alt="Erls Search">Erls Search</a></li><br />
       </ul>
       </div>
        
      <br/>
    
     <div id="AD2">
      <script type="text/javascript">
      <!--
      google_ad_client = "pub-7201128898371258";
      /* Windows UI - Desktop BG */
      google_ad_slot = "9626177799";
      google_ad_width = 160;
      google_ad_height = 600;
      //-->
      </script>
      <!--
      <asp:Label ID="copyright" runat="server" Text="" ></asp:Label>
      <br/>
      -->
    </div>
          
    <script type="text/javascript">
    var ShowTaskbar = true;
    $(document).ready(function() {
      //Initialize Desktop Icons ----------------------------------------------
      var desktop = $("body #DesktopIcons");
      var desktop_icons = $("a", desktop);
      $("ul", desktop).css("display", "none");

      desktop_icons.each(function(index) {
        if ($(this).attr('href') !== undefined && is_valid_url($(this).attr('href')))
          $(this).AeroWindowLink();
      });
      desktop_icons.remove();
    });
    </script>
      
</body>  
</html>