function setCookie( name, value, expirehours ) {
	var todayDate = new Date();
	todayDate.setHours( todayDate.getHours() + expirehours );
	document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"
}
function closeWin(id, checkbox) {
	if ( checkbox.checked ){
		setCookie(id, "done", 1);
	}
}

$(function(){
	ani1 = $(".main_quick .t, .main_quick .tit .txt")
	ani2 = $(".main_quick .icon")

	$(window).resize(function(){
		if ( $(window).width() > 1024 ){
			$('.wrap').animate({opacity:1},1)
		}else {
		}
	}).resize();

	$("#popup_layer").delay(1300).fadeIn()


	ani1.delay(1800).animate({top:"0",opacity:1},1000,'easeInQuad')
	ani2.delay(2500).animate({opacity:1},800)

	var $main = $('#main_visual .ms')
	 $('#main_visual .ms').slick({
		  	slidesToShow: 1,
		  	slidesToScroll: 1,
		  	fade: true,
		  	dots: false,
		  	autoplay: true,
			autoplaySpeed: 5000,
			prevArrow: $('#main_visual .prev'),
			nextArrow: $('#main_visual .next'),
			//appendDots:'.thumb_w',
	        customPaging: function (slider, i) {
           //var thumb = $(slider.$slides[i]).find('img.thumb').attr('src')
           //return '<a><img src="'+thumb+'" alt=""></a>';
	           return '<a role="button" class="tab" href="#">' + $('.ms2 li:nth-child(' + (i + 1) + ')').html() + '</a>';
	        },
	        responsive: [
	        	{
	        		breakpoint: 640,
	        		settings: {
	        			fade:false,
	        			dots: false,
	        			//centerMode: true,
	        			slidesToShow: 1
	        		}
	        	}
	        ],
	        asNavFor: '.ms2'
		});
	
		$('.ms2').slick({
			slidesToShow: 10,
			slidesToScroll: 1,
			asNavFor: '.ms',
			focusOnSelect: true,
			prevArrow: $('#main_visual .prev'),
			nextArrow: $('#main_visual .next'),
			responsive : [
				{
					breakpoint : 1401,
					settings : {
						slidesToShow : 7
					}
				}
			]
		});
		
		if( $('.ms2').slick('getSlick').options.slidesToShow >= $('.ms2').slick('getSlick').slideCount ){
			$('.ms2').find('.slick-track').addClass('fixedSlick');
		}
		
		

	 $(".slick-dots li:first-child a").attr({"title":"선택됨"});

		$('#main_visual .ms').on('init reInit afterChange', function (event, slick, currentSlide, nextSlide) {
		    if ($(".slick-dots li").hasClass("slick-active")){
		    	$(".slick-dots a").removeAttr( "title" )
		    	$(".slick-dots .slick-active a").attr({"title":"선택됨"})
		    }else{
		    	$(".slick-dots a").removeAttr( "title" )
		    }
		});

		var size = "";
		$(window).resize(function(){
	      var m_w = $(window).width();
	      var q_w = $(".main_quick").outerWidth();
	      if ( m_w > 1350 ) {
  	  			size = -q_w
					//$(".main_quick").css("right",size)
				//$(".main_quick").delay(8000).animate({"right":-q_w},800)
	      }else {
	    	  $(".btn-quick").removeClass("close").addClass("open").find("span").text("Open")
				size = -q_w
				$(".main_quick").css("right",-q_w)
	      }
	  	}).resize();

		$(".btn-quick").click(function(){
			if($(this).hasClass('open')){
				$(".main_quick").stop().animate({"right":0},300)
				$(".main_quick .icon").delay(150).stop().fadeIn(300)
	          $(this).removeClass('open').addClass('close').find("span").text('Close');
	        }else{
				$(".main_quick").stop().animate({"right": size},300)
				$(".main_quick .icon").delay(150).stop().fadeOut(300)
	          $(this).removeClass('close').addClass('open').find("span").text('Open');
	        }
		})

	$('#main_visual .controls').click(function(e){
	if($(this).hasClass('stop')){
		$main.slick('slickPause');
		$(this).removeClass('stop').addClass('play').text('재생');
	}else{
		$main.slick('slickPlay');
		$(this).removeClass('play').addClass('stop').text('정지');
	}
	});

	//추천 프로그램
	var $m2 = $('#m2 .s')
	$m2.slick({
		slidesToShow: 5,
		slidesToScroll: 1,
		prevArrow: $('#m2 .prev'),
		nextArrow: $('#m2 .next'),
		autoplay: true,
		autoplaySpeed: 5000,
	  responsive: [
	    {
	      breakpoint: 1280,
	      settings: {
	        slidesToShow: 4
	      }
	    },
	    {
	      breakpoint: 640,
	      settings: {
	        slidesToShow: 3
	      }
	    },
	    {
	      breakpoint: 480,
	      settings: {
	        slidesToShow: 2
	      }
	    }
	  ]
	});
	
	//20221014 웹접근성 
	/*$m2.on('afterChange', function(event, slick, currentSlide, nextSlide){
		$("#m2").find('.rel').removeAttr('tabindex');
		$("#m2 .slick-active").find('.rel').attr('tabindex','0');
	});*/
	
	$('#m2 .controls').click(function(e){
	if($(this).hasClass('stop')){
		$m2.slick('slickPause');
		$(this).removeClass('stop').addClass('play').text('재생');
	}else{
		$m2.slick('slickPlay');
		$(this).removeClass('play').addClass('stop').text('정지');
	}
	});
	
	//20221014 웹접근성 
	//$("#m2 .slick-active").find('.rel').attr('tabindex','0');

	//추천 프로그램
	var $m3 = $('.m_social .s')
	$m3.slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		prevArrow: $('.m_social .prev'),
		nextArrow: $('.m_social .next'),
		autoplay: true,
		autoplaySpeed: 3000,
		fade:true,
		adaptiveHeight:true
	});
	$('.m_social .controls').click(function(e){
	if($(this).hasClass('stop')){
		$m3.slick('slickPause');
		$(this).removeClass('stop').addClass('play').text('재생');
	}else{
		$m3.slick('slickPlay');
		$(this).removeClass('play').addClass('stop').text('정지');
	}
	});


	//서울시 예술단
	var $m4 = $('.top .s')
	$m4.slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		prevArrow: $('.top .prev'),
		nextArrow: $('.top .next'),
		autoplay: true,
		autoplaySpeed: 3000,
		fade:true,
		adaptiveHeight:true
	});
	$('.top .controls').click(function(e){
	if($(this).hasClass('stop')){
		$m4.slick('slickPause');
		$(this).removeClass('stop').addClass('play').text('재생');
	}else{
		$m4.slick('slickPlay');
		$(this).removeClass('play').addClass('stop').text('정지');
	}
	});

	//팝업존
	var $m5 = $('#m4 .s')
	$m5.slick({
		slidesToShow: 2,
		slidesToScroll: 1,
		prevArrow: $('#m4 .prev'),
		nextArrow: $('#m4 .next'),
		autoplay: true,
		autoplaySpeed: 5000,
  responsive: [
    {
      breakpoint: 1024,
      settings: {
        slidesToShow: 3
      }
    },
    {
      breakpoint: 640,
      settings: {
        slidesToShow: 2
      }
    },
    {
      breakpoint: 320,
      settings: {
        slidesToShow: 1
      }
    }
  ]
	});
	$('#m4 .controls').click(function(e){
	if($(this).hasClass('stop')){
		$m5.slick('slickPause');
		$(this).removeClass('stop').addClass('play').text('재생');
	}else{
		$m5.slick('slickPlay');
		$(this).removeClass('play').addClass('stop').text('정지');
	}
	});
