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
    
    $sql = "select * from juanpicar";

    $result = $conn->query($sql);

    // var_dump($result);
    $row = $result->fetch_all(MYSQLI_ASSOC);

    // var_dump($row);

   
    
    echo json_encode($row,JSON_UNESCAPED_UNICODE);

    $result->close();


    $conn->close();