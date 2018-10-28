$(function(){
    
    // 点击返回顶部

        $('#goTop').click(function(){
            var $timer = setInterval(()=>{
                // 计算缓冲速度（差值使得无论滚动多少，每次返回的时间都几乎一样)
            var $speed = window.scrollY/5;
            scrollBy(0, - $speed);
            if(window.scrollY <= 0){
                clearInterval($timer);
                        // 重置目标值
                        scrollTo(0,0);
                    }
                }, 30);
        }); 


    // 获取列表页传过来的id,从数据库中获取数据
    
    var currentLiId = Cookie.get('id');
    // console.log(currentLiId);
    $.ajax({
        type: "get",
        url: "api/details.php",
        async: true,
        data: {
            'id':currentLiId
        },
        success: function(str){
            // console.log(str)
            var res=str;
            var goodslist = JSON.parse(res);

            $('.show').html(goodslist.map(function(item){
                    return `<div class="showLeft fl">
                        <div class="img">
                           
                        </div>
                    </div>
                    <script type="text/javascript">

                    // 商品图的放大镜效果
                        magnifier(".img",360,360,"${item.image_url}",180,180,360);

                    </script>
                    <div class="showMiddle fl">
                        <div class="title">
                            ${item.title}
                        </div>
                        <div class="priceBox">
                            <p class="RMBprice">
                            价&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;格<span>${item.RMB_price}</span></p>
                            <p class="Otherprice">海外原价<span>${item.Other_price}</span></p>
                            <p class="guansui">进口关税<span>￥20.50（商家承担）</span></p>
                        </div>
                        <div class="shuliang">
                            <p class="fuwu">服&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;务<span>海外直邮</span></p>
                            <div class="shu">
                                数&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;量<p><span class="cut"></span><input class="input" type="text" value="1" /><span class="add"></span></p>
                            </div>
                        </div>
                        <input type="button" id="goCart" value="添加到购物车" />
                    </div>
                    <section class="model_bg"></section>
                    <section class="my_model">
                        <p class="title"><span class="closeModel">X</span></p>
                        <p>商品已添加到购物车！</p>
                        <div class="opBtn"><div class="dialog-sure">跳转到 -> 购物车</div><div class="dialog-close">继续购物</div></div>
                    </section>
                    <div class="showRight fr">
                        <img src="images/show_r.PNG" alt="" />
                    </div>`

                }).join(''));


             // 添加商品到购物车，跳转到购物车

            $('#goCart').click(function(){

                $('.model_bg').fadeIn(300);
                $('.my_model').fadeIn(300);

                var shu = $('.count').html()*1;
                $('.count').html($('.input').val()*1 + shu);

                //同时把数量传给后端保存到数据库
                var IDCookie = Cookie.get('id');
                var num = $('.input').val();
                console.log(num);
                console.log(IDCookie);
                $.ajax({
                    type: "get", 
                    url: "api/reCart.php",
                    async: true,
                    data: {
                        'num':num,
                        'id':IDCookie
                        },
                    success: function(str){
                        console.log(str);
                        var res=str;
                        var goodslist = JSON.parse(res);
                    }
                });
            });

            //关闭模态框
            $('.closeModel').click(function () {
                closeM();
            });
            $('.dialog-close').click(function () {
                closeM();
            });
            function closeM() {
                $('.model_bg').fadeOut(300);
                $('.my_model').fadeOut(300);
            }
            //确定按钮，跳转到购物车页
            $('.dialog-sure').click(function () {
                location.href = '../cart/index.html';
            });


            $('.add').click(function(){
                var $res1 = $('.input').val()*1 + 1;
                $('.input').val($res1);
            });

             $('.cut').click(function(){
                var $res2 = $('.input').val()*1 - 1;
                if($res2 <= 0){
                    $res2 = 1;
                }
                $('.input').val($res2);
            });


             // 导航栏的菜单
     
             var $b = 1;
             $('.classifyAll').click(function(){

                if($b == 1){
                    $('.showList').css('display','block');
                    $b = 0;
                }else{
                    $('.showList').css('display','none');
                    $b = 1;
                }
            });

        }

    });


    
});