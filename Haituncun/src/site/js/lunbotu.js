// $(function() {

// 	var aLis = $('#slider_img li'); //所有的图片
// 	var iW = aLis.eq(0).width(); //运动的宽度

// 	//1、动态创建焦点
// 	var html = '';
// 	for(var i = 0; i < aLis.length; i++) {
// 		html += '<span>' + i + '</span>';
// 	}
// 	console.log(html);
// 	$('#light').html(html);
// 	$('#light span').eq(0).addClass('active');

// 	//2、开定时器让图片动起来
// 	//图片统一放在右侧，第一张图片放在可视区

// 	$('#slider_img li').css('left', iW + 'px');
// 	$('#slider_img li').eq(0).css('left', 0);

// 	//开定时器运动
// 	var now = 0;
// 	var timer = null;

// 	clearInterval(timer);
// 	timer = setInterval(next, 2000); //每隔两秒切换一个图片

// 	function next() {
// 		//旧
// 		$('#slider_img li').eq(now).animate({
// 			'left': -iW
// 		}, 1000);

// 		now = ++now > $('#slider_img li').length - 1 ? 0 : now;
// 		//		//新
// 		$('#slider_img li').eq(now).css('left', iW + 'px');
// 		$('#slider_img li').eq(now).animate({
// 			'left': 0
// 		}, 1000);
// 		light();
// 	}
// 	//3.焦点跟随

// 	function light() {
// 		$('#light span').eq(now).addClass('active').siblings().removeClass('active');
// 	}

// 	//鼠标经过停下来
// 	$('#slider').hover(function() {
// 		clearInterval(timer);
// 	}, function() {
// 		timer = setInterval(next, 2000);
// 	});

// 	//4.点击焦点切换图片
// 	$('#light span').click(function() {

// 		if($(this).index() > now) {
// 			//右侧切入
// 			$('#slider_img li').eq(now).animate({
// 				'left': -iW
// 			}, 1000);
// 			$('#slider_img li').eq($(this).index()).css('left', iW + 'px');
// 			$('#slider_img li').eq($(this).index()).animate({
// 				'left': 0
// 			}, 1000);
// 			now = $(this).index();
// 			light();
// 		}

// 		if($(this).index() < now) {
// 			//从左侧进入
// 			$('#slider_img li').eq(now).animate({
// 				'left': iW
// 			}, 1000);
// 			$('#slider_img li').eq($(this).index()).css('left', -iW + 'px');
// 			$('#slider_img li').eq($(this).index()).animate({
// 				'left': 0
// 			}, 1000);
// 			now = $(this).index();
// 			light();
// 		}
// 	});

// 	//5.点击左右按钮切换
// 	var oldtime = new Date();
// 	$('#prev').click(function() {
// 		//上一张
// 		//旧的
// 		if(new Date() - oldtime >= 500) {
// 			//如果点击的时间间隔太短，认为是无效的点击
// 			$('#slider_img li').eq(now).animate({
// 				'left': iW
// 			}, 1000);
// 			now = --now < 0 ? $('#slider_img li').length - 1 : now;
// 			//新的
// 			$('#slider_img li').eq(now).css('left', -iW + 'px');
// 			$('#slider_img li').eq(now).animate({
// 				'left': 0
// 			}, 1000);
// 		}else{}

// 	});

// 	$('#next').click(function() {
// 		//下一张
// 		next();
// 	});

// });
// 
document.addEventListener('DOMContentLoaded',function(){
		var s1 = new Swiper('.swiper-container', {
				autoplay: { //自动轮播+延时两秒
					delay:2000,
					disableOnInteraction:false
				},
				loop: true,//无缝回路轮播
				speed: 500,//切换速度
				navigation: {//上下按钮
					nextEl: '.swiper-button-next',
					prevEl: '.swiper-button-prev'
				},
				pagination: {//焦点跟随
					el: '.swiper-pagination',
					clickable: true,//点击焦点跳到指定图片
					renderBullet: function(index, className) {
						return '<span class="' + className + '">' + (index + 1) + '</span>';//生成焦点数字
					}
				},
				mousewheel:true//滚动滑轮可以切图

			});
			
			var oBox=document.getElementById('swiper-container');
			
			oBox.onmouseover=function(){//鼠标经过停止
				s1.autoplay.stop();
			}
			
			oBox.onmouseout=function(){//鼠标经过离开
				s1.autoplay.start();
			}
})