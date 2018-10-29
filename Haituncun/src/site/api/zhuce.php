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
        // echo("连接失败");
    } 

    //查询前设置编码，防止输出乱码
    $conn->set_charset('utf8');

    $username = isset($_GET['username']) ? $_GET['username'] : null;
    $password = isset($_GET['password']) ? $_GET['password'] : null;


    if($username && $password){
        // 用户有效性验证
        $sql = "select * from juusers where username='$username'";

        $result = $conn->query($sql);

        if($result->num_rows>0){
            echo "fail";
        }else{
            // 对密码进行加密
            $password = md5($password);
            
            // 写入数据库
            $sql = "insert into juusers(username,password) values('$username','$password')";

            $result = $conn->query($sql);

            if($result){
                echo "success";
            }else{
                echo "fail";
            }
        }
    }else{
        echo "无法获取用户名或密码";
    }
?>