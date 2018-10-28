/* 
* @Author: Marte
* @Date:   2018-10-25 10:45:36
* @Last Modified by:   Marte
* @Last Modified time: 2018-10-28 19:26:06
*/

$(function(){


function Show(){}
    // 点击推荐按钮
    $('.tuijian').click(function(){
        $(this).css('border','2px solid #f90');
        $('.price').css('border','2px solid #efefef');

        // 请求数据
        $.ajax({
            type: "get",
            url: "api/liebiaoye_1.php",
            async: true,
            success: function(str){
                var res=str;
                var goodslist = JSON.parse(res);
                // console.log(goodslist);

                $('.goodslist1').html(goodslist.map(function(item){
                    return `<li class="goods" data-id='${item.id}'>
                    <img src="${item.image_url}" alt="" width="208" height="220" />
                    <div class="text">
                    <p class="RMBprice">${item.RMB_price}</p>
                    <h2>${item.title}</h2>
                    </div>
                    </li>`;

                }).join(''));
            }
            
        });


    });

    // 点击价格按钮
    var $a = 1;
    $('.price').click(function(){
        $(this).css('border','2px solid #f90');
        $('.tuijian').css('border','2px solid #efefef');
        if($a == 1){
            $('.price_img').attr('src','images/up.png');

            // 请求数据
            $.ajax({
                type: "get",
                url: "api/liebiaoye_1.php",
                async: true,
                success: function(str){
                    var res=str;
                    var goodslist = JSON.parse(res);
                    // console.log(goodslist);

                // 价格从低到高排序（升序）

                    function compareUp(obj1,obj2) {
                        var va1 = obj1.RMB_price;
                        var va2 = obj2.RMB_price;
                        if(va1 < va2) {
                            return -1;
                        }
                        else if(va1 > va2) {
                            return 1;
                        }
                        else {
                            return 0;
                        }
                    }
                    goodslist.sort(compareUp);

                $('.goodslist1').html(goodslist.map(function(item){
                    return `<li class="goods" data-id='${item.id}'>
                    <img src="${item.image_url}" alt="" width="208" height="220" />
                    <div class="text">
                    <p class="RMBprice">${item.RMB_price}</p>
                    <h2>${item.title}</h2>
                    </div>
                    </li>`;

                }).join(''));
            }
            
        });

            $a = 0;

        }else{
            $('.price_img').attr('src','images/down.png');

            // 请求数据
            $.ajax({
                type: "get",
                url: "api/liebiaoye_1.php",
                async: true,
                success: function(str){
                    var res=str;
                    var goodslist = JSON.parse(res);
                    // console.log(goodslist);

                // 价格从高到低排序（降序）

            function compareDown(obj1,obj2) {
                var va1 = obj1.RMB_price;
                var va2 = obj2.RMB_price;
                if(va1 > va2) {
                    return -1;
                }
                else if(va1 < va2) {
                    return 1;
                }
                else {
                    return 0;
                }
            }
            goodslist.sort(compareDown);

            $('.goodslist1').html(goodslist.map(function(item){
                return `<li class="goods" data-id='${item.id}'>
                <img src="${item.image_url}" alt="" width="208" height="220" />
                <div class="text">
                <p class="RMBprice">${item.RMB_price}</p>
                <h2>${item.title}</h2>
                </div>
                </li>`;

            }).join(''));
        }

    });

            $a = 1;
        }

    });

    // 点击页码，分页显示
    $('.tab1').click(function(){
        $(this).css('border','2px solid #58bc58');
        $('.tab2').css('border','2px solid #ededed');
        $('.goodslist1').css('display','block');
        $('.goodslist2').css('display','none');
    });

    $('.tab2').click(function(){
        $(this).css('border','2px solid #58bc58');
        $('.tab1').css('border','2px solid #ededed');
        $('.goodslist2').css('display','block');
        $('.goodslist1').css('display','none');

    // 请求数据
     $.ajax({
            type: "get",
            url: "api/liebiaoye_2.php",
            async: true,
            success: function(str){
                var res=str;
                var goodslist = JSON.parse(res);
                // console.log(goodslist);

                $('.goodslist2').html(goodslist.map(function(item){
                    return `<li class="goods" data-id='${item.id}'>
                             <img src="${item.image_url}" alt="" width="208" height="220" />
                             <div class="text">
                                <p class="RMBprice">${item.RMB_price}</p>
                                <h2>${item.title}</h2>
                            </div>
                        </li>`;

                }).join(''));
            }
            
        });


     // 点击价格按钮
    var $a = 1;
    $('.price').click(function(){
        $(this).css('border','2px solid #f90');
        $('.tuijian').css('border','2px solid #efefef');
        if($a == 1){
            $('.price_img').attr('src','images/up.png');

            // 请求数据
            $.ajax({
                type: "get",
                url: "api/liebiaoye_2.php",
                async: true,
                success: function(str){
                    var res=str;
                    var goodslist = JSON.parse(res);
                    // console.log(goodslist);

                // 价格从低到高排序（升序）

                    function compareUp(obj1,obj2) {
                        var va1 = obj1.RMB_price;
                        var va2 = obj2.RMB_price;
                        if(va1 < va2) {
                            return -1;
                        }
                        else if(va1 > va2) {
                            return 1;
                        }
                        else {
                            return 0;
                        }
                    }
                    goodslist.sort(compareUp);

                $('.goodslist2').html(goodslist.map(function(item){
                    return `<li class="goods" data-id='${item.id}'>
                    <img src="${item.image_url}" alt="" width="208" height="220" />
                    <div class="text">
                    <p class="RMBprice">${item.RMB_price}</p>
                    <h2>${item.title}</h2>
                    </div>
                    </li>`;

                }).join(''));
            }
            
        });

            $a = 0;

        }else{
            $('.price_img').attr('src','images/down.png');

            // 请求数据
            $.ajax({
                type: "get",
                url: "api/liebiaoye_2.php",
                async: true,
                success: function(str){
                    var res=str;
                    var goodslist = JSON.parse(res);
                    // console.log(goodslist);

                // 价格从高到低排序（降序）

            function compareDown(obj1,obj2) {
                var va1 = obj1.RMB_price;
                var va2 = obj2.RMB_price;
                if(va1 > va2) {
                    return -1;
                }
                else if(va1 < va2) {
                    return 1;
                }
                else {
                    return 0;
                }
            }
            goodslist.sort(compareDown);

            $('.goodslist2').html(goodslist.map(function(item){
                return `<li class="goods" data-id='${item.id}'>
                <img src="${item.image_url}" alt="" width="208" height="220" />
                <div class="text">
                <p class="RMBprice">${item.RMB_price}</p>
                <h2>${item.title}</h2>
                </div>
                </li>`;

            }).join(''));
        }

    });

            $a = 1;
        }

    });

    
     // 点击推荐按钮
    $('.tuijian').click(function(){
        $(this).css('border','2px solid #f90');
        $('.price').css('border','2px solid #efefef');

        // 请求数据
        $.ajax({
            type: "get",
            url: "api/liebiaoye_2.php",
            async: true,
            success: function(str){
                var res=str;
                var goodslist = JSON.parse(res);
                // console.log(goodslist);

                $('.goodslist2').html(goodslist.map(function(item){
                    return `<li class="goods" data-id='${item.id}'>
                    <img src="${item.image_url}" alt="" width="208" height="220" />
                    <div class="text">
                    <p class="RMBprice">${item.RMB_price}</p>
                    <h2>${item.title}</h2>
                    </div>
                    </li>`;

                }).join(''));
            }
            
        });


    });


  });


    // 请求数据
     $.ajax({
            type: "get",
            url: "api/liebiaoye_1.php",
            async: true,
            success: function(str){
                var res=str;
                var goodslist = JSON.parse(res);
                // console.log(goodslist);

                $('.goodslist1').html(goodslist.map(function(item){
                    return `<li class="goods" data-id='${item.id}'>
                             <img src="${item.image_url}" alt="" width="208" height="220" />
                             <div class="text">
                                <p class="RMBprice">${item.RMB_price}</p>
                                <h2>${item.title}</h2>
                            </div>
                        </li>`;

                }).join(''));
            }
            
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


        // 点击商品，跳转到详情页
        
        $('.goodslist1').on('click','li',function(e){
            location.href='http://localhost:1001/html/details/index.html';
            var currentLi= $(this).attr('data-id'); 
            Cookie.set('id',currentLi,{path: '/'});
            console.log(currentLi);
            
        });

        $('.goodslist2').on('click','li',function(e){
            location.href='http://localhost:1001/html/details/index.html';
            var currentLi= $(this).attr('data-id');
            Cookie.set('id',currentLi,{path: '/'});
            console.log(currentLi);
            
        });

});