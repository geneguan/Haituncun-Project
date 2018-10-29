/* 
* @Author: Marte
* @Date:   2018-10-19 20:39:49
* @Last Modified by:   Marte
* @Last Modified time: 2018-10-27 14:30:34
*/

$(function(){
          
   
    $(".show01a").on("mouseover",function(){
        console.log(666);
        $(".normal-box01").show();
    })
    $(".normal-box01").on("mouseleave",function(){
        $(this).hide();
    })
        
    $("#headbar").on('mouseover','.login-show-a',function(){
        $(this).css('color','red');
    })
    $("#headbar").on('mouseleave','.login-show-a',function(){
        $(this).css('color','grey');
    })

    $('.nav_li1').on('mouseover','.nav_li1_a',function(){
        $(this).css('color','red');
    })
    $('.nav_li1').on('mouseleave','.nav_li1_a',function(){
        $(this).css('color','black');
    })

    $('.bannerPinpai').on('mouseover','img',function(){
        $(this).css('opacity','0.7');

    })
    $('.bannerPinpai').on('mouseleave','img',function(){
        $(this).css('opacity','1');
    })
// .......
    $(".bannerNav").on('mouseover','a',function(){
        $(this).css('color','red');
    })
    $(".bannerNav").on('mouseleave','a',function(){
        $(this).css('color','black');
    })
    

    

   
    window.onscroll=function(){
        // console.log(666);
        if(window.scrollY>=400){
            $('.xiding').show();
        }
        else{
            $('.xiding').hide();
        }
    }

})