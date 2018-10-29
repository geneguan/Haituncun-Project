$(function(){
            $('.btnjia').click(function(){
                var ww = $('#gdnum').val()*1;
                ww +=1;
                $('#gdnum').val(ww);
            });
            $('.btnjian').click(function(){
                var ww = $('#gdnum').val()*1;
                ww -=1;
                if(ww <= 1){
                    ww = 1;
                }
                $('#gdnum').val(ww);
            })

            $('.title-list li').on("click",function(){
                var liindex = $('.title-list li').index(this);
                $(this).addClass('on').siblings().removeClass('on');
                $('.goods_tabshow .show_table').eq(liindex).fadeIn(150).siblings('.show_table').hide();
                var liWidth = $('.title-list li').width();
                $('.title-list p').stop(false,true).animate({'left' : liindex * liWidth + 'px'},300);
            });
            
            var currentLiId = Cookie.get('id');
            // console.log(currentLiId)
            $.ajax({
                type: "get",
                url: "../api/xiangqingye.php",
                async: true,
                data: {
                    'id':currentLiId
                },
                success: function(str){
                    // console.log(str)
                    var res=str;
                    var goodslist = JSON.parse(res);
                    // console.log(goodslist[0].pic_url);
                    $('.goods_title').html(goodslist[0].title);
                    $('.del_img img').attr('src',goodslist[0].pic_url);
                    $('.new_price').html('￥'+goodslist[0].cprice);
                    $('.goodstitle_a').html(goodslist[0].title);

                    
                }
            })


            // $('.del_addcar').on('click',function(){
            //     location.href='gouwuche.html'
            // })
            //  $('.goodsche').on('click',function(){
            //     location.href='gouwuche.html'
            // })


             // 点击 加入购物车 按钮
            $('.del_addcar').on('click',function(){
                console.log(666);
                $('.cartnum').html($('#gdnum').val());
                var addcarID = Cookie.get('id');
                // console.log(addcarID);
                var num = $('#gdnum').val();
                $.ajax({
                    type: "get",
                    url: "../api/addcar.php",
                    async: true,
                    data: {
                        'num':num,
                        'id':addcarID,
                        },
                    success: function(str){
                        // console.log(str);
                        var res=str;
                        var goodslist = JSON.parse(res);
                    }
                })
                alert('添加'+num+'件商品成功!');
            })
            

             // 点击 立即购买 按钮
            $('.del_mai').on('click',function(){
                location.href = 'gouwuche.html';
            })
            

})
