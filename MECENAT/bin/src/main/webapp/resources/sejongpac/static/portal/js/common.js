$(function(){
	$(".category .active a").attr("title","선택됨");
	$(".tabs-st4 .active a").attr("title","선택됨");
	$('.com_s .s').slick({
	});
	
	// 검색 인풋 활성화
	$('.bbs-sch input[type=text]').focusin(function(event) {
		$(this).closest('.bbs-sch').addClass('focus')
	}).focusout(function(event) {
		$(this).closest('.bbs-sch').removeClass('focus')
	});
	$( "#gnb .link .t" ).bind( "mouseenter focus", function() {
	  $(this).next(".depth").show()
	});
	$("#gnb .depth").mouseleave(function(){
		$(this).hide()
	})
	$("#gnb .depth > li:last-child a").blur(function(){
		$("#gnb .depth").hide()
	})
$("#top_nav > ul > li").hover(function(){
	//$(this).find(".depth2").stop(true,true).slideDown(150);
	$(this).addClass('on');
},function(){
	//$(this).find(".depth2").stop(true,true).slideUp(150);
	$(this).removeClass('on');
})
$("#top_nav .depth2 > li").hover(function(){
	//$(this).find(".depth3").stop(true,true).slideDown(150);
	$(this).parent('li').addClass('on');
},function(){
	//$(this).find(".depth3").stop(true,true).slideUp(150);
})
$("#top_nav > ul > li > a").focus(function(){
	$(this).parent('li').addClass('on');
	$('#top_nav > ul > li > a').not(this).parent('li').removeClass('on');
})
$('#top_nav > ul > li:last-child > a').blur(function(){
	//$(this).parent('li').removeClass('on');
});

$("#top_nav .depth2 > li").hover(function(){
	//$(this).find(".depth2").stop(true,true).slideDown(150);
	$(this).addClass('on');
},function(){
	//$(this).find(".depth2").stop(true,true).slideUp(150);
	$(this).removeClass('on');
})
$("#top_nav .depth2 > li > a").focus(function(){
	$(this).parent('li').addClass('on');
	$('#top_nav .depth2 > li > a').not(this).parent('li').removeClass('on');
})
$("#top_nav .depth3 li:last-child > a").blur(function(){
	//alert('1');
	$(this).parent('li').removeClass('on');
	//$(this).closest('.depth2').parent("li").next("li").find("a").foucs();
});

$('#top_nav .depth2 > li:last-child .depth3 > li:last-child a').blur(function(){
	$(this).parents('li').removeClass('on');
});

$("#top_nav .depth2 > li:last-child a").on('blur', function(){
	$(this).parents('.depth2').removeClass('on');
});

$('#footer .r button').click(function(){
    var url = $(this).prev('select').find(':selected').val();
    if (url!='') {
    	window.open(url)
    }else{alert('선택된 사이트가 없습니다.')}

});
$('.foot_notice .fs').slick({
	vertical:true,
	verticalSwiping:true
});
$("#gnb .btn-sch").click(function(){
	//alert("점검중입니다."); return;
	$("#header").append("<div class='sch_bg'></div>")
	$("#top_sch").slideDown(150)
})
$("#top_sch .close").click(function(){
	$("#top_sch").slideUp(150);
	$(".sch_bg").remove()
	$("#gnb .btn-sch").focus();
})

$("#top_sch .close-pop").blur(function(){
	$("#top_sch").slideUp(150);
	$(".sch_bg").remove()
	$("#gnb .btn-sch").focus();
})

$(".gotop").css("opacity","0.7");
var speed = 500;
$(".gotop").css("cursor", "pointer").click(function()
{
		$('body, html').animate({scrollTop:0}, speed);
});
$(window).scroll(function () {
		if ($(this).scrollTop() > 100) {
				$('.gotop').fadeIn();
		} else {
				$('.gotop').fadeOut();
		}
});
$( "#btn-menu").off('click').click(function() {
    if ($(this).hasClass("open")){
        $(this).removeClass("open")
        $( ".allmenu" ).fadeOut(150)
    }else{
        $(this).addClass("open")
        $( ".allmenu" ).fadeIn(150)
    }
    $(".btn-close_m").off('click').click(function(){
        $( ".allmenu" ).fadeOut(150)
        $("#btn-menu").removeClass("open")
    });
});
$('#top_nav .depth2 > li').each(function () {
	if($(this).find("a").next().is(".depth3")){
		$(this).addClass("arrow")
	}
})
$("#lnb_m .depth2 > li > a").click(function(){
	if($(this).next().is('.depth3')){
		$("#lnb_m .depth2 > li > a").removeClass("on");
		$(".allmenu .depth3").slideUp();
		if(!$(this).next().is(":visible"))
		{
			$(this).next().slideDown();
			$(this).addClass("on");
		}else{
			$(this).removeClass("on");
		}
			return false;
		}
	});

	function movewrap(){
var tX = 0,
  tY = 0,
  x = 0,
  y = 0,
  mM = 1 / 30;
function visualmove() {
  x += (tX - x) * mM;
  y += (tY - y) * mM;
  translate = 'translate(' + x + 'px, ' + y + 'px) scale(1.1)';
  $('#sub_visual .bg').css({
    '-webit-transform': translate,
    '-moz-transform': translate,
    'transform': translate
  });
  window.requestAnimationFrame(visualmove);
}
$(window).on('mousemove click', function(e) {
  var mX = Math.max(-80, Math.min(80, $(window).width() / 2 - e.clientX));
  var mY = Math.max(-80, Math.min(80, $(window).height() / 2 - e.clientY));
  tX = (20 * mX) / 80;
  tY = (10 * mY) / 80;
});

visualmove();
}
movewrap()
$('.sub-t strong').animate({'opacity':1},300);
$('.sub-t strong').delay(150).queue(function(next) {
  $(this).addClass("ani");
});
})
/*
$('.btn-book').click(function() {
	$("body").append('<div class="allmenu_bg"></div>');
	$(".allmenu_bg").append('<div class="modal_w" id="pop-schedule"></div>');

	$.ajax({
		url: "/portal/performance/scheduleMng/monthSchedule.do?viewType=CONTBODY",
		success: function(result){
			$(".modal_w").html(result);
			modalH = $(".modal_w").outerHeight();
			$(".modal_w").attr("tabindex", "0").show().focus();
			$(".modal_w").css({"margin-top":-(modalH/2)});
			
			placePopTxt();
			
			$(".layerClose").click(function(){
				$(".modal_w").removeAttr("tabindex").remove();
				$(".allmenu_bg").remove();
				$(".btn-book").focus();
				return false;
			});
			$(window).resize(function(){
			modalH = $(".modal_w").outerHeight();
			$(".modal_w").css({"margin-top":-(modalH/2)});
		});
	}});
	return false;
});
*/
function popup_com(target,test){
	$("body").append('<div class="allmenu_bg"></div>');
	$(".allmenu_bg").append('<div class="modal_w wide2 pop-trans"></div>')
	$.ajax({
		url: test + ".jsp",
		success: function(result){
		$(".modal_w").html(result);
		$(".modal_w").attr("tabindex", "0").show().focus();
		$(".layerClose").click(function(){
		 $(".modal_w").removeAttr("tabindex").remove();
		 $(".allmenu_bg").remove();
		 $(target).focus();
		return false;
	});
	}});
}

