$(function(){$("body").append("<span class="txt"></span>");var t=$(".txt");t.css({position:"absolute",color:"#008ed4"});$(document).on("click",function(o){var a=["自由","民主","富强","希望","和平","积极","向上","进取"],n=a[Math.floor(Math.random()*a.length)],p=o.pageX-32+"px",c=o.pageY-18+"px";t.text(n),t.css({left:p,top:c}),function(t){t.stop().animate({top:"-=80px",opacity:"1"},500,function(){$(this).animate({opacity:"0"},500)})}(t)})});