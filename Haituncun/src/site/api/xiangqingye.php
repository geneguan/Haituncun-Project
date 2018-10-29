<?php
 // 获取前端传入的id
    $id = isset($_GET['id']) ? $_GET['id'] : null;
    
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = 'juanpi';
    
    // 创建连接
    $conn = new mysqli($servername, $username, $password, $dbname);

    // 检测连接是否成功
    if ($conn->connect_error) {
        die($conn->connect_error);
    } 

    //查询前设置编码，防止输出乱码
    $conn->set_charset('utf8');

    $sql = "select * from juanpigoods where id='$id'";

    $result = $conn->query($sql);

    $row = $result->fetch_all(MYSQLI_ASSOC);
    // 释放结果集
    $result->close();
    // 结果输出到前端
    echo json_encode($row,JSON_UNESCAPED_UNICODE);
    // 关闭数据库
    $conn->close();
?>