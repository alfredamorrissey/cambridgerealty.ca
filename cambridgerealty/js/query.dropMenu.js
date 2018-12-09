var timeout			= 500;
var closetimer		= 0;
var ddmenuitem		= 0;
var ddmenutop		= 0;

function jsddm_open()
{	
	jsddm_canceltimer();
	jsddm_close();
	ddmenuitem = $(this).find('ul').eq(0).css('visibility', 'visible');
	ddmenutop = $(this).find('a').eq(0).addClass('liveMenu');
}

function jsddm_close()
{	
	if(ddmenuitem) ddmenuitem.css('visibility', 'hidden');
	if(ddmenutop) ddmenutop.removeClass('liveMenu');
}

function jsddm_timer()
{	closetimer = window.setTimeout(jsddm_close, timeout);}

function jsddm_canceltimer()
{	if(closetimer)
	{	window.clearTimeout(closetimer);
		closetimer = null;}}

$(document).ready(function()
{	$('#jsddm > li').bind('mouseover', jsddm_open);
	$('#jsddm > li').bind('mouseout',  jsddm_timer);});

document.onclick = jsddm_close;