function placePopTxt(){
	$(".tbl-call").find(".cont").each(function(){
		$(this).find("li").find(".label").each(function(){
			var $_thisClass = $(this).attr("class");
			if ($_thisClass ==  "label bg-navy") {
				var stxt = $(this).find("span").text();
				$(this).parent().attr("title", "전시미술관");
				$(this).find("span").text(stxt + " - 전시미술관" );
			} else if ($_thisClass ==  "label bg-purple") {
				var stxt = $(this).find("span").text();
				$(this).parent().attr("title", "세종대극장");
				//$(this).find("span").text(stxt + " - 세종대극장" );
			} else if ($_thisClass ==  "label bg-blue2") {
				var stxt = $(this).find("span").text();
				$(this).parent().attr("title", "세종s씨어터");
				//$(this).find("span").text(stxt + " - 세종s씨어터" );
			} else if ($_thisClass ==  "label bg-yellow") {
				var stxt = $(this).find("span").text();
				$(this).parent().attr("title", "세종체임버홀");
				//$(this).find("span").text(stxt + " - 세종체임버홀" );
			} else if ($_thisClass ==  "label bg-orange2") {
				var stxt = $(this).find("span").text();
				$(this).parent().attr("title", "세종m씨어터");
				//$(this).find("span").text(stxt + " - 세종m씨어터" );
			} else if ($_thisClass ==  "label bg-pink") {
				var stxt = $(this).find("span").text();
				$(this).parent().attr("title", "연계공연장");
				$(this).find("span").text(stxt + " - 연계공연장" );
			} else if ($_thisClass ==  "label bg-green") {
				var stxt = $(this).find("span").text();
				$(this).parent().attr("title", "기타");
				$(this).find("span").text(stxt + " - 기타" );
			}
		});
	});
}

(function () {
  document.head.appendChild(document.createElement("style")).innerHTML =
    "body.hide-focus-ring *:focus { outline: none !important; }";

  var focusRing = true;
  document.addEventListener("mousedown", function focusRingHandler() {
    if (focusRing) document.body.classList.add("hide-focus-ring");
    focusRing = false;
  });
  document.addEventListener("keydown", function focusRingHandler() {
    if (!focusRing) document.body.classList.remove("hide-focus-ring");
    focusRing = true;
  });
})();