$("#m1 li").hover(function(){
	$(this).find(".img").stop().animate({top:"-.45em"},100)
},function(){
	$(this).find(".img").stop().animate({top:"0"},100)
})
    var m1Slider = "";
    $(window).resize(function(){
      var m_w = $(window).width();
      if ( m_w > 1300 ) {
          $("#m1 .s").removeClass("ms");
          if(m1Slider != "") m1Slider.slick('unslick');;
      }else {
          if(!$('#m1 .s').hasClass('ms')){
              $("#m1 .s").addClass("ms");
              m1Slider = $('#m1 .ms').slick({
          		slidesToShow: 8,
        		slidesToScroll: 1,
        		arrows:false,
        		dots:true,
          responsive: [
           {
               breakpoint: 1024,
               settings: {
                 slidesToShow: 7
               }
             },
             {
                 breakpoint: 800,
                 settings: {
                   slidesToShow: 6
                 }
               },
            {
              breakpoint: 640,
              settings: {
                slidesToShow: 5
              }
            },{
              breakpoint: 480,
              settings: {
                slidesToShow: 4
              }
            },{
              breakpoint: 420,
              settings: {
                slidesToShow: 3
              }
            },
          ]
        	});
          }
      }
  }).resize();

    $('.banner .s').slick({
    	arrows:false,
    	dots:true,
		autoplay: true,
		autoplaySpeed: 3000,
		fade : true
    });
    
    
    
    
    // main visual quick
    var $visualQuickBtn = $('.mainVisualQuick .closeBtn');
    
    $visualQuickBtn.on('click', function(){
    	var $checkTarget = $(this).closest('.mainVisualQuick')
    	if( !$checkTarget.hasClass('active') ){
    		$(this).text('CLOSE');
    		$checkTarget.addClass('active');
    	}else{
    		$(this).text('OPEN');
    		$checkTarget.removeClass('active');
    	}
    	return false;
    });




})
