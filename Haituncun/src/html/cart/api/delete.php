<?php

    /*
        1)连接数据库
     */

    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = 'haituncun';
    
    // 创建连接
    $conn = new mysqli($servername, $username, $password, $dbname);

    // 检测连接是否成功
    if ($conn->connect_error){
        die("连接失败: " . $conn->connect_error);
    } 

    //查询前设置编码，防止输出乱码
    $conn->set_charset('utf8');


    //接受前段请求的参数
    $id = isset($_GET['id']) ? $_GET['id'] : null;

    $sql = "delete from cart where id = $id";
 
    $result = $conn->query($sql);

    $row = $result->fetch_all(MYSQLI_ASSOC);

    // var_dump($row);

    $result->close();


    $conn->close();

    
    echo json_encode($row,JSON_UNESCAPED_UNICODE);