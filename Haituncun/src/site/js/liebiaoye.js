
    $(function(){
        $.ajax({
                type: "get",
                url: "../api/goodslist.php",
                async: true,
                success: function(str){
                    var res=str;
                    var data = JSON.parse(res);
                    $('.goodslist .goodslistul').html(data.map(function(goods){
                        return `<li class="goodslistli" data-id="${goods.id}">
                            <a href="../html/xiangqingye.html">
                            <img class="goodsimg" src="${goods.pic_url}"/>
                            <p class="goodsprice">
                            <span class="cprice"><strong>￥${goods.cprice}</strong></span>
                            <span class="oprice"><del>￥${goods.oprice}</del></span>
                            </p>
                            <p class="goodstitle">${goods.title}<span class="shangxin">上新</span></p>
                            </a>
                        </li>`
                    }).join(''));
                }
        })
        $('.goodslistul').on('mouseover','.goodstitle',function(){
                        
            $(this).css('color','red');
        })
        $('.goodslistul').on('mouseleave','.goodstitle',function(){
            $(this).css('color','black');
        })

        $('.goodslistul').on('click','.goodslistli',function(){
            location.href='xiangqingye.html';
            var currentLi= $(this).attr('data-id');
            Cookie.set('id',currentLi,{path: '/'});
            console.log(currentLi);
            
        })
        $('.goodslistul').on('mouseover','.goodslistli',function(){
            $(this).css('border','1.5px solid #FFCCCC')
        })
        $('.goodslistul').on('mouseleave','.goodslistli',function(){
            $(this).css('border','none');
        })

    })
 