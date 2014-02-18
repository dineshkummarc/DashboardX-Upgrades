/*
 * jQuery Tools 1.2.4 - The missing UI library for the Web
 * 
 * [tooltip, tooltip.slide, tooltip.dynamic]
 * 
 * NO COPYRIGHTS OR LICENSES. DO WHAT YOU LIKE.
 * 
 * http://flowplayer.org/tools/
 * 
 * File generated: Mon Aug 30 09:38:50 GMT 2010
 */
(function(f){function p(a,b,c){var h=c.relative?a.position().top:a.offset().top,e=c.relative?a.position().left:a.offset().left,i=c.position[0];h-=b.outerHeight()-c.offset[0];e+=a.outerWidth()+c.offset[1];var j=b.outerHeight()+a.outerHeight();if(i=="center")h+=j/2;if(i=="bottom")h+=j;i=c.position[1];a=b.outerWidth()+a.outerWidth();if(i=="center")e-=a/2;if(i=="left")e-=a;return{top:h,left:e}}function u(a,b){var c=this,h=a.add(c),e,i=0,j=0,m=a.attr("title"),q=a.attr("data-tooltip"),r=n[b.effect],l,s=
a.is(":input"),v=s&&a.is(":checkbox, :radio, select, :button, :submit"),t=a.attr("type"),k=b.events[t]||b.events[s?v?"widget":"input":"def"];if(!r)throw'Nonexistent effect "'+b.effect+'"';k=k.split(/,\s*/);if(k.length!=2)throw"Tooltip: bad events configuration for "+t;a.bind(k[0],function(d){clearTimeout(i);if(b.predelay)j=setTimeout(function(){c.show(d)},b.predelay);else c.show(d)}).bind(k[1],function(d){clearTimeout(j);if(b.delay)i=setTimeout(function(){c.hide(d)},b.delay);else c.hide(d)});if(m&&
b.cancelDefault){a.removeAttr("title");a.data("title",m)}f.extend(c,{show:function(d){if(!e){if(q)e=f(q);else if(m)e=$('<span>'+m+'</span>').wrap(b.layout).parents().last().addClass(b.tipClass).appendTo(document.body).hide();else if(b.tip)e=f(b.tip).eq(0);else{e=a.next();e.length||(e=a.parent().next())}if(!e.length)throw"Cannot find tooltip for "+a;}if(c.isShown())return c;e.stop(true,true);var g=p(a,e,b);d=d||f.Event();d.type="onBeforeShow";h.trigger(d,[g]);if(d.isDefaultPrevented())return c;g=p(a,e,b);e.css({position:"absolute",
top:g.top,left:g.left});l=true;r[0].call(c,function(){d.type="onShow";l="full";h.trigger(d)});g=b.events.tooltip.split(/,\s*/);e.bind(g[0],function(){clearTimeout(i);clearTimeout(j)});g[1]&&!a.is("input:not(:checkbox, :radio), textarea")&&e.bind(g[1],function(o){o.relatedTarget!=a[0]&&a.trigger(k[1].split(" ")[0])});return c},hide:function(d){if(!e||!c.isShown())return c;d=d||f.Event();d.type="onBeforeHide";h.trigger(d);if(!d.isDefaultPrevented()){l=false;n[b.effect][1].call(c,function(){d.type="onHide";
h.trigger(d)});return c}},isShown:function(d){return d?l=="full":l},getConf:function(){return b},getTip:function(){return e},getTrigger:function(){return a}});f.each("onHide,onBeforeShow,onShow,onBeforeHide".split(","),function(d,g){f.isFunction(b[g])&&f(c).bind(g,b[g]);c[g]=function(o){f(c).bind(g,o);return c}})}f.tools=f.tools||{version:"1.2.4"};f.tools.tooltip={conf:{effect:"toggle",fadeOutSpeed:"fast",predelay:0,delay:30,opacity:1,tip:0,position:["top","center"],offset:[0,0],relative:false,cancelDefault:true,
events:{def:"mouseenter,mouseleave",input:"focus,blur",widget:"focus mouseenter,blur mouseleave",tooltip:"mouseenter,mouseleave"},layout:"<div/>",tipClass:"tooltip"},addEffect:function(a,b,c){n[a]=[b,c]}};var n={toggle:[function(a){var b=this.getConf(),c=this.getTip();b=b.opacity;b<1&&c.css({opacity:b});c.show();a.call()},function(a){this.getTip().hide();a.call()}],fade:[function(a){var b=this.getConf();this.getTip().fadeTo(b.fadeInSpeed,b.opacity,a)},function(a){this.getTip().fadeOut(this.getConf().fadeOutSpeed,
a)}]};f.fn.tooltip=function(a){var b=this.data("tooltip");if(b)return b;a=f.extend(true,{},f.tools.tooltip.conf,a);if(typeof a.position=="string")a.position=a.position.split(/,?\s/);this.each(function(){b=new u(f(this),a);f(this).data("tooltip",b)});return a.api?b:this}})(jQuery);
(function(d){var i=d.tools.tooltip;d.extend(i.conf,{direction:"up",bounce:false,slideOffset:10,slideInSpeed:200,slideOutSpeed:200,slideFade:!d.browser.msie});var e={up:["-","top"],down:["+","top"],left:["-","left"],right:["+","left"]};i.addEffect("slide",function(g){var a=this.getConf(),f=this.getTip(),b=a.slideFade?{opacity:a.opacity}:{},c=e[a.direction]||e.up;b[c[1]]=c[0]+"="+a.slideOffset;a.slideFade&&f.css({opacity:0});f.show().animate(b,a.slideInSpeed,g)},function(g){var a=this.getConf(),f=a.slideOffset,
b=a.slideFade?{opacity:0}:{},c=e[a.direction]||e.up,h=""+c[0];if(a.bounce)h=h=="+"?"-":"+";b[c[1]]=h+"="+f;this.getTip().animate(b,a.slideOutSpeed,function(){d(this).hide();g.call()})})})(jQuery);
(function(g){function j(a){var c=g(window),d=c.width()+c.scrollLeft(),h=c.height()+c.scrollTop();return[a.offset().top<=c.scrollTop(),d<=a.offset().left+a.width(),h<=a.offset().top+a.height(),c.scrollLeft()>=a.offset().left]}function k(a){for(var c=a.length;c--;)if(a[c])return false;return true}var i=g.tools.tooltip;i.dynamic={conf:{classNames:"top right bottom left"}};g.fn.dynamic=function(a){if(typeof a=="number")a={speed:a};a=g.extend({},i.dynamic.conf,a);var c=a.classNames.split(/\s/),d;this.each(function(){var h=
g(this).tooltip().onBeforeShow(function(e,f){e=this.getTip();var b=this.getConf();d||(d=[b.position[0],b.position[1],b.offset[0],b.offset[1],g.extend({},b)]);g.extend(b,d[4]);b.position=[d[0],d[1]];b.offset=[d[2],d[3]];e.css({visibility:"hidden",position:"absolute",top:f.top,left:f.left}).show();f=j(e);if(!k(f)){if(f[2]){g.extend(b,a.top);b.position[0]="top";e.addClass(c[0])}if(f[3]){g.extend(b,a.right);b.position[1]="right";e.addClass(c[1])}if(f[0]){g.extend(b,a.bottom);b.position[0]="bottom";e.addClass(c[2])}if(f[1]){g.extend(b,
a.left);b.position[1]="left";e.addClass(c[3])}if(f[0]||f[2])b.offset[0]*=-1;if(f[1]||f[3])b.offset[1]*=-1}e.css({visibility:"visible"}).hide()});h.onBeforeShow(function(){var e=this.getConf();this.getTip();setTimeout(function(){e.position=[d[0],d[1]];e.offset=[d[2],d[3]]},0)});h.onHide(function(){var e=this.getTip();e.removeClass(a.classNames)});ret=h});return a.api?ret:this}})(jQuery);

