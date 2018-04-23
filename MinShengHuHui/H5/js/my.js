// JavaScript Document
//editor panda
//date 2015-8-3
$(function(){
	$(".tab-title li").click(function(){
		$(".tab-title li").removeClass("active");
		$(this).addClass("active");
		var index = $(this).index();
		$(".coupon-cont li").removeClass("active");
		$(".coupon-cont li").eq(index).addClass("active");
	})
	$(".jl-title").click(function(){
		$(this).parents(".jl-cont").find(".jl-list").toggle();
	})
	$(".coupon-intro").click(function(){
		$(this).toggleClass("active");
		$(this).next(".coupon-intros").toggle();
	})
	var imgHeight = $(".b-swiper-container .swiper-wrapper img").height();
	$(".b-swiper-container .swiper-wrapper").height(imgHeight);
	$(".order-detail-tab li").click(function(){
		$(".order-detail-tab li").removeClass("active");
		$(this).addClass("active");
		var index = $(this).index();
		$(".order-manage li").removeClass("active");
		$(".order-manage li").eq(index).addClass("active");
	})
	$(".wish-order-tab li").click(function(){
		$(".wish-order-tab li").removeClass("active");
		$(this).addClass("active");
		var index = $(this).index();
		$(".wish-order-list li").removeClass("active");
		$(".wish-order-list li").eq(index).addClass("active");
	})
	$(".coupon-cont dl dd").click(function(){
		var flag = $(this).hasClass("active");
		if(flag){
			$(this).removeClass("active");
			$(this).parents("li").find(".coupon-info").removeClass("active");
		}else{
			$(".coupon-cont dl dd").removeClass("active");
			$(this).addClass("active");
			$(this).parents("li").find(".coupon-info").removeClass("active");
			$(this).next(".coupon-info").addClass("active");
		}
	});
	$(".close-icon").click(function(){
		$(this).parents(".dialog-cont-wapper").hide();
	});
	$(".footer-cont ul li").click(function(){
		$(".footer-cont ul li").removeClass("active");
		$(this).addClass("active");
	});
	$(".dialog-cont-wapper").click(function(){
		$(".dialog-cont-wapper").hide();
	});
	$(".share-dialog-cont").click(function(event){
		event.stopPropagation();
	})
})