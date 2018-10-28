
    $(function(){


        //前端请求数据
        $.ajax({
            type: "get",
            url: "../api/goodslist_11.php",
            async: true,
            success: function(str){
                var res=str;
                var goodslist = JSON.parse(res);
                // console.log(goodslist);

                $('.show_11').html(goodslist.map(function(item){
                    return `<a href="html/liebiaoye/index.html"><li>
                        <img src="${item.image_url}" alt="" width="160" height="160" />
                        <div class="text2">
                            <h2>${item.title}</h2>
                            <p>
                                <span class="RMBprice">${item.RMB_price}</span>
                                <span class="Otherprice">${item.Other_price}</span>
                            </p>
                        </div>
                        </li></a>`

                }).join(''));
            }
            
        });

        $.ajax({
            type: "get",
            url: "../api/goodslist_12.php",
            async: true,
            success: function(str){
                var res=str;
                var goodslist = JSON.parse(res);
                console.log(goodslist);

                $('.list').html(goodslist.map(function(item){
                    return `<a href="html/liebiaoye/index.html"><li>
                        <img src="${item.image_url}" alt="" width="80" height="80" />
                        <div>
                            <h2>${item.title}</h2>
                            <p>${item.RMB_price}</p>
                        </div>
                        </li></a>`

                }).join(''));
            }
            
        });


        // 轮播图
        
        var $list = $('#imgList').children();
        var $tabs = $('.tab').children();
        
        var $se = ['#C0E9ED','#E4EFF5','#B9AEA8'];
        var $index = 0;
        $('.bannerAuto').mouseover(function(){
            clearInterval($timer);
        });
        $('.bannerAuto').mouseout(function(){
            $timer = setInterval(auto,3000);
        });

        for(let i=0;i<$list.length;i++) {
            if(i === 0) {
                $tabs[i].className = 'active';
                $('#banner').css('background',$se[i]);
            }
            else {
                $list[i].style.display = 'none';
            }
            (function(i){
                $tabs[i].onmouseover = function(){
                    $index = i;
                    show(i);
                }
            })(i);
        }
        function show(idx) {
            for(let j=0;j<$list.length;j++) {
                if(j === idx) {
                    $list[j].style.display = 'block';
                    $tabs[j].className = 'active';
                    $('#banner').css('background',$se[idx]);
                }
                else {
                    $list[j].style.display = 'none';
                    $tabs[j].className = '';
                }
            }
        }

        var $timer = setInterval(auto,3000);

        function auto() {
            $index++;
            if($index >= $list.length) {
                $index = 0;
            }
            show($index);
        }


        // 小轮播图
        let bUp = document.querySelector('.bUp');
        let bDown = document.querySelector('.bDown');

        Banner(bUp,3000);
        Banner(bDown,3200);
        

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

        window.onscroll = function(){
            // 点击返回顶部
            if(window.scrollY >= 900){
                $('#ding').css('display','block');
            }
            else{
                $('#ding').css('display','none');
            }
        }

    });