/*
 * jQuery Tooltip plugin 1.3
 *
 * http://bassistance.de/jquery-plugins/jquery-plugin-tooltip/
 * http://docs.jquery.com/Plugins/Tooltip
 *
 * Copyright (c) 2006 - 2008 Jörn Zaefferer
 *
 * $Id: jquery.tooltip.js 5741 2008-06-21 15:22:16Z joern.zaefferer $
 * 
 * Dual licensed under the MIT and GPL licenses:
 *   http://www.opensource.org/licenses/mit-license.php
 *   http://www.gnu.org/licenses/gpl.html
 */;(function($){var helper={},current,title,tID,IE=$.browser.msie&&/MSIE\s(5\.5|6\.)/.test(navigator.userAgent),track=false;$.tooltip2={blocked:false,defaults:{delay:200,fade:false,showURL:true,extraClass:"",top:15,left:15,id:"tooltip"},block:function(){$.tooltip2.blocked=!$.tooltip2.blocked;}};$.fn.extend({tooltip2:function(settings){settings=$.extend({},$.tooltip2.defaults,settings);createHelper(settings);return this.each(function(){$.data(this,"tooltip",settings);this.tOpacity=helper.parent.css("opacity");this.tooltipText=this.title;$(this).removeAttr("title");this.alt="";}).mouseenter(save).mouseleave(hide).click(hide);},fixPNG:IE?function(){return this.each(function(){var image=$(this).css('backgroundImage');if(image.match(/^url\(["']?(.*\.png)["']?\)$/i)){image=RegExp.$1;$(this).css({'backgroundImage':'none','filter':"progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true, sizingMethod=crop, src='"+image+"')"}).each(function(){var position=$(this).css('position');if(position!='absolute'&&position!='relative')$(this).css('position','relative');});}});}:function(){return this;},unfixPNG:IE?function(){return this.each(function(){$(this).css({'filter':'',backgroundImage:''});});}:function(){return this;},hideWhenEmpty:function(){return this.each(function(){$(this)[$(this).html()?"show":"hide"]();});},url:function(){return this.attr('href')||this.attr('src');}});function createHelper(settings){if(helper.parent)return;helper.parent=$('<div id="'+settings.id+'"><h3></h3><div class="body"></div><div class="url"></div></div>').appendTo(document.body).hide();if($.fn.bgiframe)helper.parent.bgiframe();helper.title=$('h3',helper.parent);helper.body=$('http://www.thesquad.com.au/javascript/div.body',helper.parent);helper.url=$('http://www.thesquad.com.au/javascript/div.url',helper.parent);}function settings(element){return $.data(element,"tooltip");}function handle(event){if(settings(this).delay)tID=setTimeout(show,settings(this).delay);else
show();track=!!settings(this).track;$(document.body).bind('mousemove',update);update(event);}function save(){if($.tooltip2.blocked||this==current||(!this.tooltipText&&!settings(this).bodyHandler))return;current=this;title=this.tooltipText;if(settings(this).bodyHandler){helper.title.hide();var bodyContent=settings(this).bodyHandler.call(this);if(bodyContent.nodeType||bodyContent.jquery){helper.body.empty().append(bodyContent)}else{helper.body.html(bodyContent);}helper.body.show();}else if(settings(this).showBody){var parts=title.split(settings(this).showBody);helper.title.html(parts.shift()).show();helper.body.empty();for(var i=0,part;(part=parts[i]);i++){if(i>0)helper.body.append("<br/>");helper.body.append(part);}helper.body.hideWhenEmpty();}else{helper.title.html(title).show();helper.body.hide();}if(settings(this).showURL&&$(this).url())helper.url.html($(this).url().replace('http://','')).show();else
helper.url.hide();helper.parent.addClass(settings(this).extraClass);if(settings(this).fixPNG)helper.parent.fixPNG();handle.apply(this,arguments);}function show(){tID=null;if((!IE||!$.fn.bgiframe)&&settings(current).fade){if(helper.parent.is(":animated"))helper.parent.stop().show().fadeTo(settings(current).fade,current.tOpacity);else
helper.parent.is(':visible')?helper.parent.fadeTo(settings(current).fade,current.tOpacity):helper.parent.fadeIn(settings(current).fade);}else{helper.parent.show();}update();}function update(event){if($.tooltip2.blocked)return;if(event&&event.target.tagName=="OPTION"){return;}if(!track&&helper.parent.is(":visible")){$(document.body).unbind('mousemove',update)}if(current==null){$(document.body).unbind('mousemove',update);return;}helper.parent.removeClass("viewport-right").removeClass("viewport-bottom");var left=helper.parent[0].offsetLeft;var top=helper.parent[0].offsetTop;if(event){left=event.pageX+settings(current).left;top=event.pageY+settings(current).top;var right='auto';if(settings(current).positionLeft){right=$(window).width()-left;left='auto';}helper.parent.css({left:left,right:right,top:top});}var v=viewport(),h=helper.parent[0];if(v.x+v.cx<h.offsetLeft+h.offsetWidth){left-=h.offsetWidth+20+settings(current).left;helper.parent.css({left:left+'px'}).addClass("viewport-right");}if(v.y+v.cy<h.offsetTop+h.offsetHeight){top-=h.offsetHeight+20+settings(current).top;helper.parent.css({top:top+'px'}).addClass("viewport-bottom");}}function viewport(){return{x:$(window).scrollLeft(),y:$(window).scrollTop(),cx:$(window).width(),cy:$(window).height()};}function hide(event){if($.tooltip2.blocked)return;if(tID)clearTimeout(tID);current=null;var tsettings=settings(this);function complete(){helper.parent.removeClass(tsettings.extraClass).hide().css("opacity","");}if((!IE||!$.fn.bgiframe)&&tsettings.fade){if(helper.parent.is(':animated'))helper.parent.stop().fadeTo(tsettings.fade,0,complete);else
helper.parent.stop().fadeOut(tsettings.fade,complete);}else
complete();if(settings(this).fixPNG)helper.parent.unfixPNG();}})(jQuery);

/*
 * hrefID jQuery extention - returns a valid #hash string from link href attribute in Internet Explorer
 */
(function($){$.fn.extend({hrefId:function(){return $(this).attr('href').substr($(this).attr('href').indexOf('#'));}});})(jQuery);

/*
 * Scripts
 *
 */
 


jQuery(function($) {
	//Add first and last classes to selected lists
	var selectors =new Array(
		".post-list UL .post-container",
		".post-list-sm UL .post-container"
	);
	tagEnds(selectors);
	
	//Clear/Reset Input Fields Calls
	$(".blog-search .txt").focus(function(){clearTxt(this);});
	$(".blog-search .txt").blur(function(){resetTxt(this);});
	
	
	var flowplayerUrl = "flowplayer-3.2.2.swf"/*tpa=http://www.thesquad.com.au/javascript/images/flowplayer/flowplayer-3.2.2.swf*/;

	// Apple detection object
	var Apple = {};

	Apple.UA = navigator.userAgent;
	Apple.Device = false;
	Apple.Types = ["iPhone", "iPod", "iPad"];
	for (var d = 0; d < Apple.Types.length; d++) {
		var t = Apple.Types[d];
		Apple[t] = !!Apple.UA.match(new RegExp(t, "i"));
		Apple.Device = Apple.Device || Apple[t];
	}


	var Engine = {
		utils : {
			links : function(){
				$('a[rel*=external]').click(function(e){
					e.preventDefault();
					window.open($(this).attr('href'));						  
				});
			}
		},
		ui : {
			featured : function(){
				var wrapper = $('#featured');
				if (wrapper.length === 0) {
					return;
				}

				var triggers = wrapper.find('nav a');

				var panes = $('article.featured-pane');

				var close = function(e){

					if (e.type === 'keydown' && e.keyCode !== 27) {
						return;
					}
					e.preventDefault();
					
					if ($.browser.msie) {
						$('article.visible-pane').hide().removeClass('visible-pane');
						$('html').removeClass('pane');
						wrapper.find('nav a.active').show();
					}
					else {
						wrapper.find('nav a.active').stop().animate( { opacity : 1 } );
						$('article.visible-pane').stop().animate({'opacity': 0 }, 'fast', function(){
							$(this).removeClass('visible-pane');
							$('html').removeClass('pane');
						});													
					}
					
					e.target.blur();
					$(document).unbind('keydown',close);
				};

				panes.each(function(){
					//hide all panes
					if ($.browser.msie) {
						$(this).hide();
					}
					else {
						$(this).css('opacity',0);						
					}


					var closeButton = $('<a />',{
						'href' : '#',
						'text' : 'Close',
						'click' : function(e){
							e.preventDefault();
							close(e);
						}
					});

					var p = $('<p class="close" />').append(closeButton);
					$(this).append(p);
				});

				triggers.click(function(e){
					var el = $(e.target).closest('a');
					var pane = $($(el).hrefId());
					$('html').addClass('pane');
					
					//flag for the close function
					el.addClass('active');
					
					if ($.browser.msie) {
						pane.addClass('visible-pane').show();
						el.hide();
					}
					else {
						pane.addClass('visible-pane').stop().animate({'opacity' : 1}, 'fast');						
						el.stop().animate({ opacity : 0 }, 'fast');
					}
					$(document).bind('keydown',close);					
				});
			},
			testimonials : function(){
				var wrap = $('#testimonials');
				if (wrap.length === 0) {
					return;
				}

				var items = wrap.find('article');


				// var nav = $('<nav class="paging" />');
				var nav = $('<nav />',{
					'class' : 'paging'
				});
				nav.append('<h2 class="offset">Testimonials navigation</h2>');
				nav.append('<ul />');

				var activate = function(i){
					var index;
					if(typeof i === 'object'){
						i.preventDefault();	
						index = i.data.index;
					}
					else {
						index = i;
					}			

					if ($.browser.msie) {
						items.filter(':visible').hide();
						items.eq(index).show();
					}
					else {
						items.filter(':visible').fadeTo('fast',0,function(){
							$(this).css('display','none');
							items.eq(index).css({
								'display':'block',
								'opacity' : 0
							}).fadeTo('fast',1);
						});						
					}

					nav.find('li.active').removeClass('active');					
					nav.find('li').eq(index).addClass('active');
				};				

				items.each(function(index, item){

					var id = $(this).attr('id');
					if (!id) {
						id = wrap.attr('id')+'-item-'+(index+1);
						$(this).attr('id',id);
					}

					var trigger = $('<a />',{
						href : '#'+id,
						text : (index + 1)		
					});

					trigger.bind('click',{ index : index }, activate);

					nav.find('ul').append($('<li />').append(trigger));
				});

				wrap.append(nav);	

				//activate first element
				nav.find('li').eq(0).addClass('active');			
				items.eq(0).show();
			},
			portfolio : function(){
				var wrap = $('#portfolio');
				if (wrap.length === 0) {
					return;
				}

				var items = wrap.find('figure');

				var nav = wrap.find('nav');

				var activate = function(i){
					var index;
					if(typeof i === 'object'){
						i.preventDefault();	
						index = i.data.index;
					}
					else {
						index = i;
					}			

					var current = items.filter(':visible');

					if ($.browser.msie) {
						current.hide();
						items.eq(index).show();
					}
					else {
						current.fadeTo('fast',0,function(){
							$(this).css('display','none');
							items.eq(index).fadeTo('fast',1)
						});						
					}
					

					nav.find('li.active').removeClass('active');					
					//offset by one to include back button
					nav.find('li').eq(index + 1).addClass('active');
					
				};				

				items.each(function(index, item){

					var id = $(this).attr('id');
					if (!id) {
						id = 'figure-'+(index+1);
						$(this).attr('id',id);
					}

					var trigger = $('<a />',{
						href : '#'+id,
						text : (index + 1)		
					});

					trigger.bind('click',{ index : index }, activate);

					nav.find('ul').append($('<li />').append(trigger));		

					//activate first element (offset by one to include back button)			
					nav.find('li').eq(1).addClass('active');					

				});				
				
				if (items.length === 1) {
					nav.find('li:eq(1)').hide();
				}
				
				items.eq(0).show();
				
				//tooltip
				$('#portfolio figure img').each(function(e){

					var title = $(this).attr('alt');

					
					var fake = $('<div class="tooltip-a"><div class="wrap">'+title+'</div></div>');
					var left = - Math.floor(parseInt(fake.css('opacity',0).appendTo('body').width(),10) / 2);
					fake.remove();
										
					$(this).tooltip2({
						extraClass : 'tooltip-a',
						showURL : false,
						delay: 0,
						top: -37,
						left: left,
						track : true,
						fade : 250,
						bodyHandler : function(){
							return '<div class="wrap">'+ title +'</div>';
						}
					});	
				});
			},
			tooltips : function(){

				var defaults = {
					layout : '<div class="tooltip-a"><div class="wrap"/></div>',
					offset : [-3, 0],
					effect : 'fade',
					fadeInSpeed: 100,
					fadeOutSpeed: 100
				};
			

				$('#featured-denno img').tooltip($.extend({},defaults,{ offset : [-3 , 12] }));
				$('#featured-russ img').tooltip($.extend({},defaults,{ offset : [-3 , -3] }));
				$('#featured-neha img').tooltip($.extend({},defaults,{ offset : [-3 , 0] }));
				$('#featured-ben img').tooltip($.extend({},defaults,{ offset : [-3 , 0] }));
				$('#featured-matt img').tooltip($.extend({},defaults,{ offset : [-3 , -8] }));
				$('#featured-dan img').tooltip($.extend({},defaults,{ offset : [-3 , -4] }));
				$('#featured-dinesh img').tooltip($.extend({},defaults,{ offset : [-3 , -7] }));
				$('#featured-pragya img').tooltip($.extend({},defaults,{ offset : [-3 , 6] }));
				$('#featured-dans img').tooltip($.extend({},defaults,{ offset : [-3 , -5] }));								
			},
			whatWeDo : function(){
				$('#what-we-do').each(function(){
					var items = $(this).find('figure');
					if (items.length < 2) {
						return;
					}
					
					var 
						current = 0,
						timeout,
						interval = 5000;
					
					var autorotate = function(){
						timeout = setTimeout(function(){
							move(1);
						},interval)
					};
					
					var move = function(pos){
						clearTimeout(timeout)
						items.eq(current).hide();
						
						current = current + pos;
						
						if (current < 0) {
							current = items.length - 1;
						}
						else if (current === items.length) {
							current = 0;
						}
						
						if ($.browser.msie) {
							items.eq(current).show();							
						}
						else {
							items.eq(current).fadeIn();	
						}
						
						autorotate();
					};
					
					//navigation
					var nav = $('<nav />');
					var prev = $('<a />',{
						'class' : 'prev',
						'href' : '#',
						'text' : 'Previous',
						'click' : function(e){
							e.preventDefault();
							move(-1);
						}
					});
					
					var next = $('<a />',{
						'class' : 'next',
						'href' : '#',
						'text' : 'Next',
						'click' : function(e){
							e.preventDefault();
							move(1);
						}
					});
					
					nav.append(prev,next);
					
					$(this).append(nav);	
					
					//autorun
					autorotate();
				});
			}
		}
	};

	Engine.utils.links();
	Engine.ui.featured();
	Engine.ui.testimonials();
	Engine.ui.portfolio();
	Engine.ui.tooltips();
	Engine.ui.whatWeDo();
});

//Add first and last classes to selected lists Functions
function tagEnds (selectors){
	var arrayLength = $(selectors).length - 1
	for (i=0;i<=arrayLength;i++){
		var selectorFirst = selectors[i] + ":first"
		var selectorLast = selectors[i] + ":last"
		$(selectorFirst).addClass("first");
		$(selectorLast).addClass("last");	
	}
}

//Clear/Reset Input Fields Functions
var inputTxt;
function clearTxt (temp){
	inputTxt = $(temp).val();
	if (inputTxt == $(temp).attr("title")){$(temp).val("");}
}
function resetTxt (temp){
	if ($(temp).val() == ""){
		var textReset = $(temp).attr("title")
		$(temp).val(textReset);
	}
}