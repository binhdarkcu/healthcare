var droplinemenu={arrowimage:{classname:'downarrowclass',src:'down.gif',leftpadding:5},animateduration:{over:200,out:100},buildmenu:function(menuid){jQuery(document).ready(function($){var $mainmenu=$("#"+menuid+" ul#nav")
var $headers=$mainmenu.find("ul").parent()
$headers.each(function(i){var $curobj=$(this)
var $subul=$(this).find('ul:eq(0)')
this._dimensions={h:$curobj.find('a:eq(0)').outerHeight()}
this.istopheader=$curobj.parents("ul").length==1?true:false
if(!this.istopheader)
$subul.css({left:0,top:this._dimensions.h})
var $innerheader=$curobj.children('a').eq(0)
$innerheader=($innerheader.children().eq(0).is('span'))?$innerheader.children().eq(0):$innerheader
$curobj.hover(function(e){var $targetul=$(this).children("ul:eq(0)")
if($targetul.queue().length<=1)
if(this.istopheader)
$targetul.css({left:$mainmenu.position().left,top:$mainmenu.position().top+this._dimensions.h})
if(document.all&&!window.XMLHttpRequest)
$mainmenu.find('ul').css({overflow:(this.istopheader)?'hidden':'visible'})
$targetul.dequeue().slideDown(droplinemenu.animateduration.over)},function(e){var $targetul=$(this).children("ul:eq(0)")
$targetul.dequeue().slideUp(droplinemenu.animateduration.out)})})
$mainmenu.find("ul").css({display:'none',visibility:'visible',width:$mainmenu.width()})
jQuery('#nav .sub-menu').each(function(){var parentMenu=jQuery(this).parent();var imgSrc=jQuery(parentMenu).find('i.fa').attr('data-src');console.log(imgSrc);jQuery(this).prepend('<img src="'+imgSrc+'" class="leftImg"/>')})})}};