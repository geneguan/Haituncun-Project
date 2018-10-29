<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = 'juanpi';
    
    // 创建连接
    $conn = new mysqli($servername, $username, $password, $dbname);

    // 检测连接是否成功
    if ($conn->connect_error) {
        die("连接失败: " . $conn->connect_error);
    } 

    //查询前设置编码，防止输出乱码
    $conn->set_charset('utf8');

    $id = isset($_GET['id']) ? $_GET['id'] : null;
    $qty= isset($_GET['num']) ? $_GET['num'] : null;

    echo "$qty";

    // 访问跟传过来的id一样的购物车数据库商品
    $sql="select num from juanpicar where id = '$id'";

    if($id!=null){
        // 执行语句
        $result = $conn->query($sql);
        if($result->num_rows>0){//购物车有该商品时
            // 获取该商品的数量
            $n=$result->fetch_all(MYSQLI_ASSOC)[0];
            $num = $n['num'];
            
            
            if($qty!=null){
                $num+=$qty;
            }else{
                $num++;
            };

            
            $sqll = "UPDATE juanpicar SET num = '$num' WHERE id = '$id'";
            $a = $conn->query($sqll);

            if($a){
               echo "yes"; 
            }
            }else{//没有的
            //查询商品所有信息
            $goodsSql = "SELECT * FROM juanpigoods WHERE id = '$id'";
            
            $goodsRes = $conn->query($goodsSql);
            $goodsInfo = $goodsRes->fetch_all(MYSQLI_ASSOC)[0];
            var_dump($goodsInfo);
            $guid = $goodsInfo['id'];
            $imgurl = $goodsInfo['pic_url'];
            $title = $goodsInfo['title'];
            $price = $goodsInfo['cprice'];
            // $comment = $goodsInfo['commentCount'];
            // $star = $goodsInfo['star'];
            //信息写入car表
            if($qty>1){
                $carSql = "insert into juanpicar (id,pic_url,title,cprice,num) values ('$guid','$imgurl','$title','$price',$qty)";
            $carRes = $conn->query($carSql);

            }

            $carSql = "insert into juanpicar (id,pic_url,title,cprice,num) values ('$guid','$imgurl','$title','$price',$qty)";
            $carRes = $conn->query($carSql);
            
            
        }



    }



?>